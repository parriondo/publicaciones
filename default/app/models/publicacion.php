<?php

class Publicacion extends ActiveRecord
{

    private $setHistorial = true;

    public function initialize()
    {
        /* Asociaciones */
        /* ------------ */
        //$this->belongs_to("experto");
        $this->belongs_to("experto");
        $this->belongs_to("estado_publicacion", "model: EstadoPublicacion", "fk: estado_publicacion_id");
        $this->has_and_belongs_to_many("interes", "model: Interes", "fk: interes_id", "through: interes_publicacion");
        $this->has_many("historial_publicacion", "model: HistorialPublicacion", "fk: publicacion_id");
        //$this->has_and_belongs_to_many("red_de_publicacion", "model: RedDePublicacion", "fk: red_de_publicacion_id", "through: publicacion_red_de_publicacion");
        $this->has_many("publicacion_red_de_publicacion", "model: PublicacionRedDePublicacion", "fk: publicacion_id");
        $this->has_many("followup");
    }

    public function before_save()
    {
        /* Validaciones */
        /* ------------ */
        $rs = $this->find_first("titulo = \"$this->titulo\" " . (!is_null($this->id) ? "and id != $this->id" : ""));
        //var_dump($rs); echo $this->id; die;
        if ($rs) {
            \Propias\FlashBootstrap::warning(".: Ya existe una publicación registrada con el titulo {$this->titulo}");
            return 'cancel';
        }
        /* if(Input::post('accion') === "registrar"){
          $this->validates_uniqueness_of("titulo", ["message"=>"titulo repetido", "field"=>"titulo"]);
          } */
    }

    public function before_update()
    {

        $publicacion = (new Publicacion)->find($this->id);
        //echo "$publicacion->estado_publicacion_id,  $this->estado_publicacion_id"; die;
        if ($publicacion->estado_publicacion_id === $this->estado_publicacion_id) {
            $this->setHistorial = false;
        }
    }

    public function before_delete()
    {
        //Si hay intereses asociados, los elimino
        $interesPublicacion = new InteresPublicacion();
        $intereses = $interesPublicacion->count("publicacion_id = $this->id");
        if ($intereses > 0) {
            $interesPublicacion->delete_all("publicacion_id = $this->id");
        }
        //Followup
        $follow = new Followup();
        if ($follow->count("publicacion_id = $this->id") > 0) {
            $follow->delete_all("publicacion_id = $this->id");
            //\Propias\FlashBootstrap::error(".: No se puede eliminar porque hay $follow Followup asociados :."); 
            //enrutando al index para listar los articulos
            //Redirect::to(); 
            //die;
        }
        //Historial
        $historial = new HistorialPublicacion();
        if ($historial->count("publicacion_id = $this->id") > 0) {
            $historial->delete_all("publicacion_id = $this->id");
        }
        //Red de Publicacion
        $red = new PublicacionRedDePublicacion();
        if ($red->count("publicacion_id = $this->id") > 0) {
            $red->delete_all("publicacion_id = $this->id");
        }
    }

    public function before_create()
    {
        /* $arrFecha = explode("-", $this->fecha_ingreso);
          $this->fecha_ingreso = $arrFecha[2] . "-" . $arrFecha[1] . "-" . $arrFecha[0];
         */

        $date = new DateTime($this->fecha_ingreso);
        $this->fecha_ingreso = $date->format("Y-m-d");
    }

    public function after_create()
    {
        $arrPublicacion = Input::post("publicacion");
        // Intereses:
        $this->setIntereses($arrPublicacion["interes"], $this->id);
        // Redes de Publicacion:
        if (array_key_exists("red_de_publicacion", $arrPublicacion)) {
            $this->setRedesDePublicacion($arrPublicacion["red_de_publicacion"], $this->id);
        }
        // Historal:
        $this->setHistorial($this->estado_publicacion_id, $this->id, Auth::get("id"), $this->fecha_ingreso);


        Input::delete();
    }

    /**
     * Ante una edicion, primero elimino los registros existentes vinculados, y luego inserto los nuevos.
     * @return type
     */
    public function after_save()
    {
        if (Input::post('accion') !== "editar") {
            return;
        }
        $arrPublicacion = Input::post("publicacion");

        // Intereses:
        //Si es un UPDATE, elimino los registros existes para luego insertar los nuevos. 
        //if(property_exists($this, "id")){
        (new InteresPublicacion)->delete_all("publicacion_id = $this->id");
        //}
        $this->setIntereses($arrPublicacion["interes"], $this->id);

        // Redes de Publicacion:
        if (array_key_exists("red_de_publicacion", $arrPublicacion)) {
            (new PublicacionRedDePublicacion)->delete_all("publicacion_id = $this->id");
            $this->setRedesDePublicacion($arrPublicacion["red_de_publicacion"], $this->id);
        }

        // Historal:
        if ($this->setHistorial) {
            $fechaInicioEstadoHistorial = $arrPublicacion['historial_publicacion']['fecha_inicio'];
            $date = new DateTime($fechaInicioEstadoHistorial);
            $fechaInicioEstadoHistorial = $date->format("Y-m-d");

            $this->setHistorial($this->estado_publicacion_id, $this->id, Auth::get("id"), $fechaInicioEstadoHistorial);
        }
        Input::delete();
        return;
    }

    /**
     * Retorna los publicaciones para ser paginados
     *
     * @param int $page  [requerido] página a visualizar
     * @param int $ppage [opcional] por defecto 20 por página
     */
    public function getPublicacion($page, $ppage = 20)
    {
        return $this->paginate("page: $page", "per_page: $ppage", 'order: id desc');
    }

    /**
     * Agrega los intereses de la Publicacion a la tabla relacion
     * @param type $arrInteres
     * @param type $idPublicacion
     */
    private function setIntereses($arrInteres, $idPublicacion)
    {
        foreach ($arrInteres as $idInteres) {
            if (!((new InteresPublicacion(["interes_id" => $idInteres, "publicacion_id" => $idPublicacion]))->create())) {
                /* Todo manage error */
            }
        }
    }

    /**
     * <ul>
     * <li>Si hay un estado previo para la publicacion, carga fecha_fin.</li>
     * <li>Agrega un nuevo historial con el estado actual.</li>
     * <ul>
     * @param type $estadoPublicacionId
     * @param type $idPublicacion
     * @param type $idUsuario
     * @param type $fecha Fecha de Creacion o Modificacion de la publicacion
     */
    private function setHistorial($estadoPublicacionId, $idPublicacion, $idUsuario, $fecha)
    {
        //El ultimo estado es el que tiene fecha_fin vacia.
        $ultEstado = (new HistorialPublicacion())->find_first("publicacion_id = \"$idPublicacion\" and fecha_fin IS NULL ");
        //var_dump($ultEstado); die;
        if ($ultEstado !== false) {
            $ultEstado->fecha_fin = $fecha;
            $ultEstado->save(); //Para que cargue fecha_fin
        } else {
            //Primer log de la publicacion.
        }
        (new HistorialPublicacion(["estado_publicacion_id" => $estadoPublicacionId, "publicacion_id" => $idPublicacion, "usuario_id" => $idUsuario, "fecha_inicio" => $fecha]))->create();
    }

    /**
     * $arrRedDePublicacion: 
     * @param array $arrRedDePublicacion ['red_de_publicacion_id', 'url'] | ['red_de_publicacion_id' => 'X', 'url' => ''] | ['url' => '']
     * @param int $idPublicacion
     */
    private function setRedesDePublicacion($arrRedDePublicacion, $idPublicacion)
    {
        foreach ($arrRedDePublicacion as $redDePublicacion) {
            if (array_key_exists("red_de_publicacion_id", $redDePublicacion)) {
                (new PublicacionRedDePublicacion(["red_de_publicacion_id" => $redDePublicacion["red_de_publicacion_id"], "publicacion_id" => $idPublicacion, "url" => $redDePublicacion["url"]]))->create();
            }
        }
    }
}

<?php 
class Experto extends ActiveRecord
{
    public function initialize() 
    {
        $this->has_many("publicacion");
        $this->has_and_belongs_to_many("interes");
        //$this->has_many("publicacion");
        $this->belongs_to('pais');
        $this->belongs_to('area');
        $this->belongs_to('cargo');
        $this->belongs_to('estado_experto');
        
        //1. Solo vale si esta en metodo initialize. 2. Solo vale si es UNIQUE en BD.
        $this->validates_uniqueness_of("nombre_apellido");
        /*$rs = $this->find_first("nombre_apellido = \"$this->nombre_apellido\" " . (!is_null($this->id) ? "and id != $this->id" : ""));
        if($rs) {
            \Propias\FlashBootstrap::warning(".: Ya existe un experto registrado con el nombre {$this->nombre_apellido} :.");
            return 'cancel';
        }*/ 
    }
    
    
    public function before_save() 
    {   
        $rs = $this->find_first("email = \"$this->email\" " . (!is_null($this->id) ? "and id != $this->id" : ""));
        if($rs) {
            \Propias\FlashBootstrap::warning(".: Ya existe un experto registrado con el correo {$this->email} :.");
            return 'cancel';
        } 
        //Formateo la fecha recibida (en Español) 
        $date = new DateTime($this->fecha_registro_at);
        $this->fecha_registro_at = $date->format("Y-m-d");
    }
    
    public function before_delete() 
    {   
        //Si hay publicaciones asociadas, NO Elimino
        $publicaciones = (new Publicacion())->count("experto_id = $this->id");
        if ($publicaciones > 0) {
            \Propias\FlashBootstrap::error(".: No se puede eliminar porque hay $publicaciones Publicaciones asociadas :."); 
            //return 'cancel';
            //enrutando al index para listar los articulos
            Redirect::to(); 
            die;
        }
        //Si hay intereses asociados, los elimino
        $interesExperto = new InteresExperto();
        $intereses = $interesExperto->count("experto_id = $this->id");
        if ($intereses > 0) {
            $interesExperto->delete_all("experto_id = $this->id");
        }
    }
    
    public function after_create()
    {
        // Intereses:
        $arr = Input::post("experto");
        //var_dump($arr); die;
        foreach ( $arr["interes"] as $idInteres){
            if(!(new InteresExperto(["interes_id" => $idInteres, "experto_id" => $this->id]))->create()){
                /* Todo manage error */
            }
        }        
        Input::delete();
    }
    
    public function after_update(){
        // Intereses:
        //Si es un UPDATE, elimino los registros existentes para luego insertar los nuevos. 
        (new InteresExperto)->delete_all("experto_id = $this->id");
        $this->setIntereses(Input::post("experto")["interes"], $this->id);
    }
    
    public function after_save() 
    { return;
        //var_dump(Input::post("autor_publicacion"));
        if(Input::post("autor_publicacion") == null)
            return;
        //Si es un UPDATE, elimino los registros existes para luego insertar los nuevos. 
        var_dump($this->id); die;
        if(property_exists($this, "id")){
            (new PublicacionAutor)->delete_all("autor_id = $this->id");
        }
        foreach (Input::post("autor_publicacion") as $idPublicacion){
            echo $idPublicacion;
            if((new PublicacionAutor(["publicacion_id" => $idPublicacion, "autor_id" => $this->id]))->save()){
                Input::delete();
                return;
            }
        }
    }

    /**
     * Retorna los autores para ser paginados
     *
     * @param int $page  [requerido] página a visualizar
     * @param int $ppage [opcional] por defecto 20 por página
     */
    public function getAutor($page, $ppage=20)
    {
        return $this->paginate("page: $page", "per_page: $ppage", 'order: id desc');
    }
    
    /**
     * Agrega los intereses de la Publicacion a la tabla relacion
     * @param type $arrInteres
     * @param type $idExperto
     */
    private function setIntereses($arrInteres, $idExperto)
    {
        foreach ($arrInteres as $idInteres) {
            if (!((new InteresExperto(["interes_id" => $idInteres, "experto_id" => $idExperto]))->create())) {
                /* Todo manage error */
            }
        }
    }
}
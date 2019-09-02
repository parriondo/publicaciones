<?php 
class Usuario extends ActiveRecord
{
     protected function initialize()
     {
        $this->has_many("historial_publicacion", "model: HistorialPublicacion", "fk: usuario_id");
        //1. Solo vale si esta en metodo initialize. 2. Solo vale si es UNIQUE en BD.
        $this->validates_uniqueness_of("nick");       
        $this->validates_uniqueness_of("nombre");       
        //$this->validates_uniqueness_of("clave");       
        $this->validates_uniqueness_of("email");       
     }
     
    /**
     * Retorna los menús para ser paginados
     *
     * @param int $page  [requerido] página a visualizar
     * @param int $ppage [opcional] por defecto 20 por página
     */
    public function getUsuario($page, $ppage=20)
    {
        return $this->paginate("page: $page", "per_page: $ppage", 'order: id desc');
    }
    
    
    public function before_create()
    {
        $this->clave = sha1($this->clave); 
    }
    
    public function before_update()
    {
        //Si no es sha1, significa que modifico la clave
        if(!\Propias\Util::isValidSha1($this->clave) and !empty($this->clave)){
            $this->clave = sha1($this->clave); 
        }
    }
    
    public function before_change()
    {
    }
    public function before_save()
    {
    }
    
    public function before_delete()
    {
    $historial = (new HistorialPublicacion())->count("usuario_id = $this->id");
        if ($historial > 0) {
            \Propias\FlashBootstrap::error("No se puede borrar porque hay $historial Historiales asociados");            
            //enrutando al index para listar los articulos
            Redirect::to(); 
            die;
        }
    }
}
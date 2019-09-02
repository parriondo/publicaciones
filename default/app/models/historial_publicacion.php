<?php 
class HistorialPublicacion extends ActiveRecord
{
    public function initialize() 
    {
        //$this->has_and_belongs_to_many("autor");
        //$this->has_many("experto");
        $this->belongs_to("publicacion");
        $this->belongs_to("estado_publicacion", "model: EstadoPublicacion", "fk: estado_publicacion_id");
        $this->belongs_to("usuario");
    }
    
    
}
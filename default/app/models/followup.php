<?php 
class Followup extends ActiveRecord
{
    public function initialize() 
    {
        $this->belongs_to("tipo_de_contacto", "model: TipoDeContacto", "fk: tipo_de_contacto_id");
        //$this->has_many("historial_publicacion");
        
        /* No deberia tener que hacer esto, pero lo seteo porq AR no trabaja bien con valores por default */
        $this->template_enviado = '0';
        $this->tips_de_redaccion_enviado = '0';
    }
    
   
    
}
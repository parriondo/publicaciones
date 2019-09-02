<?php 
class PublicacionRedDePublicacion extends ActiveRecord
{
    public function initialize() 
    {
        //$this->has_and_belongs_to_many("autor");
        //$this->has_many("experto");
        $this->belongs_to("red_de_publicacion");
        $this->belongs_to("publicacion");
    }
    
    
}
<?php 
class EstadoExperto extends ActiveRecord
{
    public function initialize() 
    {
        $this->has_many("experto");
       
    }
}
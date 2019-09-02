<?php 
class Pais extends ActiveRecord
{
    public function initialize() 
    {
        $this->has_many("experto");
       
    }
}
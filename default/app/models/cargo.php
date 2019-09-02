<?php 
class Cargo extends ActiveRecord
{
    public function initialize() 
    {
        $this->has_many("experto");
       
    }
}
<?php 
class Area extends ActiveRecord
{
    public function initialize() 
    {
        $this->has_many("experto");
       
    }
}
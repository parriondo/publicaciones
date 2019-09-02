<?php

/**
 * Controller por defecto si no se usa el routes
 *
 */
class IndexController extends AppController
{
    public function before_filter()
    {
        $this->user = Auth::get("nick");        
    }

    public function index()
    {

    }
    
    public function registrarAutor()
    {
        if (Input::hasPost('accion') and Input::post('accion') === "registrar") {
            die("procsar");
        }else{
            die("mostrar");
            //View::template("registrar-autor"); 
        }
    }
    
}

<?php
require_once APP_PATH . 'libs/Propias/autoloader.php';

/**
 * Controller por defecto si no se usa el routes
 *
 */
class ExpertosController extends AppController
{
    public function before_filter()
    {
        $this->user = Auth::get("nick");        
    }
    
    public function registrar()
    {
        if (Input::hasPost('accion') and Input::post('accion') === "registrar") {
            //Captcha:
             if (!Input::hasPost("g-recaptcha-response") or empty(Input::post("g-recaptcha-response"))){
                 \Propias\FlashBootstrap::error("Captcha incorrecto");
                 return;
             }
            //$post = Input::post('experto');
            //var_dump($post); //var_dump(Input::post('intereses'));die;
            $experto = new Experto(Input::post('experto'));
             
            //En caso que falle la operación de guardar
            if ($experto->create()) {
                \Propias\FlashBootstrap::valid("El experto ha sido registrado");
                //Eliminamos el POST, si no queremos que se vean en el form
                Input::delete();
            }else{
                \Propias\FlashBootstrap::error('Falló Operación');
            }
        }
        $this->interesesDisponibles = (new Interes)->find();
        //$this->paisesDisponibles = (new Pais)->find();
        //$this->areasDisponibles = (new Area)->find();
        //$this->cargosDisponibles = (new Cargo)->find();
        //var_dump($this->paisesDisponibles); die;
    }
    
    
    
}

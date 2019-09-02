<?php
require_once APP_PATH . 'libs/Propias/autoloader.php';

/**
 * Controller por defecto si no se usa el routes
 *
 */
class AutoresController extends AppController
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
            $autor = new Autor(Input::post('autor'));
            //En caso que falle la operación de guardar
            if ($autor->create()) {
                \Propias\FlashBootstrap::valid("El autor ha sido registrado");
                //Eliminamos el POST, si no queremos que se vean en el form
                Input::delete();
                return;
            }
            \Propias\FlashBootstrap::error('Falló Operación');
        }
    }
    
    
    
}

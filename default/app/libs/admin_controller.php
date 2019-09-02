<?php
//require_once APP_PATH . 'libs/Propias/autoloader.php';

/**
 * @see Controller nuevo controller
 */
require_once CORE_PATH . 'kumbia/controller.php';


/**
 * Controlador para proteger los controladores que heredan
 * Para empezar a crear una convención de seguridad y módulos
 *
 * Todas las controladores heredan de esta clase en un nivel superior
 * por lo tanto los metodos aqui definidos estan disponibles para
 * cualquier controlador.
 *
 * @category Kumbia
 * @package Controller
 */
class AdminController extends Controller
{

    final protected function initialize()
    {
        Load::lib("Propias/SdAuth");
        if (!SdAuth::isLogged()) {                
            $this->error_msj = SdAuth::getError();
            //View::template('login');
            View::select('../login');
            return FALSE;
        }
       // $this->usuario = Session::get('usuario');
        //$this->perfil = Session::get('perfil');
            
    }

    final protected function finalize()
    {
        
    }
    
    /**
     * islogin
     *
     * @param void
     * @return ture/false
     */
    final protected function isLogged ()
    {
        Load::lib('session');//carga la extension session
        if (Session::get(SESSION_KEY) == true) {
            return true;
        } else {
            //not yet logged in.
            // check
            if (isset($_POST['mode']) && $_POST['mode'] == 'auth_login') {
                //data was posted.
                return self::check(trim($_POST['txt_login']), sha1(trim($_POST['txt_password'])));
            } else {
                //You can't enter!
                return false;
            }
        }
    }
    
   

}

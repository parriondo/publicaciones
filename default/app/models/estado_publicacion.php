<?php 
class EstadoPublicacion extends ActiveRecord
{
    const EN_REDACCION = 1;
    const ENTREGADO = 2;
    const REVISADO = 3;
    const PUBLICADO = 4;
    const PUBLICADO_DIRECTO = 5;

    public function initialize() 
    {
        $this->has_many("publicacion");
        //$this->has_many("historial_publicacion");
    }
    
    /**
     * Retorna el strign WHERE para filtrar los estados disponibles a partir del actual.
     * @param type $id
     * @return string Where para filtrar los estados disponibles
     */
    public function getEstadosDisponibles($id)
    {
        switch($id){
            case self::EN_REDACCION: return "id = " . self::EN_REDACCION . " or id = " . self::ENTREGADO;
            case self::ENTREGADO: return "id = " . self::EN_REDACCION . " or id = " . self::ENTREGADO . " or id = " . self::REVISADO;
            case self::REVISADO: return "id = " . self::ENTREGADO . " or id = " . self::REVISADO . " or id = " . self::PUBLICADO;
            case self::PUBLICADO: return "id = " . self::PUBLICADO;
            case self::PUBLICADO_DIRECTO: return "id = " . self::PUBLICADO_DIRECTO;
        }
    }
    
    /**
     * Retorna true si el estado NO es Publicado o Publicado Directo y puede modificar la fecha.
     * @param type $id
     * @return bool Puede o no modificar fecha
     */
    public function getModificarFechaEstado($id)
    {
        switch($id){
            case self::EN_REDACCION: 
            case self::ENTREGADO: 
            case self::REVISADO: return true;
            case self::PUBLICADO: 
            case self::PUBLICADO_DIRECTO: return false;
        }
    }
}
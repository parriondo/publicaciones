<?php
/**
 * KumbiaPHP Web Framework
 * Parámetros de conexión a la base de datos
 */
return [
    'development' => [
        /**
         * host: ip o nombre del host de la base de datos
         */
        'host'     => 'localhost',
        /**
         * username: usuario con permisos en la base de datos
         */
        'username' => 'publicaciones', //no es recomendable usar el usuario root
        /**
         * password: clave del usuario de la base de datos
         */
        'password' => 'z4dUYmYB48qVYPt8',
        /**
         * test: nombre de la base de datos
         */
        'name'     => 'publicaciones',
        /**
         * type: tipo de motor de base de datos (mysql, pgsql, oracle o sqlite)
         */
        'type'     => 'mysql',
        /**
         * charset: Conjunto de caracteres de conexión, por ejemplo 'utf8'
         */
        'charset'  => 'utf8',
        /**
         * dsn: Cadena de conexión a la base de datos
         */
        //'dsn' => '',
        /**
         * pdo: activar conexiones PDO (On/Off); descomentar para usar
         */
        //'pdo' => 'On',
        ],

    'production' => [
        /**
         * host: ip o nombre del host de la base de datos
         */
        'host'     => 'localhost',
        /**
         * username: usuario con permisos en la base de datos
         */
        'username' => 'latindat_publicaciones', //no es recomendable usar el usuario root
        /**
         * password: clave del usuario de la base de datos
         */
        'password' => 'iLg1ygi#J9T+',
        /**
         * test: nombre de la base de datos
         */
        'name'     => 'latindat_publicaciones',
        /**
         * type: tipo de motor de base de datos (mysql, pgsql o sqlite)
         */
        'type'     => 'mysql',
        /**
         * charset: Conjunto de caracteres de conexión, por ejemplo 'utf8'
         */
        'charset'  => 'utf8',
        /**
         * dsn: cadena de conexión a la base de datos
         */
        //'dsn' => '',
        /**
         * pdo: activar conexiones PDO (OnOff); descomentar para usar
         */
        //'pdo' => 'On',
        ],
];

/**
 * Ejemplo de SQLite
 */
/*'development' => [
    'type' => 'sqlite',
    'dsn' => 'temp/data.sq3',
    'pdo' => 'On',
] */
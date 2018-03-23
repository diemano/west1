<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'west1');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */

define('DB_PASSWORD', 'facil123');


/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

define( 'SCRIPT_DEBUG', true );


@ini_set( 'display_errors', 1 );



/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '3|0-PtQj4=ziu&%fvPCmBzB7~NA.K)y181&3dj/(0O 6Agk!`g]>Z.WZUpcI;n6V');
define('SECURE_AUTH_KEY',  ' 5|Llk&__^>@^R{Br}-l,_;T_/[>)L)C:57d B9CqyPk4|tCYYd)|/AvZl~QFK,*');
define('LOGGED_IN_KEY',    'owJc .@fw~dEWsMIl6>c#q5,9<*-zET-]T_()Y/!Rfd6$sM!ge7%les>],_]*(?=');
define('NONCE_KEY',        ';zg@!BbkO%]#c:KC7a? S#:zGb*[/u_FbgfJ[#Y(t;;lHx7&{iss12F;zN4@Y>$F');
define('AUTH_SALT',        ']QcJ]PWY>MT6$K0~ytRef.%/mhVEP#^eI*F58;GeOl+jy2(fhfjbs3J~j-xIi]MP');
define('SECURE_AUTH_SALT', '+n??VVO;;Ms_`DsN44zy]h8rh&VECLW@;,_?EWF$t{>Lx)woo4{0nTR$h0Zf&wzK');
define('LOGGED_IN_SALT',   'uN-rurL@vxN{{#8&4g+}w2*9ZvP3bP1 Fk8Ja;9?$=@XuH)$ziP=nRx!bLh/;%=,');
define('NONCE_SALT',       '^uS8KBg#-byU7>H=WHNuF57{86xef;VPJ|94@TFL*8p;0y}zYv9 <dH+H`wlV`,=');


/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */

define('WP_DEBUG', TRUE);
define( 'WP_DEBUG_DISPLAY', true );


/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');

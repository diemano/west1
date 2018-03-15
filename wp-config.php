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
define('DB_PASSWORD', '');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

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
define('AUTH_KEY',         'pN%twmRT>1IXey#iVTK70>P,p>68jyu5#3!ryEEU{Sz@6ShyffY13::F0%^/=#+$');
define('SECURE_AUTH_KEY',  '?7tob_>(>_tTbYinNpk6kue4-R@R$A<cBXj{4h3wV Cdygjsuir^XqlWZE`10oS}');
define('LOGGED_IN_KEY',    'ye6wIr+m^J<<YSX?i=T,{>0Y_~ y%YEB6wKTW6tkem<r$^}BQcZL`{!pQCCC{hz!');
define('NONCE_KEY',        'JaWA[mwz=XM0E6JR&!LwoW0gSqHGnA?n=b8$}?&L@?%J0zVp1[a/7gPj0C%{:/{5');
define('AUTH_SALT',        'rpjT7?pg8R/obI(}k}n%HK|KK`eNtPkTR&z+-k_!@7*l($[s`%EFt2#Je}WM-Y#T');
define('SECURE_AUTH_SALT', 'xTO(Z-#i}#Px:~X+UFPTmoQ9R1O}h0>vum%X3%UiuHGMzE[=RE~8gMY7@Blz(nQC');
define('LOGGED_IN_SALT',   'R>y!8,hh3`r$^&Da@AeuhM2BO|er,/D+7&<eoH.g.^Pa65oq(tDmhlSGES(c+Y>O');
define('NONCE_SALT',       'Y8a?Sb1fT ^V>^%Bqulw_g]fqm|=+yV~g#<fygy/~AM4[j2}FnHS1.v0quz/F(p<');

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
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');

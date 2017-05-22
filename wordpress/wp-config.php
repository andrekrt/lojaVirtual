<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa user o site, você pode copiar este arquivo
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

// ** Configurações do MySQL - Você pode pegar estas informações
// com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wordpress');

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
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ')1r[qe,##]rlXak-YN$%g<SB;P(6sfR,2Mp`PcaY(#QM3uKF37-VSP}O&Y~Pr5t+');
define('SECURE_AUTH_KEY',  '-^Ei67d+vv`$,dD+MM|^#/OO%,`*~GX3j7y H9F6!q+b2qvm-CFRa]]#Ck93Pt`d');
define('LOGGED_IN_KEY',    'XCkAd`|L(yo8*EToE?s*$3VG-EOWsT?LzYmnL8=byvQ$`o&`^*|)4EIQ?#M&Pk7?');
define('NONCE_KEY',        'lG~,cC9Xp d@m0Sz>o+3rR/bQ=8O}]DD$TK%~0)E1d?q@qkH+-[G?iSf#`g0JwoU');
define('AUTH_SALT',        'JjFlP4Duj}eU:<43?@#^bWet,9*r4:N@Cc}=fGc=)kwKZ%H4l34<8^8i0.)R^|O0');
define('SECURE_AUTH_SALT', 'p3Wys>XS2f=n _}p5wLW4FS?RUeK%9^rM))2YKpFhF3$q>Foz~<#Rz{XGU?]tdf<');
define('LOGGED_IN_SALT',   't`(OETVW~6H)Yt%c= uq^:2YOz&+!vA>Eg{=dUXv,BnyVwC%|]x3KU+,e;%tntpQ');
define('NONCE_SALT',       '*VKuNNJ#((S>F0:n@PUa}hJ(PH)+.g`SEXrUV{rD[M.|pnDdzFQZZAqZ_5[pak!I');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * para cada um um único prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp';

/**
 * Para desenvolvedores: Modo debugging WordPress.
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

define('WPLANG', 'pt_BR');

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');

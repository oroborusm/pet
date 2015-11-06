{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"><![endif]-->
<html lang="{$lang_iso}" class="no-js">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
{/if}
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />

		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />


		<link rel="stylesheet" href="{$css_dir}normalize.css">
		<link rel="stylesheet" href="{$css_dir}verticalmenu.css">
		<link rel="stylesheet" href="{$css_dir}estilos.css">
		<link rel="stylesheet" href="{$css_dir}animate.css">
		<link rel="stylesheet" href="{$css_dir}internos.css">
		<link rel="stylesheet" href="{$css_dir}owl.carousel.css">
		<link rel="stylesheet" href="{$css_dir}fancybox.css">
		<link rel="stylesheet" href="{$css_dir}responsive.css">



{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
	{$js_def}
	{foreach from=$js_files item=js_uri}
		<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
	{/foreach}
{/if}
	<script type="text/javascript" src="{$js_dir}modernizr.custom.js"></script>
	<script type="text/javascript" src="{$js_dir}miscript.js"></script>

	<script type="text/javascript" src="{$js_dir}carrusel.js"></script>
	<script type="text/javascript" src="{$js_dir}slimscroll.min.js"></script>
	<script type="text/javascript" src="{$js_dir}owl.carousel.min.js"></script>
	<script type="text/javascript" src="{$js_dir}classie.js"></script>
	<script type="text/javascript" src="{$js_dir}modal.js"></script>
	<script type="text/javascript" src="{$js_dir}placeholder.js"></script>
	<script type="text/javascript" src="{$js_dir}tabs.js"></script>
	<script type="text/javascript" src="{$js_dir}menumanias.js"></script>




		{$HOOK_HEADER}

		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->




	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span></p>
			</div>
		{/if}
		<header>
			{hook h="displayNav"}
			<div class="header">
				<div class="headerCOnt">
					<figure>
						<a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
							<img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"/>
						</a>
					</figure>
					<!-- Block user information module NAV  -->
					<div class="loginUsuario">
						<div class="contenedorLogin">
							{if $is_logged}
								<div class="nombre">
									<span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span>
								</div>
								<div class="despliega">
									<button id="cierraDespliega" class="cierraDespliega">a</button>
									<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
										<span class="texto">Perfil</span>
									</a>
					
									<a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
										<span class="texto">{l s='Salir' mod='blockuserinfo'}</span>
									</a>
									
								</div>
							{else}
					
								<div class="login">
									{l s='Login' mod='blockuserinfo'}
								</div>
								<div class="accedeCuentaChica">
									<form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="login_form" autocomplete="off">
										<!-- <h3 class="page-subheading">{l s='Already registered?'}</h3> -->
										<div class="form_content">
											<div class="form-group emailLogin">
												<label for="email">{l s='Email address'}</label>
												<input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}"/>
											</div>
											<div class="form-group passwordLogin">
												<label for="passwd">{l s='Password'}</label>
												<span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="{if isset($smarty.post.passwd)}{$smarty.post.passwd|stripslashes}{/if}"/></span>
											</div>
					
											<p class="submit">
												{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'html':'UTF-8'}" />{/if}
												<button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
													<span>
														<i class="icon-lock left"></i>
														{l s='Sign in'}
													</span>
												</button>
											</p>
					
											<p class="lost_password form-group"><a href="{$link->getPageLink('password')|escape:'html':'UTF-8'}" title="{l s='Recover your forgotten password'}" rel="nofollow">{l s='Forgot your password?'}</a></p>
					
											
											<a class="linkCreaCuenta" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
												<!-- {l s='Login' mod='blockuserinfo'} -->
												Crear cuenta
											</a>
										</div>
									</form>
								</div>
							{/if}
						</div>
					
					</div>
					<!-- /Block usmodule NAV -->
					{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
				</div>
				<a id="cd-menu-trigger" href="#0"><span class="cd-menu-text">Menu</span><span class="cd-menu-icon"></span></a>
			</div>
		</header>
		<!-- aca deberia ir el nav -->
		<div class="contenedorMenu">
			{$HOOK_MENU}
		</div>
		<div id="page" class="cd-main-content">
			<div class="columns-container">
				<div id="columns" class="container">
					{if $page_name !='index' && $page_name !='pagenotfound'}
						{include file="$tpl_dir./breadcrumb.tpl"}
					{/if}


	{/if}

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


		<link rel="stylesheet" href="{$css_dir}app.css">


{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
	{$js_def}
	{foreach from=$js_files item=js_uri}
		<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
	{/foreach}
{/if}
	
	<script type="text/javascript" src="{$js_dir}app.js"></script>





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
			<div class="header" id="head">
				<div class="headerCOnt">
					<figure>
						<a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
							<img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"/>
						</a>
					</figure>
					<div class="contenedorMenu">
						{$HOOK_MENU}
					</div>
					<div class="menudespliega">
						<div id="menu-icon-wrapper" class="menu-icon-wrapper" style="visibility: hidden">
							<svg width="1000px" height="1000px">
								<path id="pathA" d="M 300 400 L 700 400 C 900 400 900 750 600 850 A 400 400 0 0 1 200 200 L 800 800"></path>
								<path id="pathB" d="M 300 500 L 700 500"></path>
								<path id="pathC" d="M 700 600 L 300 600 C 100 600 100 200 400 150 A 400 380 0 1 1 200 800 L 800 200"></path>
							</svg>
							<button id="menu-icon-trigger" class="menu-icon-trigger"></button>
						</div>
					</div>
					<!-- Block user information module NAV  -->
					

					<!-- /Block usmodule NAV -->
					{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
				</div>
			</div>
			
		</header>
		<!-- aca deberia ir el nav -->
		<div id="page">

			<div class="columns-container">
				<div id="columns" class="container {if $page_name =='index'} marginHeader{/if}">
					{if $page_name =='index' }
						<div class="presentacion">
							<section class="contenedorPresentacion">
								<div class="contFoto">
									<figure class="fotoPresentacion" id="topOpacidad">
										<img src="{$img_dir}cabecera/pets.png" alt="">
									</figure>									
									<div class="contTxt">
										<h2>conoce la <span>nueva</span></h2>
										<h2>modalidad de compra por </h2>
										<h2 class="destacadoTxt">suscripción</h2>
									</div>
								</div>
							</section>
							<div class="contenedorDivisor">
								<div class="topDivisor"></div>
								<div class="contenedorTexto">
									<h2>En simples pasos</h2>
									
								</div>
								<div class="bottomDivisor"></div>
							</div>
						</div>
					{/if}
					{if $page_name !='index' && $page_name !='pagenotfound'}
						{include file="$tpl_dir./breadcrumb.tpl"}
					{/if}
					{if isset($left_column_size) && !empty($left_column_size)}
						<div id="left_column" class="filtro">{$HOOK_LEFT_COLUMN}</div>
					{/if}


	{/if}

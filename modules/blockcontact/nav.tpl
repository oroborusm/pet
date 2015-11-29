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
<!-- esta pagina carga informacion adicional en el login, como numero de telefono y un contactanos ahora-->
<div class="infoAdicionalHeader">
	<div class="row">
		<!-- <div id="contact-link">
			<a href="{$link->getPageLink('contact', true)|escape:'html':'UTF-8'}" title="{l s='Contact Us' mod='blockcontact'}">{l s='Contact us' mod='blockcontact'}</a>
		</div> -->
		<!-- <div class="candadito">
			<img src="https://www.asistecar.cl/public_img/secure.gif" alt="" class="imgCandadito">
			<p class="textCandadito">Compra segura</p>
		</div> -->
		{if $telnumber}
			<!-- <span class="shop-phone">
				<i class="icon-phone"></i>{l s='Call us now:' mod='blockcontact'} <strong>{$telnumber}</strong>
			</span> -->
			<span class="shop-phone">
				¿Necesitas ayuda?, llamanos al: <strong>{$telnumber}</strong>
			</span>
		{/if}
	</div>
</div>
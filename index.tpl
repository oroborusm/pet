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
* <!-- {$HOOK_HOME} va en *hook_home-->
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
					<div id="slider_row" class="contCarrusel">
						<div id="top_column" class="contCarruselInt">
							{hook h="displayTopColumn"}
						</div>

					</div>

					{if isset($HOOK_HOME) && $HOOK_HOME|trim}
						<div class="categoriasHome">{$HOOK_HOME}</div>
					{/if}

					<div class="popularesMasVendidos">

						<div id="center_column">

							<div class="tabsHome1">
								{if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
									<ul id="home-page-tabs" class="menuProductosHome">
										{$HOOK_HOME_TAB}
									</ul>
								{/if}
								<div class="tab-content" id="productosHome">
									{$HOOK_HOME_TAB_CONTENT}
								</div>
							</div>
							<div class="explicacion">
								<div class="row">
									<h2>CONTEXTO DE INFORMACIÓN </h2>
									<ul>
										<li><i class="icon-search"></i>Elige Una Suscripción</li>
										<li><i class="icon-petcart2"></i>Lo Agregas Al Carrito</li>
										<li><i class="icon-credit-card"></i>Pagas Seguro <span>(Tenemos Conexión Segura Ssl)</span></li>
										<li><i class="icon-location"></i>El Pedido Llega A Tu Casa <span>(Valido Solo Para Santiago)</span></li>
									</ul>
									<ul>
										<li><i class="icon-search"></i>Elige Una Suscripción</li>
										<li><i class="icon-petcart2"></i>Lo Agregas Al Carrito</li>
										<li><i class="icon-credit-card"></i>Pagas Seguro <span>(Tenemos Conexión Segura Ssl)</span></li>
										<li><i class="icon-location"></i>El Pedido Llega A Tu Casa <span>(Valido Solo Para Santiago)</span></li>
									</ul>
								</div>
							</div>
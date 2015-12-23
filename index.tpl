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

					<div class="selectCategory">
						<ul class="caty">
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">1</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/cat11.png" alt="">
									</figure>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">2</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/cat22.png" alt="">
									</figure>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">3</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/cat33.png" alt="">
									</figure>
								</a>
							</li>
						</ul>
						<ul class="doggy">
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">1</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/doggy11.png" alt="">
									</figure>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">2</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/doggy22.png" alt="">
									</figure>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="plan">
										<span class="girado">plan</span>
										<h2 class="numero">3</h2>
									</div>
									<div class="ifoPlan">
										<h2>LOREM IPSUM</h2>
										<p>Ajuste perfecto 
										Soluciones inteligentes 
										Materiales de calidad</p>
									</div>
									<figure>
										<img src="{$img_dir}/categorias/doggy33.png" alt="">
									</figure>
								</a>
							</li>
						</ul>
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
										<li>
											<div class="img">
												<img src="{$img_dir}icon/ssl.png" alt="">
											</div>
											<span>
												Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's
											</span>
										</li>
										<li>
											<div class="img">
												<img src="{$img_dir}icon/ssl.png" alt="">
											</div>
											<span>
												Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's
											</span>
										</li>
										<li>
											<div class="img">
												<img src="{$img_dir}icon/deliver.png" alt="">
											</div>
											<span>
												Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's
											</span>
										</li>
									</ul>
								</div>
							</div>
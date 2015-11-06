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
<div class="micuenta">

    {capture name=path}{l s='My account'}{/capture}

    <h1 class="page-heading">{l s='My account'}</h1>
    {if isset($account_created)}
        <p class="alert alert-success">
            {l s='Your account has been created.'}
        </p>
    {/if}
    <p class="info-account">{l s='Welcome to your account. Here you can manage all of your personal information and orders.'}</p>
    <div class="rodeaListaDirecciones">
        <div class="listaDirecciones">
            <ul>
                {if $has_customer_an_address}
                <li>
                    <a href="{$link->getPageLink('address', true)|escape:'html':'UTF-8'}" title="{l s='Add my first address'}"><div class="icon-building"></div><span>{l s='Add my first address'}</span>
                    </a>
                </li>
                {/if}
                <li>
                    <a href="{$link->getPageLink('history', true)|escape:'html':'UTF-8'}" title="{l s='Orders'}">
                        <div class="icon-list-ol"></div><span>{l s='Order history and details'}</span>
                    </a>
                </li>
                {if $returnAllowed}
                    <li><a href="{$link->getPageLink('order-follow', true)|escape:'html':'UTF-8'}" title="{l s='Merchandise returns'}"><div class="icon-refresh"></div><span>{l s='My merchandise returns'}</span></a></li>
                {/if}
                <li>
                    <a href="{$link->getPageLink('order-slip', true)|escape:'html':'UTF-8'}" title="{l s='Credit slips'}"><div class="icon-ban-circle"></div><span>{l s='My credit slips'}</span>
                    </a>
                </li>
                <li>
                    <a href="{$link->getPageLink('addresses', true)|escape:'html':'UTF-8'}" title="{l s='Addresses'}"><div class="icon-building"></div><span>{l s='My addresses'}</span>
                    </a>
                </li>
                <li>
                    <a href="{$link->getPageLink('identity', true)|escape:'html':'UTF-8'}" title="{l s='Information'}"><div class="icon-user"></div><span>{l s='My personal information'}</span>
                    </a>
                </li>
            </ul>
        </div>
    {if $voucherAllowed || isset($HOOK_CUSTOMER_ACCOUNT) && $HOOK_CUSTOMER_ACCOUNT !=''}
        <div class="listaregalo">
            <ul class="myaccount-link-list">
                {if $voucherAllowed}
                    <li>
                        <a href="{$link->getPageLink('discount', true)|escape:'html':'UTF-8'}" title="{l s='Vouchers'}">
                            <div class="icon-barcode"></div><span>{l s='My vouchers'}</span>
                        </a>
                    </li>
                {/if}
                {$HOOK_CUSTOMER_ACCOUNT}
            </ul>
        </div>
    {/if}
    </div>
    <p class="navegador">
            <a class="volverCompra" href="{$base_dir}" title="{l s='Home'}">
                <span>{l s='Home'}</span>
                <span class="icon-chevron-left"></span>
            </a>
    </p>    

</div>

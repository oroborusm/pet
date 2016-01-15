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
				<div class="close">
					<i class="icon-cross"></i>
				</div>
				<form action="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" method="post" id="login_form" autocomplete="off">
					<!-- <h3 class="page-subheading">{l s='AlreadloginUsuarioy registered?'}</h3> -->
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
									
									Entra
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
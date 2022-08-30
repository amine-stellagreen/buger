{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="userinfo-selector dropdown js-dropdown popup-over" id="_desktop_user_info">
  <a href="javascript:void(0)" data-toggle="dropdown" class="popup-title" title="{l s='Account' d='Shop.Theme.Global'}">
    <i class="ti-user"></i>
    <span class="hidden">{l s='My account' d='Shop.Theme.Global'}</span>
    <i class="fa fa-angle-down" aria-hidden="true"></i>
 </a>
  <ul class="popup-content dropdown-menu user-info">
    {if $logged}
    <li>
      <a
        class="account" 
        href="{$my_account_url}"
        title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
        rel="nofollow"
      >
        <i class="ti-user"></i>
        <span>
		{* {l s='Hello' d='Shop.Theme.Global'} {nocache}{$customerName}{/nocache} *}	
			Voir mon profil
		</span>
      </a>
    </li>
    <li>
      <a
        class="logout"
        href="{$logout_url}"
        rel="nofollow"
        title="{l s='Sign out' d='Shop.Theme.Actions'}"
      >
        <i class="ti-unlock"></i>
        <span>{l s='Sign out' d='Shop.Theme.Actions'}</span>
      </a>
    </li>
    {else}
		{if Configuration::get('LEOQUICKLOGIN_ENABLE')}
	      <li>
	        <a
	          class="signin leo-quicklogin"
	          data-enable-sociallogin="enable"
	          data-type="popup"
	          data-layout="login"
	          href="/connexion?"
	          title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
	          rel="nofollow"
	        >
	          <i class="ti-lock"></i>
	          <span>{l s='Sign in' d='Shop.Theme.Actions'}</span>
	        </a>
	      </li>
	      <li>
	        <a
	          class="register leo-quicklogin"
	          data-enable-sociallogin="enable"
	          data-type="popup"
	          data-layout="register"
	          href="/connexion?create_account=1"
	          title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
	          rel="nofollow"
	        >
	          <i class="ti-user"></i>
	          <span>{l s='Register' d='Shop.Theme.Actions'}</span>
	        </a>
	      </li>
	    {else}
	      <li>
	        <a
			href="{$my_account_url}"
			title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
			rel="nofollow"
	        >
	          <i class="ti-lock"></i>
	          <span>{l s='Sign in' d='Shop.Theme.Actions'}</span>
	        </a>
	      </li>
	      <li>
	        <a
			href="{$urls.pages.register}" 
			title="{l s='Register' d='Shop.Theme.Customeraccount'}"
			rel="nofollow"
	        >
	          <i class="ti-user"></i>
	          <span>{l s='Register' d='Shop.Theme.Actions'}</span>
	        </a>
	      </li>
	    {/if}

    {/if}
  	{if Configuration::get('LEOFEATURE_ENABLE_PRODUCTWISHLIST')}
  	  <li>
        <a
          class="btn-wishlist"
          href="{url entity='module' name='leofeature' controller='mywishlist'}"
          title="{l s='Wishlist' d='Shop.Theme.Global'}"
          rel="nofollow"
        >
          <i class="ti-heart"></i>
          <span>{l s='Wishlist' d='Shop.Theme.Global'}</span>
  		(<span class="ap-total-wishlist ap-total"></span>)
        </a>
      </li>
  	{/if}
    {if Configuration::get('LEOFEATURE_ENABLE_PRODUCTCOMPARE')}
    	<li>
          <a
            class="btn-compare"
            href="{url entity='module' name='leofeature' controller='productscompare'}"
            title="{l s='Compare' d='Shop.Theme.Global'}"
            rel="nofollow"
          >
            <i class="ti-reload"></i>
            <span>{l s='Compare' d='Shop.Theme.Global'}</span>
    		(<span class="ap-total-compare ap-total"></span>)
          </a>
        </li>
    {/if}
  </ul>
</div>

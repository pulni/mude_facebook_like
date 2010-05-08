[{ assign var="config" value=$oView->getConfig() }]
[{if $config->getConfigParam("bMudeFacebookLikeEnabled") && $product->oxarticles__mude_show_facebook_like_button->value == 1 }]
[{assign var='_show_faces'  value="false"}]
  [{if $config->getConfigParam("bMudeFacebookLikeShowFaces") }]
  [{assign var='_show_faces'  value="true"}]
  [{/if}]
<meta property="og:title" content="[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]" />
<meta property="og:image" content="[{ $oView->getActPicture() }]" />
<div class="facebook-like">
    <fb:like href="[{$product->getLink()}]"
             layout="[{$config->getConfigParam('sMudeFacebookLikeStyle')}]"
             show_faces="[{$_show_faces}]"
             width="[{$config->getConfigParam('sMudeFacebookLikeWidth')}]"
             action="[{$config->getConfigParam('sMudeFacebookLikeAction')}]"
             colorscheme="[{$config->getConfigParam('sMudeFacebookLikeTheme')}]" />
</div>
[{/if}]
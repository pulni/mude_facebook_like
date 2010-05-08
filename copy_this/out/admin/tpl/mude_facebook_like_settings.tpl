[{* SVN $Id$ *}]
[{* DESCRIPTION
order list template
*}]
[{* INCLUDED TEMPLATES
headitem.tpl
update_views_notice.tpl
bottomnaviitem.tpl
bottomitem.tpl
*}]

[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

<script type="text/javascript">
    <!--
    function editThis( sID )
    {
        var oTransfer = top.basefrm.edit.document.getElementById( "transfer" );
        oTransfer.oxid.value = '';
        oTransfer.cl.value = top.oxid.admin.getClass( sID );

        //forcing edit frame to reload after submit
        top.forceReloadingEditFrame();

        var oSearch = top.basefrm.list.document.getElementById( "search" );
        oSearch.oxid.value = sID;
        oSearch.updatenav.value = 1;
        oSearch.submit();
    }
    //-->
</script>

[{ if $readonly}]
[{assign var="readonly" value="readonly disabled"}]
[{else}]
[{assign var="readonly" value=""}]
[{/if}]

[{cycle assign="_clear_" values=",2" }]

<form name="transfer" id="transfer" action="[{ $shop->selflink }]" method="post">
    [{ $shop->hiddensid }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="mude_facebook_like_settings   ">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="actshop" value="[{ $shop->id }]">
    <input type="hidden" name="updatenav" value="">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>

<form name="myedit" id="myedit" action="[{ $shop->selflink }]" method="post">
    [{ $shop->hiddensid }]
    <input type="hidden" name="cl" value="mude_facebook_like_settings">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="editval[oxshops__oxid]" value="[{ $oxid }]">

    [{include file="update_views_notice.tpl"}]
    <h3>[{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTINGS_TITLE" }]</h3>
    <table border=0>

      <tr>
          <td valign="top" class="conftext2" width="50%">
              [{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_ENABLED_LB" }]
          </td>
          <td valign="top" class="conftext2" width="50%">
              <input type=hidden name="confbools[bMudeFacebookLikeEnabled]" value="false">
              <input type=checkbox name="confbools[bMudeFacebookLikeEnabled]" value="true"  [{if ($confbools.bMudeFacebookLikeEnabled)}]checked[{/if}] [{ $readonly}]>

          </td>
          
      </tr>
       <tr>
         <td colspan=2 width="100%"><hr></td>
         </tr>
        <tr>
            <td valign="top" class="conftext2" width="50%">
                [{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_WIDTH_LB" }]
            </td>
            <td valign="top" class="conftext2" width="50%">
                <input type=text class="confinput" style="width:60" name=confstrs[sMudeFacebookLikeWidth] value="[{$confstrs.sMudeFacebookLikeWidth}]" [{ $readonly}]>
                       <em>[{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_WIDTH_HELP" }]</em>
            </td>
            
        </tr>
        <tr>
            <td valign="top" class="conftext2" width="50%">
                [{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_STYLE_LB" }]
            </td>
            <td valign="top" class="conftext2" width="50%">
                <select name="confstrs[sMudeFacebookLikeStyle]" class="select" [{ $readonly}]>
                        <option value="standard" [{if $confstrs.sMudeFacebookLikeStyle == "standard"}]selected[{/if}]>standard</option>
                        <option value="button_count" [{if $confstrs.sMudeFacebookLikeStyle == "button_count"}]selected[{/if}]>button_count</option>
                </select>
                [{ oxinputhelp ident="MUDE_FACEBOOK_LIKE_SETTING_STYLE_HELP" }]
            </td>
            
        </tr>
        <tr>
            <td valign="top" class="conftext2" width="50%">
                [{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_FACES_LB" }]
            </td>
            <td valign="top" class="conftext2" width="50%">
                <input type=hidden name="confbools[bMudeFacebookLikeShowFaces]" value="false">
                <input type=checkbox name="confbools[bMudeFacebookLikeShowFaces]" value="true"  [{if ($confbools.bMudeFacebookLikeShowFaces)}]checked[{/if}] [{ $readonly}]>
                [{ oxinputhelp ident="MUDE_FACEBOOK_LIKE_SETTING_FACES_HELP" }]
            </td>
            
        </tr>
        <tr>
            <td valign="top" class="conftext2" width="50%">
                [{ oxmultilang ident="MUDE_FACEBOOK_LIKE_SETTING_ACTION_LB" }]
            </td>
            <td valign="top" class="conftext2" width="50%">
                <select name="confstrs[sMudeFacebookLikeAction]" class="select" [{ $readonly}]>
                        <option value="like" [{if $confstrs.sMudeFacebookLikeAction == "like"}]selected[{/if}]>like</option>
                        <option value="recommend" [{if $confstrs.sMudeFacebookLikeAction == "recommend"}]selected[{/if}]>recommend</option>
                </select>
                [{ oxinputhelp ident="MUDE_FACEBOOK_LIKE_SETTING_ACTION_HELP" }]
            </td>
        </tr>

    </table>

    <br>
    <input type="submit" class="confinput" name="save" value="[{ oxmultilang ident="GENERAL_SAVE" }]" onClick="Javascript:document.myedit.fnc.value='save'"" [{ $readonly }]>


</form>

[{include file="bottomnaviitem.tpl"}]

[{include file="bottomitem.tpl"}]

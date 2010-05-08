== Title ==
Musterdenker Facebook Like Button for OXID eShop CE 4

== Author ==
Christian Zacharias
Mathias Fiedler


== Prefix ==
mude

== Version ==
0.9.0

== Link ==
http://www.musterdenker.de/

== Mail ==
info@musterdenker.de

== Description ==
This Extension adds the new Facebook LIKE button to the detail page of each product.


== Extends ==



== Installation ==
1. copy the contents of the folder "copy_this" to shop root
2. look in the folder "change_full" if any customized templates are affected, if not just copy content to shop folder
   The only thing you need to add is the following Line:
   
    [{include file="inc/mude_facebook_like_button.tpl"}]

3. Import the SQL from install.sql into your Database
4. Delete all content in the tmp folder
5. Check the Facebook LIKE settings under Customer Informations. It is important to save the settings one time. 
6. Change the position of the button to your needs.

Notice: You can disable the Like-Button for each Article separately on the Article-Extended Settings Pane. There is a simple Checkbox which is default set to enable.

== Modules ==


== Libraries ==
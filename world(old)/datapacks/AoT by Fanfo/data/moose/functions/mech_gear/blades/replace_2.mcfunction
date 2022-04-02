#1.17+

# 1.16 GRACIAS MOJANG
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Gas Trigger","color":"gray","bold":true,"underlined":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:2,odm_gear:1b} 1
replaceitem entity @s weapon.offhand minecraft:slime_ball{display:{Name:'{"text":"Omni-Directional mobility gear","color":"gray","bold":true,"underlined":true}'},CustomModelData:3,odm_gear:1b} 1

scoreboard players remove @s man_atk 1
tag @s remove armed_2
tag @s remove armed_1
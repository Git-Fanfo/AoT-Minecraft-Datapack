#1.17+

# 1.16 GRACIAS MOJANG


replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Gas Trigger","color":"gray","bold":true,"underlined":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:2,odm_gear:1b} 1
replaceitem entity @s weapon.offhand minecraft:slime_ball{display:{Name:'{"text":"Ultra Hard Steel","color":"dark_red","bold":true,"underlined":true}'},CustomModelData:2,blade:1b,odm_gear:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-900021084,241586123,-2079902861,-1817472879],Slot:"offhand"}]} 1

scoreboard players remove @s man_atk 1
tag @s remove armed_1
execute store result score @s ID_titan run data get entity @e[tag=neck,sort=nearest,limit=1,tag=!ID] UUID[0]
tag @s add ID
#execute at @s if score @s ID_titan matches 0 run function moose:titans/kill
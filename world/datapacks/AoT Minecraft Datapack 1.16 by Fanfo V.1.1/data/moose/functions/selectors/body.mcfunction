execute as @s at @s store result score @s[distance=0..1] mov run data get entity @e[tag=feet,sort=nearest,limit=1] Motion[0] 10000

execute as @s[scores={mov=1..}] run tag @s add walk
execute as @s[scores={mov=..-1}] run tag @s add walk

function moose:titans/animate
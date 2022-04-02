# Efectos titanes
scoreboard players set @s[scores={smoke_cool=0}] smoke_cool 7
execute at @s[scores={smoke_cool=7}] run particle minecraft:campfire_signal_smoke ^ ^ ^-1 0 1 0 .01 60
#execute as @e[tag=neck,scores={smoke_cool=7}] at @s run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 3 .1
scoreboard players remove @s[scores={smoke_cool=1..}] smoke_cool 1
#kill body
#execute as @s unless predicate moose:is_riding_body run say murio body
#execute as @s unless predicate moose:is_riding_body run tp @s ~ -252 ~
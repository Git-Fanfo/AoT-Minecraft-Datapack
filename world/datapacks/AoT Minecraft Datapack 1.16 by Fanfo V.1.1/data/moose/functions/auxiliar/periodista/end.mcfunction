#
#opcional
tp @a 118 62 -248


kill @e[tag=neck]

execute as @a if score @s Titan_Kill_Count > #Leader Titan_Kill_Count run scoreboard players operation #Leader Titan_Kill_Count = @s Titan_Kill_Count
execute as @a if score @s Titan_Kill_Count = #Leader Titan_Kill_Count at @s run function moose:auxiliar/periodista/winner

scoreboard players set gameState counter -1
scoreboard objectives remove TimerScore
scoreboard objectives remove TimerMinutes
scoreboard objectives remove TimerSeconds
bossbar remove minecraft:1
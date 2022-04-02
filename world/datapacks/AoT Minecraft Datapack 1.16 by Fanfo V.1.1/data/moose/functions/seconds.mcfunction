scoreboard players set segundo time 0

# Kill em all
execute run function moose:kill_mobs

execute as @e[tag=feet] run scoreboard players add titan_c counter 1
#tellraw @p ["",{"text":"Number Titans: "},{"score":{"name":"titan_c","objective":"counter"}}]
#siempre va un numero anterior Ex: 0..19 -> 0 <= x <= 20
execute if score titan_c counter matches 0..19 run execute as @e[type=pig,tag=!not_titan,sort=random] at @s run function moose:titans/spawn
#Ratio de spawn
execute if score titan_c counter matches 0..19 run execute as @e[type=enderman,tag=!not_titan,sort=random] at @s run function moose:selectors/seconds/enderman

execute if score titan_c counter matches 20.. run execute as @e[type=pig,tag=!not_titan,sort=random] run function moose:titans/kill_spawn
# Matar cuanto hayan 20 titanes siempre se matan de 2 a 4 extra, medir bien
execute if score titan_c counter matches 22.. run execute at @e[tag=feet,sort=random,limit=1] run function moose:titans/kill

# titanes
execute as @e[tag=titan] run function moose:selectors/seconds/titan 

scoreboard players set titan_c counter 0


# Escanear cuando spawnea un mob
execute as @e[type=villager,tag=!not_eldian,tag=!head,sort=random] at @s run function moose:eldian/spawn

#M Matar aldeano
execute as @e[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run tp @s ~ -252 ~

# Matar cuerdas en el aigre
execute as @e[tag=3Dhook_1,type=bat] at @s unless entity @a[distance=..2] run kill @s
execute as @e[tag=3Dhook_6,type=bat] at @s unless entity @a[distance=..2] run kill @s

# Funciones jugadores
execute as @a run function moose:selectors/players_seconds

# set time
execute store result score hora time run time query daytime

execute if score hora time matches 5..25 run tellraw @a {"text":" Sunrise ------------ ☼ ------------","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"The titans are rising","color":"gold"}]}}
execute if score hora time matches 0..5500 run effect give @e[tag=feet] slowness 2 0 true
#execute if score hora time matches 0..3500 run data modify entity @e[tag=feet,sort=random,limit=1] Attributes[1].Base set value 0.4d

execute if score hora time matches 6005..6025 run tellraw @a {"text":" Noon ------------ ☼ ------------","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"The titans are way more active","color":"dark_red"}]}}
#execute if score hora time matches 6000..9000 run data modify entity @e[tag=feet,sort=random,limit=1] Attributes[1].Base set value 0.5d

execute if score hora time matches 12005..12025 run tellraw @a {"text":" Sunset ------------ ☼ ------------","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"The titans are getting slower","color":"gold"}]}}
execute if score hora time matches 12000..14000 run effect give @e[tag=feet] slowness 2 0 true
#execute if score hora time matches 12000..14000 run data modify entity @e[tag=feet,sort=random,limit=1] Attributes[1].Base set value 0.4d

execute if score hora time matches 14505..14525 run tellraw @a {"text":" Night ------------ ☼ ------------","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"The titans are vulnerable","color":"aqua"}]}}
execute if score hora time matches 14500..23500 run effect give @e[tag=feet] slowness 2 1 true
#execute if score hora time matches 14500..22000 run data modify entity @e[tag=feet,sort=random,limit=1] Attributes[1].Base set value 0.2d


# Salvar Titan
execute as @e[tag=kill, nbt={HurtTime:10s}] at @s run function moose:titans/heal
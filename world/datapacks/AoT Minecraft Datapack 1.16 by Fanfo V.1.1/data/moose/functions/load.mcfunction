title @a times 20 240 10
title @a subtitle {"text":"Attack on Titan","color":"dark_red"}
title @a title {"text":"\u9032\u6483\u306e\u5de8\u4eba","bold":true,"color":"gray"}

tellraw @a ["",{"text":"\n\n\n\n\n---------------------------------\nCreated by Fanfo\n---------------------------------\n","color":"dark_red"},{"text":"\n\n "}]
tellraw @a ["",{"text":"Support my "},{"text":"Patreon","bold":true,"italic":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Fanfo"}},{"text":"to become a Pure Titan in the datapack!\n("},{"text":"Click here","bold":true,"italic":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Fanfo"}},{"text":")\n"}]
#execute at @a run playsound minecraft:aot.load player @a ~ ~ ~ 1 1

#Rules
gamerule mobGriefing false
gamerule doFireTick false
gamerule showDeathMessages false

# Crear scoreboard para contar los mobs #
scoreboard objectives add counter dummy

# Scoreboard de los titanes
scoreboard objectives add atk_cool dummy
scoreboard objectives add smoke_cool dummy
scoreboard objectives add kill_cool dummy
scoreboard objectives add idle dummy
scoreboard objectives add atk dummy
scoreboard objectives add walk dummy
scoreboard objectives add mov dummy
scoreboard objectives add ID_titan dummy

# Ejecutar cada segundo (Optimizacion)
scoreboard objectives add time dummy
scoreboard players set segundo time 0
scoreboard players set hora time 0

scoreboard objectives add man_gear minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add man_cool dummy
scoreboard objectives add man_land dummy
scoreboard objectives add man_atk dummy
scoreboard objectives add man_push dummy
scoreboard objectives add near dummy
scoreboard objectives add push_1 dummy
scoreboard objectives add push_6 dummy
scoreboard objectives add manual trigger
scoreboard objectives add Titan_Kill_Count dummy ["Kills"]
scoreboard objectives add death deathCount
scoreboard objectives add death_messages dummy


scoreboard players set @a near 0
scoreboard players set @a hit 0
scoreboard players set @a man_cool 0
scoreboard players set @a man_land 0
#scoreboard players set @a man_atk 0
scoreboard players set @a push_1 0
scoreboard players set @a push_6 0

# 3D Manuever
scoreboard objectives add id_player dummy
scoreboard objectives add id_hook_1 dummy
scoreboard objectives add id_3D_1 dummy
scoreboard objectives add id_hook_6 dummy
scoreboard objectives add id_3D_6 dummy

# Crear scoreboard para la trayectoria de las flechas
# - 1
# - -
# - -
scoreboard objectives add motion_x1_1 dummy
scoreboard objectives add motion_y1_1 dummy
scoreboard objectives add motion_z1_1 dummy

scoreboard objectives add motion_x2_1 dummy
scoreboard objectives add motion_y2_1 dummy
scoreboard objectives add motion_z2_1 dummy

# 6 -
# - -
# - -
scoreboard objectives add motion_x1_6 dummy
scoreboard objectives add motion_y1_6 dummy
scoreboard objectives add motion_z1_6 dummy

scoreboard objectives add motion_x2_6 dummy
scoreboard objectives add motion_y2_6 dummy
scoreboard objectives add motion_z2_6 dummy

# Crear la variable que cuente la cantidad de mobs #
scoreboard players add spawn_c counter 0
scoreboard players add titan_c counter 0
scoreboard players add eldian_c counter 0
scoreboard players add ender_c counter 0

#Periodista
scoreboard players add gameState counter 0

# add no col
team add nocol
team modify nocol collisionRule never
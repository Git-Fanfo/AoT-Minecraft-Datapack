#Si hay un titan cerca lo mato el titan
#Para buscar un ejemplo busca DeathExample

execute at @s[scores={death_messages=..99}] if entity @e[tag=feet,distance=..5] run scoreboard players set @s death_messages 100

#Natural
execute as @s[scores={death_messages=0}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has "},{"text":"died ","bold":true,"color":"dark_red"},{"text":"of natural causes."}]

#Crushed
execute as @s[scores={death_messages=100}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has been "},{"text":"crushed","bold":true,"color":"dark_red"},{"text":" by a Pure Titan."}]

#Titan 1 attack 1
execute as @s[scores={death_messages=101}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has been "},{"text":"eaten","bold":true,"color":"dark_red"},{"text":" by a Pure Titan."}]

#Titan 1 attack 2
execute as @s[scores={death_messages=102}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has lost his head "},{"text":"ripped off","bold":true,"color":"dark_red"},{"text":" by a Pure Titan."}]

#Titan 2 attack 1
execute as @s[scores={death_messages=201}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has been "},{"text":"rammed","bold":true,"color":"dark_red"},{"text":" by a Pure Titan."}]

#Titan 2 attack 2
execute as @s[scores={death_messages=202}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has "},{"text":"preferred death","bold":true,"color":"dark_red"},{"text":" to a life without feet."}]

#Titan 3 attack 1
execute as @s[scores={death_messages=301}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has lost "},{"text":"half of his organs","bold":true,"color":"dark_red"},{"text":" in a forceful squeeze by a Pure Titan."}]

execute as @s[scores={death_messages=302}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" has lost the ability to "},{"text":"right organs","bold":true,"color":"dark_red"},{"text":" because of a Pure Titan."}]

scoreboard players set @s death 0
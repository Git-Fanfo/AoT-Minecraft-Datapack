# Efecto botas PETITION
#execute at @s if block ~ ~-5 ~ air run execute unless block ~ ~-6.5 ~ air run execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{survey_cops:1b}}]}] run effect give @s slow_falling 1 0 true

#join nocol
#team join nocol @s[tag=wrap]

# Matar Titan
execute as @s[tag=!armed_1,nbt={SelectedItem:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{blade:1b}}}] run function moose:mech_gear/blades/attack_1
execute as @s[tag=!armed_2,nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{blade:1b}}]}] run function moose:mech_gear/blades/attack_2

execute as @s[tag=wrap] at @s unless entity @e[tag=titan,distance=0..9,limit=1,sort=nearest] run tag @s remove wrap

# Escanear cuando usa una caña
execute as @s[tag=!wrap,scores={man_gear=1..,man_land=0,man_cool=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{odm_gear:1b}}]}] at @s run function moose:mech_gear/throw

# Impulsarse
execute as @s[scores={man_land=0}] run scoreboard players set @s man_push 0
execute as @s[scores={man_land=1}] unless entity @s[scores={man_land=2..}] run scoreboard players add @s man_push 1

execute as @s[tag=!wrap,scores={man_gear=1..,man_land=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] at @s run function moose:mech_gear/impulse
execute as @s[tag=impulse2] at @s run execute if block ^ ^ ^1 air run tp @s ^ ^.2 ^.8

# Reset escaneo
scoreboard players remove @s[scores={man_gear=1..}] man_gear 1
scoreboard players remove @s[scores={man_cool=1..}] man_cool 1

execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] run scoreboard players set @s man_land 0
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] run function moose:mech_gear/kill

# Equipar las cuerdas

execute as @s at @s if score @s id_player = @e[tag=3Dhook_1,limit=1, sort=nearest] id_3D_1 at @s run tp @e[tag=3Dhook_1,sort=nearest,limit=1] ^-.3 ^.5 ^-.3

execute as @s at @s if score @s id_player = @e[tag=3Dhook_6,limit=1, sort=nearest] id_3D_6 at @s run tp @e[tag=3Dhook_6,sort=nearest,limit=1] ^.3 ^.5 ^-.3
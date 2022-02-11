# Efectos del 3D
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{odm_gear:1b}}]}] run function moose:mech_gear/effects
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin",tag:{survey_cops:1b}}]}] run effect give @p night_vision 12 0 true

# Kill old
tag @s[tag=impulse2] remove impulse2 

# give cool
scoreboard players set @s[tag=!throw] man_cool 0

execute as @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{manual:1b}}}] run function moose:controller/manual/in_hand
execute as @s[scores={manual=1..}] run function moose:controller/manual/trigger
execute as @s[scores={Titan_Kill_Count=1..}] run function moose:controller/advancements/kill_count

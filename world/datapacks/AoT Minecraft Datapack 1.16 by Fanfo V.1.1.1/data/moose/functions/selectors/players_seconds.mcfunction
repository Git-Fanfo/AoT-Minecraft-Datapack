# Death message
execute as @s run function moose:auxiliar/check_death

# Efectos del 3D
execute as @s[predicate=moose:has_gas_trigger,predicate=moose:has_odm] run function moose:mech_gear/effects
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin",tag:{survey_cops:1b}}]}] run effect give @s night_vision 12 0 true

# Kill old
tag @s[tag=impulse2] remove impulse2 

# give cool
scoreboard players set @s[tag=!throw] man_cool 0

execute as @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{manual:1b}}}] run function moose:controller/manual/in_hand
execute as @s[scores={manual=1..}] run function moose:controller/manual/trigger
execute as @s[scores={Titan_Kill_Count=1..}] run function moose:controller/advancements/kill_count

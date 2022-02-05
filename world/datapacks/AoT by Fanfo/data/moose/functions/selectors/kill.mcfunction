# Rotar araña
execute at @s if entity @a[distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0

#Matar titan
execute as @s[nbt={HurtTime:10s}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}},distance=0..6,scores={man_atk=1..}] run function moose:titans/kill
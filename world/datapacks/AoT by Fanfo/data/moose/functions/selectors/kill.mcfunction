# Rotar araña
#mob1
execute at @s[tag=mob1] if entity @a[distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0
#mob2 nohay

#Matar titan
execute as @s[nbt={HurtTime:10s}] at @s if entity @p[tag=!throw,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}},distance=0..6,scores={man_atk=1..}] run function moose:titans/kill
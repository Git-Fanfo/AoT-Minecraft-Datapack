# Rotar araña
#mob1
execute at @s[tag=mob1] if entity @a[tag=!wrap,distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0
#mob2 nohay
execute at @s[tag=mob3] if entity @a[tag=!wrap,distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0

#Matar titan
execute as @s[nbt={HurtTime:10s}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{odm_gear:1b}}]},distance=0..6,scores={man_atk=1..}] run function moose:titans/kill

#kill araña
execute as @s at @s unless entity @e[tag=neck,distance=..10] run kill @s
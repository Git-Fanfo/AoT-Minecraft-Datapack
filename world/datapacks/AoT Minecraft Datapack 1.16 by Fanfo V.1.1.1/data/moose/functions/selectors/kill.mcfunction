# Rotar araña
#mob1
execute at @s[tag=mob1] if entity @a[tag=!wrap,distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0
#mob2 nohay
execute at @s[tag=mob3] if entity @a[tag=!wrap,distance=..4.7] run data modify entity @e[tag=feet,sort=nearest,limit=1] Motion set value 0

#Matar titan
execute as @s[nbt={HurtTime:10s}] at @s if entity @e[sort=nearest,limit=1,tag=!titan,tag=!spball,predicate=moose:has_gas_trigger,predicate=moose:has_odm,distance=0..6,scores={man_atk=1..}] run function moose:titans/kill

#kill araña
execute as @s at @s unless entity @e[tag=neck,distance=..10] run kill @s

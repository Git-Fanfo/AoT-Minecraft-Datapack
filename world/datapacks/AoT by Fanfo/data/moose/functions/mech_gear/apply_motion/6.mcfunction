execute store result score @s motion_x1_6 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1_6 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1_6 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s motion_x2_6 run data get entity @s Pos[0] 1000
execute store result score @s motion_y2_6 run data get entity @s Pos[1] 1000
execute store result score @s motion_z2_6 run data get entity @s Pos[2] 1000


execute store result entity @s Motion[0] double 0.04 run scoreboard players operation @s motion_x2_6 -= @s motion_x1_6
execute store result entity @s Motion[1] double 0.04 run scoreboard players operation @s motion_y2_6 -= @s motion_y1_6
execute store result entity @s Motion[2] double 0.04 run scoreboard players operation @s motion_z2_6 -= @s motion_z1_6

tag @s add motion_added
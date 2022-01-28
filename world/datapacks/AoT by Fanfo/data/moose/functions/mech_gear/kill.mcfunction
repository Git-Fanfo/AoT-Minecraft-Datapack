#----------------------------------------
# KILL GANCHO DERECHA (Primero se mata al rope y luego al hook)
execute at @e[type=bat,tag=rope_1,sort=nearest,nbt=!{Leash:{}},limit=1] run kill @e[tag=hook_1,type=armor_stand,limit=1, sort=nearest]
kill @e[type=bat,tag=rope_1,nbt=!{Leash:{}}]

# KILL 3D DERECHA
execute at @s run kill @e[tag=3D_1,type=armor_stand,limit=1, sort=nearest]
execute at @s run kill @e[tag=3Dhook_1,type=armor_stand,limit=1, sort=nearest]

#execute at @s if score @s id_player = @e[tag=3D_1,type=armor_stand,limit=1, sort=nearest] id_3D_1 at @s run kill @e[tag=3Dhook_1,limit=1]
#execute at @s if score @s id_player = @e[tag=3D_1,type=armor_stand,limit=1, sort=nearest] id_3D_1 at @s run kill @e[tag=3D_1,limit=1]

#----------------------------------------
# KILL GANCHO DERECHA
#execute at @e[type=bat,tag=rope_6,sort=nearest,nbt=!{Leash:{}},limit=1] run kill @e[tag=hook_6,type=armor_stand,limit=1, sort=nearest]
#kill @e[type=bat,tag=rope_6,nbt=!{Leash:{}}]
execute at @s run kill @e[tag=3D_6,type=armor_stand,limit=1, sort=nearest]
execute at @s run kill @e[tag=3Dhook_6,type=armor_stand,limit=1, sort=nearest]


# KILL 3D DERECHA
execute as @s if score @s id_player = @e[tag=3D_6,type=armor_stand,limit=1, sort=nearest] id_3D_6 as @s run kill @e[tag=3Dhook_6,limit=1]
execute as @s if score @s id_player = @e[tag=3D_6,type=armor_stand,limit=1, sort=nearest] id_3D_6 as @s run kill @e[tag=3D_6,limit=1]


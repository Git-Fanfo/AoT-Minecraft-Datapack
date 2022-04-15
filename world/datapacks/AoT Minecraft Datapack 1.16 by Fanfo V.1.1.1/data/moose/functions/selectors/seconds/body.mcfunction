#kill body
#execute as @s unless predicate moose:is_riding_legs run say murio piernas
#execute as @s unless predicate moose:is_riding_legs run tp @s ~ -252 ~

#execute as @s at @s unless entity @e[tag=neck,distance=..3] run tp @s ~ -252 ~
#Aqui es si se matan solos
execute as @s at @s unless entity @e[tag=neck,distance=..9] run function moose:titans/kill
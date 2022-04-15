execute store result bossbar minecraft:1 value run scoreboard players remove #TimerEntity TimerScore 1
scoreboard players remove #TimerEntity TimerSeconds 1
execute if score #TimerEntity TimerSeconds matches ..-1 run scoreboard players remove #TimerEntity TimerMinutes 1
execute if score #TimerEntity TimerSeconds matches ..-1 run scoreboard players set #TimerEntity TimerSeconds 59


execute if score #TimerEntity TimerSeconds matches 10.. run bossbar set minecraft:1 name ["",{"score":{"name":"#TimerEntity","objective":"TimerMinutes"}},{"text":":"},{"score":{"name":"#TimerEntity","objective":"TimerSeconds"}}]

execute if score #TimerEntity TimerSeconds matches 0..9 run bossbar set minecraft:1 name ["",{"score":{"name":"#TimerEntity","objective":"TimerMinutes"}},{"text":":0"},{"score":{"name":"#TimerEntity","objective":"TimerSeconds"}}]

execute if score #TimerEntity TimerScore matches 299 run function moose:auxiliar/titans
execute if score #TimerEntity TimerScore matches 250 run function moose:auxiliar/titans
execute if score #TimerEntity TimerScore matches 200 run function moose:auxiliar/titans
execute if score #TimerEntity TimerScore matches 150 run function moose:auxiliar/titans
execute if score #TimerEntity TimerScore matches 100 run function moose:auxiliar/titans
execute if score #TimerEntity TimerScore matches 50 run function moose:auxiliar/titans

#execute if score #TimerEntity TimerScore matches 298 run function moose:auxiliar/villager
#execute if score #TimerEntity TimerScore matches 250 run function moose:auxiliar/villager

execute if score #TimerEntity TimerScore matches 200 run bossbar set minecraft:1 color yellow
execute if score #TimerEntity TimerScore matches 80 run bossbar set minecraft:1 color yellow

execute if score #TimerEntity TimerScore matches 0 run function moose:auxiliar/periodista/end
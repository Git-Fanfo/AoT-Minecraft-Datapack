scoreboard players set #TimerEntity TimerScore 300
scoreboard players set #TimerEntity TimerMinutes 5
scoreboard players set #TimerEntity TimerSeconds 0
scoreboard players set #Leader Titan_Kill_Count 0

bossbar set minecraft:1 name ["",{"score":{"name":"#TimerEntity","objective":"TimerMinutes"}},{"text":":0"},{"score":{"name":"#TimerEntity","objective":"TimerSeconds"}}]
tellraw @a ["",{"text":"Follow the red dots to find the ","color":"light_purple"},{"text":"Titans","color":"yellow"},{"text":"!","color":"light_purple"}]
execute store result bossbar minecraft:1 value run scoreboard players remove #TimerEntity TimerScore 0
scoreboard players set gameState counter 4
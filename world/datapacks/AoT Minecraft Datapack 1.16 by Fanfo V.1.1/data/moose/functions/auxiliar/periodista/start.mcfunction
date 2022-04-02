scoreboard objectives add TimerScore dummy
scoreboard objectives add TimerMinutes dummy
scoreboard objectives add TimerSeconds dummy
bossbar add 1 {"text":"Timer Bar"}
bossbar set minecraft:1 players @a
bossbar set minecraft:1 max 300
bossbar set minecraft:1 color green
scoreboard players set gameState counter -1


#revoke advancements
scoreboard objectives remove Titan_Kill_Count
scoreboard objectives add Titan_Kill_Count dummy ["Kills"]
scoreboard players set @a Titan_Kill_Count 0
scoreboard objectives setdisplay sidebar Titan_Kill_Count

kill @e[tag=neck]
advancement revoke @a only moose:pure_titan_1
advancement revoke @a only moose:pure_titan_10
advancement revoke @a only moose:pure_titan_25
advancement revoke @a only moose:pure_titan_40
advancement revoke @a only moose:pure_titan_70
advancement revoke @a only moose:pure_titan_100
advancement revoke @a only moose:pure_titan_150
tellraw @a ["",{"text":"The winner is ","color":"light_purple"},{"selector":"@s","color":"aqua"},{"text":"! ","color":"light_purple"},{"text":"Thanks for playing!","color":"yellow"}]

particle minecraft:totem_of_undying ~ ~1 ~ 1 .4 1 .08 100
summon firework_rocket ~ ~-.2 ~ {Life:0,LifeTime:25,Motion:[0.0,0.0,0.0],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;16772608]}]}}}}
playsound ui.toast.challenge_complete master @a


# tp titan
execute at @s if entity @e[tag=feet,distance=0.1..3] run summon creeper ^ ^.2 ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0,Tags:["motion"],CustomName:'{"text":"Titan"}'}

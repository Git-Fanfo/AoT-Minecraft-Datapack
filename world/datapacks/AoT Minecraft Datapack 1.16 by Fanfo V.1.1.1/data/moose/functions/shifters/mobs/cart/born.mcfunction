#item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:2}

replaceitem entity @s armor.head minecraft:carved_pumpkin{CustomModelData:2}
function moose:shifters/mobs/cart/summon

bossbar add cart_health {"text":"Cart Titan"}
bossbar set cart_health color pink
bossbar set cart_health max 100

tag @s add first


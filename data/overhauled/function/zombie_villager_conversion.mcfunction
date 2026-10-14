execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run return 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s if entity @e[type=minecraft:zombie_villager,distance=..2,limit=1,nbt={ConversionTime:-1}] run tag @s add converting

execute as @e[tag=converting] at @s run data modify entity @e[type=minecraft:zombie_villager,distance=..2,limit=1,nbt={ConversionTime:-1}] ConversionTime set value 4500
execute as @e[tag=converting] at @s run particle minecraft:happy_villager ~-1 ~-1 ~-1 ~1 ~1 ~1 10 100000
execute as @e[tag=converting] at @s run playsound minecraft:item.totem.use player @a[distance=..10] ~ ~ ~
execute as @e[tag=converting] at @s run kill @s
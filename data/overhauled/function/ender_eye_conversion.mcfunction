execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] run return 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] at @s unless entity @e[type=minecraft:end_crystal,distance=..2] run return 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] at @s if entity @e[type=minecraft:end_crystal,distance=..2] run data modify entity @s Item.id set value "minecraft:ender_eye"
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}}] at @s if entity @e[type=minecraft:end_crystal,distance=..2] run playsound minecraft:item.trident.return player @a[distance=..15] ~ ~ ~
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}}] at @s if entity @e[type=minecraft:end_crystal,distance=..2] run particle minecraft:end_rod ~ ~ ~ ~3 ~3 ~3 1 1000 force
return 0
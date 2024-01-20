execute as @s at @s store result score @s .xTPS run data get entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",tag:{teleport:2b}}},dx=0,limit=1] Item.tag.xw
execute as @s at @s store result score @s .yTPS run data get entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",tag:{teleport:2b}}},dx=0,limit=1] Item.tag.yw
execute as @s at @s store result score @s .zTPS run data get entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",tag:{teleport:2b}}},dx=0,limit=1] Item.tag.zw
tag @s add cords.burned
kill @e[type=item,nbt={Item:{id:"minecraft:writable_book",tag:{teleport:2b}}},dx=0,limit=1]
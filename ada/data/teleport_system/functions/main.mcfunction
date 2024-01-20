execute as @a[nbt={SelectedItem:{tag:{teleport:1b}}}] run item replace entity @s weapon.mainhand with endermite_spawn_egg{teleport:2b,EntityTag:{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]}}
execute as @e[tag=teleport2] at @s run summon area_effect_cloud ~ ~ ~ {id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport"]}
execute as @e[tag=teleport2] run summon interaction ~ ~ ~ {width:1f,height:2f,response:1b,Tags:["teleport"]}
execute as @e[tag=teleport2] run kill @s
execute as @a[scores={mite.egg.use=1..},nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",tag:{teleport:2b}}}] run item replace entity @s weapon.mainhand with writable_book{teleport:2b}
scoreboard players reset @a mite.egg.use
scoreboard players enable @a[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] .xTPS
scoreboard players enable @a[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] .yTPS
scoreboard players enable @a[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] .zTPS
execute as @a[scores={.xTPS=..-1},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s xTPS run scoreboard players get @s .xTPS
execute as @a[scores={.xTPS=1..},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s xTPS run scoreboard players get @s .xTPS
execute as @a[scores={.yTPS=..-1},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s yTPS run scoreboard players get @s .yTPS
execute as @a[scores={.yTPS=1..},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s yTPS run scoreboard players get @s .yTPS
execute as @a[scores={.zTPS=..-1},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s zTPS run scoreboard players get @s .zTPS
execute as @a[scores={.zTPS=1..},nbt={SelectedItem:{id:"minecraft:writable_book",tag:{teleport:2b}}}] store result score @s zTPS run scoreboard players get @s .zTPS
scoreboard players set @a .xTPS 0
scoreboard players set @a .yTPS 0
scoreboard players set @a .zTPS 0
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",tag:{teleport:2b}}},distance=..0,limit=1] run function teleport_system:book_burn

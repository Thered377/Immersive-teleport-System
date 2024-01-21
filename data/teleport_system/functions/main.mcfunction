execute as @a[nbt={SelectedItem:{tag:{teleport:1b}}}] run item replace entity @s weapon.mainhand with endermite_spawn_egg{teleport:2b,EntityTag:{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]}}
execute as @e[tag=teleport2] at @s run summon area_effect_cloud ~ ~ ~ {id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport"]}
execute as @e[tag=teleport2] at @s run summon interaction ~ ~ ~ {width:1f,height:1f,response:1b,Tags:["teleport"]}
execute as @e[tag=teleport2] run kill @s
execute at @e[nbt={Item:{tag:{kill:1b}}}] as @e[tag=teleport,distance=..1,limit=1] run kill @s
scoreboard players enable @a .xTPS
scoreboard players enable @a .yTPS
scoreboard players enable @a .zTPS
execute as @a[scores={.xTPS=..-1}] store result score @s xTPS run scoreboard players get @s .xTPS
execute as @a[scores={.xTPS=1..}] store result score @s xTPS run scoreboard players get @s .xTPS
execute as @a[scores={.yTPS=..-1}] store result score @s yTPS run scoreboard players get @s .yTPS
execute as @a[scores={.yTPS=1..}] store result score @s yTPS run scoreboard players get @s .yTPS
execute as @a[scores={.zTPS=..-1}] store result score @s zTPS run scoreboard players get @s .zTPS
execute as @a[scores={.zTPS=1..}] store result score @s zTPS run scoreboard players get @s .zTPS
scoreboard players set @a .xTPS 0
scoreboard players set @a .yTPS 0
scoreboard players set @a .zTPS 0
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[distance=..1] run data modify storage minecraft:tp_macro input set value {"x":0,"y":0,"z":0}
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[distance=..1] store result storage tp_macro input.x int 1 run scoreboard players get @s .xTPS
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[distance=..1] store result storage tp_macro input.y int 1 run scoreboard players get @s .yTPS
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[distance=..1] store result storage tp_macro input.z int 1 run scoreboard players get @s .zTPS
execute as @a at @s if entity @e[type=area_effect_cloud,tag=teleport,distance=..1] run function teleport_system:tp with storage tp_macro input
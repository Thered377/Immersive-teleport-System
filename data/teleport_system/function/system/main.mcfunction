execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{teleport:1b}}}}] run item replace entity @s weapon.mainhand with endermite_spawn_egg[entity_data={id:"minecraft:area_effect_cloud",Duration:-2147483648,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]},custom_data={teleport:2b}]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{teleport:1b}}}}] run item replace entity @s weapon.mainhand with endermite_spawn_egg[entity_data={id:"minecraft:area_effect_cloud",Duration:-2147483648,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]},custom_data={teleport:2b}]
#{teleport:2b,EntityTag:{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]}}
#@a[nbt={SelectedItem:{tag:{teleport:1b}}}]
execute as @e[tag=teleport2] at @s run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport"]}
execute as @e[tag=teleport2] at @s run summon interaction ~ ~ ~ {width:1f,height:1f,response:1b,Tags:["teleport"]}
execute as @e[tag=teleport2] run kill @s
execute at @e[nbt={Item:{components:{"minecraft:custom_data":{kill:1b}}}}] as @e[tag=teleport,distance=..1,limit=1] run kill @s
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .xTPS
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .yTPS
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .zTPS
execute as @e[type=area_effect_cloud,tag=teleport,tag=used] at @s positioned ~-0.5 ~0 ~-0.5 if entity @a[dx=0] run data modify storage minecraft:tp_macro input set value {"x":0,"y":0,"z":0}
execute as @e[type=area_effect_cloud,tag=teleport,tag=used] at @s positioned ~-0.5 ~0 ~-0.5 if entity @a[dx=0] store result storage tp_macro input.x int 1 run scoreboard players get @s .xTPS
execute as @e[type=area_effect_cloud,tag=teleport,tag=used] at @s positioned ~-0.5 ~0 ~-0.5 if entity @a[dx=0] store result storage tp_macro input.y int 1 run scoreboard players get @s .yTPS
execute as @e[type=area_effect_cloud,tag=teleport,tag=used] at @s positioned ~-0.5 ~0 ~-0.5 if entity @a[dx=0] store result storage tp_macro input.z int 1 run scoreboard players get @s .zTPS
execute at @e[type=area_effect_cloud,tag=teleport,tag=used] positioned ~-0.5 ~0 ~-0.5 as @a[dx=0] at @s run function teleport_system:system/tp with storage tp_macro input

execute as @a[nbt={SelectedItem:{tag:{teleport:1b}}}] run item replace entity @s weapon.mainhand with endermite_spawn_egg{teleport:2b,EntityTag:{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport2"]}}
execute as @e[tag=teleport2] at @s run summon area_effect_cloud ~ ~ ~ {id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teleport"]}
execute as @e[tag=teleport2] at @s run summon interaction ~ ~ ~ {width:1f,height:1f,response:1b,Tags:["teleport"]}
execute as @e[tag=teleport2] run kill @s
execute at @e[nbt={Item:{tag:{kill:1b}}}] as @e[tag=teleport,distance=..1,limit=1] run kill @s
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .xTPS
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .yTPS
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .zTPS
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .dx
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .dy
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport:2b}}}] .dz
function teleport_system:tp with storage tp_macro input
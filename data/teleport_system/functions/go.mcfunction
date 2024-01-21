data modify storage minecraft:tp_macro input set value {"x":0,"y":0,"z":0}
execute store result storage tp_macro input.x int 1 run scoreboard players get @s xTPS
execute store result storage tp_macro input.y int 1 run scoreboard players get @s yTPS
execute store result storage tp_macro input.z int 1 run scoreboard players get @s zTPS
function teleport_system:tp with storage tp_macro input
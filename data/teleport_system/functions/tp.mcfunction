execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a run data modify storage minecraft:tp_macro input set value {"x":0,"y":0,"z":0,"dx":0,"dy":0,"dz":0}
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a store result storage tp_macro input.dx int 1 run scoreboard players get @s .dx
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a store result storage tp_macro input.dy int 1 run scoreboard players get @s .dy
execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a store result storage tp_macro input.dz int 1 run scoreboard players get @s .dz
$execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[dx=$(dx),dy=$(dy),dz=$(dz)] store result storage tp_macro input.x int 1 run scoreboard players get @s .xTPS
$execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[dx=$(dx),dy=$(dy),dz=$(dz)] store result storage tp_macro input.y int 1 run scoreboard players get @s .yTPS
$execute as @e[type=area_effect_cloud,tag=teleport] at @s if entity @a[dx=$(dx),dy=$(dy),dz=$(dz)] store result storage tp_macro input.z int 1 run scoreboard players get @s .zTPS
$execute at @e[type=area_effect_cloud,tag=teleport,tag=used] positioned ~-0.5 ~0 ~-0.5 as @a[dx=$(dx),dy=$(dy),dz=$(dz)] at @s run tp @s ~$(x) ~$(y) ~$(z)
#dx=$(dx),dy=$(dy),dz=$(dz)
scoreboard players set #clicked interaction 0
execute on target store result score #clicked interaction if entity @s[tag=this]

execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .xTPS on target run scoreboard players get @s xTPS
execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .yTPS on target run scoreboard players get @s yTPS
execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .zTPS on target run scoreboard players get @s zTPS
execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .dx on target run scoreboard players get @s dx
execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .dy on target run scoreboard players get @s dy
execute if score #clicked interaction matches 1 at @s store result score @e[distance=..1,limit=1,sort=nearest,tag=teleport,type=area_effect_cloud] .dz on target run scoreboard players get @s dz
execute if score #clicked interaction matches 1 at @s run kill @s

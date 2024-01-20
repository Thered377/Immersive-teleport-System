scoreboard players set #clicked interaction 0
execute on target store result score #clicked interaction if entity @s[tag=this]

execute if score #clicked interaction matches 1 at @s run particle angry_villager

execute if score #clicked interaction matches 1 run data remove entity @s interaction
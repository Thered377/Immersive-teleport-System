advancement revoke @s only teleport_system:interact

tag @s add this
execute as @e[type=interaction,tag=teleport,distance=..6] run function teleport_system:right_target
tag @s remove this
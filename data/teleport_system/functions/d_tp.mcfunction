$execute at @e[type=area_effect_cloud,tag=teleport,dx=$(dx),dy=$(dy),dz=$(dz)] as @a[distance=..1] at @s run function teleport_system:tp with storage tp_macro input

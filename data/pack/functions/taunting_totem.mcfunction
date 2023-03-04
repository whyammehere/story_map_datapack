execute at @a[scores={Taunt=1..}] run execute as @e[type=!player,distance=..10] at @s run data modify entity @s AngryAt set from entity @p[scores={Taunt=1..},sort=nearest,limit=1] UUID
execute at @a[scores={Taunt=1..}] run execute as @e[type=!player,distance=..10] run data modify entity @s AngerTime set value 200

execute as @e if entity @e[distance=..10,scores={Taunt=0}] run data modify entity @s AngryAt set value []

execute as @a run scoreboard players set @s Taunt 0

execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying",tag:{display:{Name:'{"text":"Taunting Totem"}'}}}}] run scoreboard players set @s Taunt 1
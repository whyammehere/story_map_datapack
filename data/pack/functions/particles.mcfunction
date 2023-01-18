#remember to rotate 270­°



scoreboard players add @e[type=armor_stand,tag=particles] iz.timer 1 
#kill @e[type=armor_stand,tag=particles,scores={iz.timer=100}]

#rotate?
execute as @e[type=armor_stand,tag=particles] at @s run tp @s ~ ~ ~ ~0.5 ~



#fireball (not perfect circles wtf)
execute at @e[tag=fireball1] run function pack:fireball_particles1
execute at @e[tag=fireball2] run function pack:fireball_particles2
execute at @e[tag=fireball3] run function pack:fireball_particles3
execute at @e[tag=fireball4] run function pack:fireball_particles4
execute at @e[tag=fireball5] run function pack:fireball_particles5

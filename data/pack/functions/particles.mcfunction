scoreboard players add @e[type=armor_stand,tag=particles] iz.timer 1 
#kill @e[type=armor_stand,tag=particles,scores={iz.timer=100}]

execute at @e[tag=fireball1] run function pack:fireball1_particles
execute at @e[tag=fireball2] run function pack:fireball2_particles
execute at @e[tag=fireball3] run function pack:fireball3_particles
execute at @e[tag=fireball4] run function pack:fireball4_particles
execute at @e[tag=fireball5] run function pack:fireball5_particles

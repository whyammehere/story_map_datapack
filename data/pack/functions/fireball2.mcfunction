execute positioned ~ ~1 ~ run summon fireball ^ ^ ^0.8 {ExplosionPower:4}
playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 1 1
summon armor_stand ~ ~ ~ {Invisible:true,Marker:true,NoGravity:true,Tags:["particles","duration100","fireball2"]}
data modify entity @e[type=armor_stand,tag=fireball2,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
scoreboard players add @s iz.cooldown 175


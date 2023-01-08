execute positioned ~ ~1 ~ run summon fireball ^ ^ ^0.8 {ExplosionPower:7}
playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 1 1
summon armor_stand ~ ~ ~ {Invisible:true,Marker:true,NoGravity:true,Tags:["duration150","fireball4"]}
scoreboard players add @s iz.cooldown 200


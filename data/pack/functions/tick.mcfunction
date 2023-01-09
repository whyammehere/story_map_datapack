#cooldown
execute as @a at @s run execute if score @s iz.cooldown matches 1 run playsound entity.experience_orb.pickup master @s
execute as @a at @s run execute unless score @s iz.cooldown matches ..0 run scoreboard players remove @s iz.cooldown 1

#duration
kill @e[type=armor_stand,tag=duration60,scores={iz.timer=60..}]
kill @e[type=armor_stand,tag=duration100,scores={iz.timer=100..}]
kill @e[type=armor_stand,tag=duration150,scores={iz.timer=150..}]

#particles
function pack:particles

#fireball
execute as @a at @s if score @s iz.wand matches 1.. run execute if score @s iz.cooldown matches 0 run function pack:fireball

#snowball shenanigans
execute at @e[type=minecraft:snowball] run summon minecraft:lightning_bolt ~ ~ ~






#--arrow shenanigans--
#Replace arrow

#execute as @e[type=spectral_arrow,nbt={LeftOwner:true}] at @s run summon spectral_arrow ~ ~ ~ {Tags:["new_arrow"],Passengers:[{id:"minecraft:marker",Tags:["arrow_rider"]}]}

#execute as @e[type=spectral_arrow,nbt={LeftOwner:true}] at @s run data modify entity @e[type=spectral_arrow,tag=new_arrow,limit=1,sort=nearest] Motion set from entity @s Motion

execute as @e[tag=lightning_arrow,nbt={LeftOwner:true}] at @s run data modify entity @s Passengers set value {id:"minecraft:marker",Tags:["arrow_rider"]}
execute as @e[tag=lightning_arrow,nbt={LeftOwner:true}] at @s run summon spectral_arrow ~ ~ ~ {Tags:["new_arrow"],Passengers:[{id:"minecraft:marker",Tags:["arrow_rider"]}]}
execute as @e[type=spectral_arrow,nbt={LeftOwner:true}] at @s run data modify entity @e[type=spectral_arrow,tag=new_arrow,limit=1,sort=nearest] Motion set from entity @s Motion

kill @e[type=spectral_arrow,nbt={LeftOwner:true},tag=lightning_arrow]
#Event
execute as @e[type=marker] unless predicate pack:is_riding_arrow run summon lightning_bolt ~ ~ ~
execute as @e[type=marker] unless predicate pack:is_riding_arrow run playsound entity.wolf.hurt master @a

execute unless predicate pack:is_riding_arrow run kill @e[type=marker]


#change to entities nearby?
#lightning arrow
execute as @a[tag=Archer] at @s run execute run tag @e[type=spectral_arrow,distance=..4] add lightning_arrow 
execute as @e[type=spectral_arrow,tag=lightning_arrow,nbt={inGround:true}] at @s run summon lightning_bolt ~ ~ ~
kill @e[type=spectral_arrow,tag=lightning_arrow,nbt={inGround:true}]

#frag arrow (proximity)


#wand
scoreboard players set @a iz.wand 0

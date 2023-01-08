#summon fireball ~ ~1 ~ {ExplosionPower:0b,Passengers:[{id:"minecraft:llama",InLove:400,Tame:1b,Variant:0,ChestedHorse:1b,DecorItem:{id:"minecraft:magenta_carpet",Count:1b}}],CustomName:'{"text":"COCK CAKE"}',Item:{id:"minecraft:cake",Count:1b}}
#summon area_effect_cloud ~ ~ ~ {Particle:"crimson_spore",Radius: 3f, Duration:100, Color:16711791,Potion:"minecraft:regeneration",Effects:[{Id:10,Amplifier:1b,Duration:100}]}

execute if score @s iz.fireball matches 1 run function pack:fireball1
execute if score @s iz.fireball matches 2 run function pack:fireball2
execute if score @s iz.fireball matches 3 run function pack:fireball3
execute if score @s iz.fireball matches 4 run function pack:fireball4
execute if score @s iz.fireball matches 5 run function pack:fireball5
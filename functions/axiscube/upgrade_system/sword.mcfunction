scoreboard objectives add axiscube.upgrade_system.debug dummy "System objective 1"
scoreboard objectives add axiscube.upgrade_system.debug2 dummy "System objective 2"
scoreboard players set @s axiscube.upgrade_system.debug2 0
scoreboard players set @s axiscube.upgrade_system.debug 0
scoreboard players add @s[hasitem={item=diamond_sword,quantity=2..}] axiscube.upgrade_system.debug2 1
scoreboard players add @s[hasitem={item=iron_sword,quantity=2..}] axiscube.upgrade_system.debug2 1
scoreboard players add @s[hasitem={item=wooden_sword,quantity=2..}] axiscube.upgrade_system.debug2 1
scoreboard players add @s[hasitem={item=stone_sword,quantity=2..}] axiscube.upgrade_system.debug2 1
scoreboard players add @s[hasitem={item=golden_sword,quantity=2..}] axiscube.upgrade_system.debug2 1
# Not enought Tools message (localized)
tellraw @s[scores={axiscube.upgrade_system.debug2=0}] {"rawtext":[{"translate":"trade.notEnough","with":{"rawtext":[{"translate":"howtoplay.tools"}]}}]}
scoreboard players set @s[scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 0
scoreboard players add @s[hasitem={item=diamond_sword,location=slot.weapon.mainhand},scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 1
scoreboard players add @s[hasitem={item=iron_sword,location=slot.weapon.mainhand},scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 1
scoreboard players add @s[hasitem={item=wooden_sword,location=slot.weapon.mainhand},scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 1
scoreboard players add @s[hasitem={item=stone_sword,location=slot.weapon.mainhand},scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 1
scoreboard players add @s[hasitem={item=golden_sword,location=slot.weapon.mainhand},scores={axiscube.upgrade_system.debug2=1..}] axiscube.upgrade_system.debug 1
# Message
tellraw @s[scores={axiscube.upgrade_system.debug=0}] {"rawtext":[{"text":"Please put the item you want to improve in the main hand"}]}


# Diamond -> Netherite
tag @s[hasitem={location=slot.weapon.mainhand,item=diamond_sword}] add hg.function.hasitem.diamond_sword1
tag @s[hasitem={quantity=2..,item=diamond_sword},tag=hg.function.hasitem.diamond_sword1] add hg.function.hasitem.diamond_sword2
clear @s[tag=hg.function.hasitem.diamond_sword2] diamond_sword -1 2
replaceitem entity @s[tag=hg.function.hasitem.diamond_sword2] slot.weapon.mainhand 0 netherite_sword 1 0
execute @s[tag=hg.function.hasitem.diamond_sword2] ~~~ playsound smithing_table.use @s ~~~
tag @s[tag=hg.function.hasitem.diamond_sword2] add hg.function.no_more
tag @s remove hg.function.hasitem.diamond_sword1
tag @s remove hg.function.hasitem.diamond_sword2

#Iron -> Diamond
tag @s[hasitem={location=slot.weapon.mainhand,item=iron_sword},tag=!hg.function.no_more] add hg.function.hasitem.iron_sword1
tag @s[hasitem={quantity=2..,item=iron_sword},tag=!hg.function.no_more,tag=hg.function.hasitem.iron_sword1] add hg.function.hasitem.iron_sword2
clear @s[tag=hg.function.hasitem.iron_sword2,tag=!hg.function.no_more] iron_sword -1 2
replaceitem entity @s[tag=hg.function.hasitem.iron_sword2,tag=!hg.function.no_more] slot.weapon.mainhand 0 diamond_sword 1 0
execute @s[tag=hg.function.hasitem.iron_sword2,tag=!hg.function.no_more] ~~~ playsound smithing_table.use @s ~~~
tag @s[tag=hg.function.hasitem.iron_sword2,tag=!hg.function.no_more] add hg.function.no_more
tag @s remove hg.function.hasitem.iron_sword1
tag @s remove hg.function.hasitem.iron_sword2

# Stone -> Iron
tag @s[hasitem={location=slot.weapon.mainhand,item=stone_sword},tag=!hg.function.no_more] add hg.function.hasitem.stone_sword1
tag @s[hasitem={item=stone_sword,quantity=2..},tag=!hg.function.no_more,tag=hg.function.hasitem.stone_sword1] add hg.function.hasitem.stone_sword2
clear @s[tag=hg.function.hasitem.stone_sword2,tag=!hg.function.no_more] stone_sword -1 2
replaceitem entity @s[tag=hg.function.hasitem.stone_sword2,tag=!hg.function.no_more] slot.weapon.mainhand 0 iron_sword 1 0
execute @s[tag=hg.function.hasitem.stone_sword2,tag=!hg.function.no_more] ~~~ playsound smithing_table.use @s ~~~
tag @s[tag=hg.function.hasitem.stone_sword2] add hg.function.no_more
tag @s remove hg.function.hasitem.stone_sword1
tag @s remove hg.function.hasitem.stone_sword2

# Wood -> Stone
tag @s[hasitem={location=slot.weapon.mainhand,item=wooden_sword},tag=!hg.function.no_more] add hg.function.hasitem.wooden_sword1
tag @s[hasitem={quantity=2..,item=wooden_sword},tag=!hg.function.no_more,tag=hg.function.hasitem.wooden_sword1] add hg.function.hasitem.wooden_sword2
clear @s[tag=hg.function.hasitem.wooden_sword2,tag=!hg.function.no_more] wooden_sword -1 2
replaceitem entity @s[tag=hg.function.hasitem.wooden_sword2,tag=!hg.function.no_more] slot.weapon.mainhand 0 stone_sword 1 0
execute @s[tag=hg.function.hasitem.wooden_sword2,tag=!hg.function.no_more] ~~~ playsound smithing_table.use @s ~~~
tag @s[tag=hg.function.hasitem.wooden_sword2] add hg.function.no_more
tag @s remove hg.function.hasitem.wooden_sword1
tag @s remove hg.function.hasitem.wooden_sword2

# Gold -> Stone
tag @s[hasitem={location=slot.weapon.mainhand,item=golden_sword},tag=!hg.function.no_more] add hg.function.hasitem.golden_sword1
tag @s[hasitem={quantity=2..,item=golden_sword},tag=!hg.function.no_more,tag=hg.function.hasitem.golden_sword1] add hg.function.hasitem.golden_sword2
clear @s[tag=hg.function.hasitem.golden_sword2,tag=!hg.function.no_more] golden_sword -1 2
replaceitem entity @s[tag=hg.function.hasitem.golden_sword2,tag=!hg.function.no_more] slot.weapon.mainhand 0 stone_sword 1 0
execute @s[tag=hg.function.hasitem.golden_sword2,tag=!hg.function.no_more] ~~~ playsound smithing_table.use @s ~~~
tag @s[tag=hg.function.hasitem.golden_sword2] add hg.function.no_more
tag @s remove hg.function.hasitem.golden_sword1
tag @s remove hg.function.hasitem.golden_sword2

tag @s remove hg.function.no_more

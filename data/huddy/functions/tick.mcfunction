tag @a[scores={huddy_on=1}] add huddy_enabled
scoreboard players enable @a huddy_on
scoreboard players set @a[scores={huddy_on=1}] huddy_on 0

tag @a[scores={huddy_off=1}] remove huddy_enabled
scoreboard players enable @a huddy_off
scoreboard players set @a[scores={huddy_off=1}] huddy_off 0

execute if entity @a[tag=huddy_enabled] run function huddy:update_clock

execute as @a[tag=huddy_enabled] run function huddy:update_hud
# Load time
# min = 6/100*ticks+360
execute store result score #tmp1 huddy_val run time query daytime
scoreboard players operation #tmp1 huddy_val *= #6 huddy_val
scoreboard players operation #tmp1 huddy_val /= #100 huddy_val
scoreboard players operation #tmp1 huddy_val += #360 huddy_val
# set min variable
scoreboard players operation #clock_minutes huddy_val = #tmp1 huddy_val
scoreboard players operation #clock_minutes huddy_val %= #60 huddy_val
scoreboard players operation #clock_hours huddy_val = #tmp1 huddy_val
scoreboard players operation #clock_hours huddy_val -= #clock_minutes huddy_val
scoreboard players operation #clock_hours huddy_val /= #60 huddy_val
scoreboard players operation #clock_hours huddy_val %= #24 huddy_val
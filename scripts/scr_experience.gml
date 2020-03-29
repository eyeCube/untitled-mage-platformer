//gaining exp. Leveling up is controlled by step event of obj_ctrl

if obj_pc.dead>0
exit



var expplus, modif;

modif=global.pc_level_growth_exp_mod
if global.pc_level>=5
modif=global.pc_level_growth_exp_mod_5up
if global.pc_level>=10
modif=global.pc_level_growth_exp_mod_10up
if global.pc_level>=15
modif=global.pc_level_growth_exp_mod_15up
if global.pc_level>=20
modif=global.pc_level_growth_exp_mod_20up
if global.pc_level>=30
modif=global.pc_level_growth_exp_mod_30up
if global.pc_level>=40
modif=global.pc_level_growth_exp_mod_40up
if global.pc_level>=50
modif=global.pc_level_growth_exp_mod_50up

expplus=
round
(
    global.pc_experience_multiplier
    *
    argument0
    *
    power(global.pc_level,modif)
)


//maxing out the experience you gain to 100

if expplus>100
expplus=100


if /*var*/ expplus>0
{
    global.pc_experience+=expplus
    obj_ctrl.gotexp=15
    if global.pc_experience>=100
    obj_ctrl.bar_fully_lit=1
}

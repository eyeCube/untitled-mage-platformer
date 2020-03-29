/*
Dash spell

            *

*/


//////////////////////////////////////////////////////////////////


if dash>-global.dash_cooldown_time
exit
if global.pc_mana<global.dash_mana_cost
exit
if dead>0
exit
if sprite_index=spr_pc_ledge_grab
or sprite_index=spr_pc_wall_slide
exit




//////////////////////////////////////////////////////////////////




global.pc_mana-=global.dash_mana_cost

aura_timer=global.pc_aura_timer





grav=0
speed=global.dash_speed

if sprite_index=spr_pc_wall_kick_turn
image_xscale=-image_xscale
direction=90-image_xscale*90

dash=round(16*global.dash_distance/speed)+1


 
if global.pc_item="staff"
repeat(20)
{
    
    //particle

    o=instance_create(x-random(8)+4,y-random(8)+4,obj_particle)
    o.sprite_index=spr_fire
    o.image_index=random(100)
    o.image_speed=0
    o.direction=direction
    o.speed=random(global.dash_speed-5)*random(1)+6
    o.friction=random(.5)*random(1)+.2
    //o.gravity=random(.3)*random(1)
    //o.gravity_direction=270+random(40)-20
    o.alarm[0]=random(30)*random(1)+10
    o.image_xscale=random(7)*random(1)+1
    o.image_yscale=o.image_xscale-o.image_xscale*.15+random(o.image_xscale*.3)
    o.scale_loss_rate=.025+random(.02)
    o.depth=-11

}

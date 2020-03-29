/*
Morning Star spell

            *

*/


//////////////////////////////////////////////////////////////////


if global.pc_mana<1
exit
if dead>0
exit

/*
var count;
count=0
with obj_star
if main_star
count+=1

if count>=2
exit*/


/*if sprite_index=spr_pc_fall_crouched
{
    will_z_after_stun=1
    exit
}*/
/*
if sprite_index=spr_pc_ledge_grab
or sprite_index=spr_pc_wall_slide
{
exit
}*/



//////////////////////////////////////////////////////////////////




global.pc_mana-=1

aura_timer=global.pc_aura_timer





var t, ix, /*i, ang*/;
t=global.pc_spell_star_speed
ix=image_xscale
if wall_kick_turn_around
ix=-image_xscale

//i=-1

    
        p=instance_create(x,y,obj_star)
        p.hspeed=t*ix*3/4
        if midair
        p.vspeed=t*3/4
        if sprite_index=spr_pc_ledge_grab
        p.y-=4
    


/*
sprite_index=spr_pc_swing1
image_speed=1
alarm[10]=5

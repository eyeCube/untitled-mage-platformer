/*
Lightning spell

            *

*/


//////////////////////////////////////////////////////////////////


if global.pc_mana<global.lightning_mana_cost
exit
if dead>0
exit

if global.pc_lightning_cooldown>0
exit




//////////////////////////////////////////////////////////////////




global.pc_mana-=global.lightning_mana_cost

aura_timer=global.pc_aura_timer



global.pc_lightning_cooldown=global.pc_lightning_cooldown_time



var i, xt, yt, ytemp, stop, go; 
xt=round((x-8)/16)*16
yt=floor(y/16)*16

go=0
i=0
stop=0
repeat(17)
{
if stop=0
{
    ytemp=yt+16*i
    
    o=instance_create(xt,ytemp,obj_pc_lightning)
    with o
    if position_meeting(x,y,obj_solid_parent)
    and position_meeting(x,y,obj_breakable_parent)=0
    and position_meeting(x,y,obj_vert_moving_platform_par)=0
    {
        instance_destroy()
        stop=1
        
        if global.pc_item="staff"
        {
        
            o=instance_create(x,y-16,obj_pc_fire_pit)
            with o
            with instance_place(x,y,obj_pc_fire_pit)
            instance_destroy()
        
        }
    }
    
    i+=1
}
}

go=0
i=1
stop=0
repeat(11-1)
{
if stop=0
{
    ytemp=yt-16*i
    
    o=instance_create(xt,ytemp,obj_pc_lightning)
    with o
    if place_meeting(x,y,obj_solid_parent)
    and place_meeting(x,y,obj_breakable_parent)=0
    and place_meeting(x,y,obj_vert_moving_platform_par)=0
    {
        instance_destroy()
        stop=1
    }
    
    i+=1
}
}

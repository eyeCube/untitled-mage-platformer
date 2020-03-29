/*
Flames spell

            *

*/


//////////////////////////////////////////////////////////////////


if global.pc_mana<global.flames_mana_cost
exit
if dead>0
exit

if instance_exists(obj_flames)=1
exit




//////////////////////////////////////////////////////////////////




global.pc_mana-=global.flames_mana_cost

aura_timer=global.pc_aura_timer




var ix;
ix=image_xscale
if sprite_index=spr_pc_wall_kick_turn
ix=-image_xscale


o=instance_create(round((x+8*image_xscale)/16)*16,floor(y/16)*16,obj_flames)
o.image_xscale=image_xscale
if global.pc_item="staff"
o.sprite_index=spr_flames_blue

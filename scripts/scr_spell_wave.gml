/*
Wave spell

            *

*/


//////////////////////////////////////////////////////////////////


if global.pc_mana<global.star_rolling_mana_cost
exit
if dead>0
exit
if instance_exists(obj_rolling_star)>0
exit




//////////////////////////////////////////////////////////////////




global.pc_mana-=global.star_rolling_mana_cost

aura_timer=global.pc_aura_timer





{

        o=instance_create(round((x-8+image_xscale)/16)*16+16*image_xscale,floor(y/16)*16,obj_rolling_star)
    o.damage=global.pc_magickality*global.star_rolling_damage+global.pc_spell_star_rolling_damage
        o.dir=image_xscale
        if sprite_index=spr_pc_ledge_grab
        o.y-=16
        
        if global.pc_item="staff"
        {
        
            o.flames=1
        /*
            o.type="fire"
            o.damage+=round(global.pc_magickality/2)+1
            //o.max_times=global.star_rolling_number_fire
            //o.timer=global.star_rolling_timer_fire*/
        }
}

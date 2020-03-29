if obj_pc.hit>0
exit


if instadeath=0
if global.pc_item!=""
{
    drop_item(-1)
    hit=global.pc_hit_flash_time
    
    if sprite_index!=spr_pc_ledge_grab
    {
        if other.x>x
        hspeed=-global.pc_knockback_speed
        else
        hspeed=global.pc_knockback_speed
        
        vspeed-=1
        
    }
    
    sprite_index=spr_pc
                stunned=0
                ledge_grab_stun=0
    
    //////////////////////////////////
                    exit
    //////////////////////////////////
}






if dead=0
{

    
    if argument0=0
    {

    sprite_index=spr_pc_jump
    
    image_index=0
    
            //image_index=argument0
            //alarm[9]=argument1
            
            
    image_speed=.334
    image_angle=0
    
    
    visible=0
    {
    o=instance_create(x,y,obj_particle)
    o.sprite_index=sprite_index
    o.image_index=image_index
    o.image_speed=image_speed
    o.image_xscale=image_xscale
    o.vspeed=-6
    o.gravity=.5
    o.gravity_direction=270
    o.flash=1
    }
    
    }
    
    
    
    
    
    
    
    speed=0
    
    dead=1
    
    
    with obj_soul
    {
        repeat(souls)
        {
            o=instance_create(x,y,obj_particle)
            o.sprite_index=sprite_index
            o.image_index=0
            o.image_speed=0
            o.speed=random(10)+5
            o.friction=.1+random(.5)+random(1)
            o.gravity=random(.5)*random(1)
            o.gravity_direction=random(360)
            o.direction=random(360)
            o.alarm[0]=random(60)*random(1)+15
        }
        
        instance_destroy()
    }
}

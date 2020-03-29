////////////////////////////////////////////////////////////////////////////////////////////////////

if dead>0
exit

if instance_exists(obj_boomerang)
{
    if obj_boomerang.returning!=2
    {
            
        with obj_boomerang
        {
            
            var rt;
            rt=0
            
            returning=2
            
            direction=point_direction(x,y,obj_pc.x,obj_pc.y)
            
            
        
   /*             
if flame=1
{
var i, times;
i=0
times=8
repeat(times)
{

    //damaging bolt
    
    
    o=instance_create(x,y,obj_projectile)
    o.damage=global.pc_magickality*global.boomerang_flame_damage
    o.type="fire"
    o.phases_walls=1
    o.phases_enemies=1
    o.sprite_index=spr_fire
    o.image_index=random(100)
    o.image_speed=0
    o.direction=i/times*360
    o.speed=4+random(1)
    o.friction=.25
    o.gravity=random(.3)*random(1)
    o.gravity_direction=270+random(40)-20
    o.alarm[0]=10
    o.image_xscale=random(5)*random(1)+3
    o.image_yscale=o.image_xscale-o.image_xscale*.15+random(o.image_xscale*.3)
    o.scale_loss_rate=.025+random(.02)
    
    
    
    //particle

    o=instance_create(x,y,obj_particle)
    o.sprite_index=spr_fire
    o.image_index=random(100)
    o.image_speed=0
    o.direction=    (i+0.5)     /times  *360
    o.speed=3
    o.friction=.25
    o.gravity=random(.3)*random(1)
    o.gravity_direction=270+random(40)-20
    o.alarm[0]=25+random(10)*random(1)
    o.image_xscale=random(3)*random(1)+3
    o.image_yscale=o.image_xscale-o.image_xscale*.15+random(o.image_xscale*.3)
    o.scale_loss_rate=.025+random(.02)
    
    
    i+=1

}
    
}*/
            
            /*
            repeat(4)
            {
                o=instance_create(x,y,obj_projectile)
                o.sprite_index=spr_boomerazor
                o.image_index=0
                o.image_speed=.5
                o.direction=0+rt
                o.image_angle_c=45
                o.image_xscale=image_xscale
                o.image_angle=o.direction
                o.speed=4
                o.create_particles=0
                o.phases_walls=1
                o.phases_enemies=1
                //o.alarm[1]=10
                
                o.damage=damage-1
                
                rt+=90
            }*/
        }
    }
    
    exit
}

if sprite_index=spr_pc_ledge_grab
exit
if sprite_index=spr_pc_wall_slide
exit
if sprite_index=spr_pc_fall_crouched
{
will_x_after_stun=1
exit
}


////////////////////////////////////////////////////////////////////////////////////////////////////



aura_timer=global.pc_aura_timer



throw=1

o=instance_create(x,y,obj_boomerang)

if global.pc_item="staff"
o.flame=1

o.direction=90

o.dir=-image_xscale
if sprite_index=spr_pc_wall_kick_turn
o.dir=-o.dir

with o
image_xscale=dir



{

    o=instance_create(x,y,obj_particle)
    o.gravity=.55
    o.gravity_direction=270
    o.sprite_index=sprite_index
    o.image_index=image_index
    o.image_speed=image_speed
    o.alarm[0]=60
    

    instance_destroy()
    
}

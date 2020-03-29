//if hit<=0

    if thrown=0
{

var can_create, o;
can_create=1
    o=noone

    if can_create
    {
    with obj_metal_pole_top
    {
    if x=other.x
    {
        o=instance_create(x,y,obj_fan1)
        
        can_create=0
        instance_destroy()
    }
        if instance_exists(o)
        if y=o.y
        if place_meeting(x,y,obj_fan1)=0
        {
            instance_create(x,y,obj_fan1)
            can_create=0
            instance_destroy()
        }

    }
    }
    
    
    
    o=noone
    
    if can_create
    {
    with obj_fan1
    {
    if x=other.x
    {
        o=instance_create(x,y,obj_metal_pole_top)
        
        can_create=0
        instance_destroy()
    }
        if instance_exists(o)
        if y=o.y
        if place_meeting(x,y,obj_metal_pole_top)=0
        {
            instance_create(x,y,obj_metal_pole_top)
            can_create=0
            instance_destroy()
        }
    }
    }
    
    thrown=1
    image_index=1
    
}

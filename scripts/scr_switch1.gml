if image_index=0
{


if package="blocks"
{
    with obj_switch_block1
    {
        o=instance_create(x,y,obj_block_dirt)
        o.sprite_index=sprite_index
        o.image_speed=0
        o.image_index=image_index
        o.alarm[0]=-1
    
        instance_destroy()
    }
    
    
    image_index=1
    
    sleep(100)
    
    exit
}



}

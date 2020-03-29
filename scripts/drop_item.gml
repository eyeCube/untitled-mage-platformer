//argument0: what is the circumstances of dropping the item?
/*
    argument0 case:
    1: player throws item if moving, else drops item
    0: player drops item
    -1: player drops item, and the item is gone, you can't get it back (when you get hit by an enemy)
*/

if global.pc_item=""
exit


switch global.pc_item
    {
        case "parasol":
        {            
            o=instance_create(x-image_xscale*1,y,obj_parasol)
            break
        }
        
        case "staff":
        {            
            o=instance_create(x-image_xscale*1,y,obj_staff)
            break
        }
        
    }
    
    
                
                o.vspeed=-2

    //throw animation
    
            //if item can be picked up again
            if argument0=1
            {
            
                if keyboard_check(vk_left)
                {
                    o.hspeed=-9
                    
                    throw=1
                }
                else
                if keyboard_check(vk_right)
                {
                    o.hspeed=9
                    
                    throw=1
                }
                
            }
            
            
            //else, if item can't be picked up again
            else
            if argument0=-1
            {
                o.alarm[0]=-1
                
                o.hspeed=random(3)*choose(-1,1)
                o.flash=1
                
                o.collides_with_walls=0
                o.collides_with_enemies=0
                o.terminal_velocity=4
                o.grav=.5
                o.depth=-25
            }
            
            
            
            
    //reset pc_item
                global.pc_item=""

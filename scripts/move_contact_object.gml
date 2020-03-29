{
    var dirn, max_dist, contact_obj, dx, dy, dist;
    
    dirn=           argument0
    max_dist=       argument1
    contact_obj=    argument2
    
    if (max_dist = -1) max_dist = 1000
    
    dx=lengthdir_x(1,dirn)
    dy=lengthdir_y(1,dirn)
    
    dist=1
    
    while dist<=max_dist
    {
        if place_meeting(x+dx,y+dy,contact_obj)=0
        {
            x= x+dx
            y= y+dy
        }
        else
        exit
        
        dist    +=1
    }
    
    //return false
}

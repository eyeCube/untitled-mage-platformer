

var gt;
gt=3

var yt;
yt=0



if argument0>99
{
o=instance_create(x+hit_numbers_x_offset-gt-5,y-16+hit_numbers_y_offset,obj_particle)
o.depth=-400000
    o.sprite_index=spr_numbers_purple
    o.image_index=floor(argument0 /100)
    o.image_speed=0
    o.alarm[0]=30
    o.vspeed=-1
    o.friction=.05
    o.destroyed_off_screen=0
    if o.y<view_yview+16
    o.y=view_yview+16
}
    
if argument0>9
{
o=instance_create(x+hit_numbers_x_offset-gt,y-16+hit_numbers_y_offset,obj_particle)
o.depth=-400000
    o.sprite_index=spr_numbers_purple
    o.image_index=floor(argument0 /10)
    o.image_speed=0
    o.alarm[0]=30
    o.vspeed=-1
    o.friction=.05
    o.destroyed_off_screen=0
    if o.y<view_yview+16
    o.y=view_yview+16
}

o=instance_create(x+hit_numbers_x_offset+2,y-16+hit_numbers_y_offset,obj_particle)
o.depth=-400000
    if argument0>9
    o.sprite_index=spr_numbers_purple
    else
    o.sprite_index=spr_numbers
    o.image_index=argument0 mod 10
    o.image_speed=0
    o.alarm[0]=30
    o.vspeed=-1
    o.friction=.05
    o.destroyed_off_screen=0
    if o.y<view_yview+16
    o.y=view_yview+16
    




///////////////////////////////////////////////////////
    if shows_hit_numbers=0
        exit
///////////////////////////////////////////////////////




if hit>0
damage_stack_timer=damage_stack_timer_max

damage_stack_timer-=1


var go;
go=0

if damage_stack>=1
{
    if damage_stack_timer<=0
    or life<=0
    go=1
}

if go
{
    scr_hit_number(floor(damage_stack))
    damage_stack=damage_stack mod 1 //keeps the decimal stored for later use (a later attack)
}


//argument0:    damage
//argument1:    whether the player was the one to deal the damage or not. If 1, then yes
//argument2:    type of damage "spell" "fire" "boomerang" "projectile" "none"
//argument3:    show hit number or not
//argument4:    hit variable is set to this value
//argument5:    at what value must "hit" be, in order for the attack to go through. Usually 0.

var go;
go=0
if argument2="none"
if hit<=argument5
go=1
if argument2="projectile"
if hit_by_projectile<=argument5
go=1
if argument2="fire"
if hit_by_fire<=argument5
go=1
if argument2="spell"
if hit_by_spell<=argument5
go=1
if argument2="boomerang"
if hit_by_boomerang<=argument5
go=1
if argument2="physical"
if hit<=argument5
go=1
if argument2="lightning"
if hit_by_lightning<=argument5
go=1


if go
{

    life-=argument0
    
    if argument1
    {
        player_hit_me=1
        if life<=0
        {
            player_killed_me=1
        }
    }
    
    if argument2="none"
    {
    hit=argument4
    }
    if argument2="physical"
    {
    hit=argument4
    }
    if argument2="spell"
    {
    hit_by_spell=argument4
    hit=max(hit_by_spell,hit)
    }
    if argument2="lightning"
    {
    hit_by_lightning=argument4
    hit=max(hit_by_lightning,hit)
    }
    if argument2="fire"
    {
    hit_by_fire=argument4
    hit=max(hit_by_fire,hit)
    }
    if argument2="projectile"
    {
    hit_by_projectile=argument4
    hit=max(hit_by_projectile,hit)
    }
    if argument2="boomerang"
    {
    hit_by_boomerang=argument4
    hit=max(hit_by_boomerang,hit)
    }

    if argument3
    {
    damage_stack+=argument0
    }
    
    
    
}




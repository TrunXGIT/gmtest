if state_new
{
    sprite_index=spr_link_run_down;
    image_index=0;
    image_speed=0.5;
    
    speed=2;
    
    timer=60+irandom(240);
    
    dir_timer=irandom(30);
    
    angle=irandom_range(-8,8);
    direction=irandom(360);
}

dir_timer--;
if dir_timer<=0
{
    if random(1)>0.5
    {
        angle=irandom_range(-8,8);
    }
    else
    {
        angle=0;
    }
    dir_timer=irandom(30);
}


direction+=angle;
switch((direction+45) div 90)
{
    case 0: sprite_index=spr_link_run_right; break;
    case 1: sprite_index=spr_link_run_up; break;
    case 2: sprite_index=spr_link_run_left; break;
    case 3: sprite_index=spr_link_run_down; break;
    default: sprite_index=spr_link_run_right; break;
}

timer--;
if timer<=0
{
    if x>16 && x<room_width-16 && y>32 && y<room_height-32
        next_state="state_idle";
    else
        timer=10;
}

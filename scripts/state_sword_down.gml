if state_new
{
    sprite_index=spr_link_sword_down;
    image_index=0;
    image_speed=0.5;
    
    speed=0;
}



if image_index+image_speed>=image_number
{
    next_state="state_idle";
}


if state_new
{
    sprite_index=spr_link_idle;
    image_index=0;
    image_speed=0.05;
    
    speed=0;
    
    timer=30+irandom(270) //test
}


timer--;
if timer<=0
{
    if random(1)>0.5
        next_state="state_walk";
    else
    {
        switch(irandom(4))
        {
            case 0: next_state="state_sword_down"; break;
            case 1: next_state="state_sword_up"; break;
            case 2: next_state="state_sword_left"; break;
            case 3: next_state="state_sword_right"; break;
            case 4: next_state="state_sleep"; break;
        }
    }
}


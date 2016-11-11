if state_new
{
    sprite_index=spr_link_fall;
    image_index=0;
    image_speed=0.5;
    
    speed=0;
    sub_state=0;
}


switch (sub_state)
{
    case 0:            
            if image_index+image_speed>=image_number
            {
                sub_state++;
                timer=300+irandom(300);
                sprite_index=spr_link_sleep;
                image_index=0;
                image_speed=0.05;
            }
            break;
    case 1:
            timer--;
            if timer<=0
            {
                sub_state++;
                sprite_index=spr_link_fall;
                image_index=image_number-1;
                image_speed=-0.5;
            }
            break;
    case 2:
            if image_index+image_speed<=0
            {
                image_speed=0;
                next_state="state_idle";
            }
            break;
}


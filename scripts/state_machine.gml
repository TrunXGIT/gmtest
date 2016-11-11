iteration=0;
do
{
    iteration++;
    script_execute(asset_get_index(current_state));
    
    if current_state==next_state
    {
        state_new=false;
    }
    else
    {
        state_new=true;
        current_state=next_state;
    }
} 
until (state_new==false || iteration>=1);


jumps := 1000;

  for ( inth := 1 ; inth <= jumps ; inth++ )     {
	prev_energy := total_energy;
	hessian_seek;
	if (prev_energy == total_energy) then { hessian_seek; if (prev_energy == total_energy) then {break;};};
    }; 



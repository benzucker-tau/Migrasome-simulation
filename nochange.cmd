// reach local minimum to start refinement towards valid shape

jumps := 100000;

  for ( intg := 1 ; intg <= 1000 ; intg++ )  {
	g;
	if (scale==0) then { g; if (scale==0) then {break;};};  }; 
	conj_grad;

  for ( intg := 1 ; intg <= jumps ; intg++ )  {
	prev_energy := total_energy;
	g;
	if (scale==0) then { g; if (scale==0) then {break;};};
	g;
	if (prev_energy == total_energy) then {break;};	}; 
	
	
  for ( inth := 1 ; inth <= jumps ; inth++ )     {
	prev_energy := total_energy;
	hessian_seek;
	if (prev_energy == total_energy) then { hessian_seek; if (prev_energy == total_energy) then {break;};};
	hessian_seek;
	if (prev_energy == total_energy) then {break;};	};
	
   	
  for ( intg := 1 ; intg <= jumps ; intg++ )  {
	prev_energy := total_energy;
	g;
	if (scale==0) then { g; if (scale==0) then {break;};};
	g;
	if (prev_energy == total_energy) then {break;};	}; 

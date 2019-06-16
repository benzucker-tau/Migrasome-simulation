//check boundary conditions

err := 0.10 ; 							// % of error tolerable

read "boundary_conditions.cmd";
term1 := abs(abs(kapparight*(rightcm+rightcp))-abs(kappaleft*(leftcm+leftcp))-moment*cp)/(0.5*(abs(kapparight*(rightcm+rightcp))+abs(moment*cp)));
read "shapeeq.cmd";
term2 :=abs((abs(lambda)-abs(proteinarea.pressure))/(0.5*(abs(lambda)+abs(proteinarea.pressure))));

if ((term1 < err) && (term2 < err )) then {valid:=1;} else {valid:=0};
//{print "\n shape is validated \n";} else {print "\n boundary conditions does not hold \n";};
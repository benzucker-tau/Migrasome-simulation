// Checking force equilibrium boundary conditions. here with no torques introduced
vernum := 4;
rightver := vertex[vernum].edge[1].vertex[1].id+vertex[vernum].edge[1].vertex[2].id-vernum;
leftver := vertex[vernum].edge[2].vertex[1].id+vertex[vernum].edge[2].vertex[2].id-vernum;

delx := vertex[vernum].edge[1].vertex[1].x+vertex[vernum].edge[1].vertex[2].x-vertex[vernum].edge[2].vertex[1].x-vertex[vernum].edge[2].vertex[2].x;
dely :=  vertex[vernum].edge[1].vertex[1].y+vertex[vernum].edge[1].vertex[2].y-vertex[vernum].edge[2].vertex[1].y-vertex[vernum].edge[2].vertex[2].y;
cm := -vertex[vernum].mean_curvature;
cp := abs((delx/dely)/(vertex[vernum].y*((delx/dely)^2+1)^0.5));
delx := vertex[leftver].edge[1].vertex[1].x+vertex[leftver].edge[1].vertex[2].x-vertex[leftver].edge[2].vertex[1].x-vertex[leftver].edge[2].vertex[2].x;
dely :=  vertex[leftver].edge[1].vertex[1].y+vertex[leftver].edge[1].vertex[2].y-vertex[leftver].edge[2].vertex[1].y-vertex[leftver].edge[2].vertex[2].y;
leftcm := -vertex[leftver].mean_curvature;
leftcp := abs((delx/dely)/(vertex[leftver].y*((delx/dely)^2+1)^0.5));
delx := vertex[rightver].edge[1].vertex[1].x+vertex[rightver].edge[1].vertex[2].x-vertex[rightver].edge[2].vertex[1].x-vertex[rightver].edge[2].vertex[2].x;
dely :=  vertex[rightver].edge[1].vertex[1].y+vertex[rightver].edge[1].vertex[2].y-vertex[rightver].edge[2].vertex[1].y-vertex[rightver].edge[2].vertex[2].y;
rightcm := -vertex[rightver].mean_curvature;
rightcp := abs((delx/dely)/(vertex[rightver].y*((delx/dely)^2+1)^0.5));

if vertex[leftver].on_quantity sqcyl_l then { kappaleft := sqcyl_l.modulus/2 };
if vertex[leftver].on_quantity sqcyl_p then { kappaleft := sqcyl_p.modulus/2 };
if vertex[rightver].on_quantity sqcyl_l then { kapparight := sqcyl_l.modulus/2;
print proteinarea.pressure+0.5*kappaleft*(leftcp^2-leftcm^2);
print gamma+0.5*kapparight*(rightcp^2-rightcm^2);};
if vertex[rightver].on_quantity sqcyl_p then { kapparight := sqcyl_p.modulus/2 ;


};

gammap := gamma*sqcyl_l.modulus/sqcyl_p.modulus;


print "kappaJ_right - kappaJ_left=";
print kapparight*(rightcm+rightcp)-kappaleft*(leftcm+leftcp);
print "delta kappa_bar * c_p =";
print moment*cp;

//refines edges where angle > angletor


for (inti := 1 ; inti <= vertex_count-1 ; inti++) {
if (edge[inti].vertex[1].valence == 2 && edge[inti].vertex[2].valence == 2 ) then {

 if ((abs((edge[inti].vertex[1].edge[1].x1*edge[inti].vertex[1].edge[2].x1+edge[inti].vertex[1].edge[1].x2*edge[inti].vertex[1].edge[2].x2)/(sqrt((edge[inti].vertex[1].edge[1].x1)^2+(edge[inti].vertex[1].edge[1].x2)^2)*sqrt((edge[inti].vertex[1].edge[2].x1)^2+(edge[inti].vertex[1].edge[2].x2)^2))))  < angletor ) or (abs((edge[inti].vertex[2].edge[1].x1*edge[inti].vertex[2].edge[2].x1+edge[inti].vertex[2].edge[1].x2*edge[inti].vertex[2].edge[2].x2)/(sqrt((edge[inti].vertex[2].edge[1].x1)^2+(edge[inti].vertex[2].edge[1].x2)^2)*sqrt((edge[inti].vertex[2].edge[2].x1)^2+(edge[inti].vertex[2].edge[2].x2)^2)))  < angletor ) then {
edge[inti].to_be_refined := 1;
};
};
};


quiet off
  refine edge where to_be_refined == 1
quiet on
  
  set edge to_be_refined 0 
 
  unset edge junction_torque_left
  unset edge junction_torque_right
  set edge junction_torque_left where id == vertex[4].edge[2].id 
  set edge junction_torque_right where id == vertex[5].edge[1].id
  set vertex sqcyl_l where x > vertex[5].x[1]
  set vertex sqcyl_l where x < vertex[4].x[1]
  set vertex sqcyl_p where x > vertex[4].x[1] && x < vertex[5].x[1] 
  
  set vertex constraint posrad

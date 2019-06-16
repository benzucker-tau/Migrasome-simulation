// gradient edge length - refinening edges
lefttr  := vertex[4].x;						//protein position
righttr := vertex[5].x; 


quiet off
refine edge ee where  0.5*(ee.vertex[1].x+ee.vertex[2].x) > lefttr-5*Lscale and 0.5*(ee.vertex[1].x+ee.vertex[2].x) < righttr+5*Lscale
quiet on

  unset edge junction_torque_left
  unset edge junction_torque_right
  set edge junction_torque_left where id == vertex[4].edge[2].id 
  set edge junction_torque_right where id == vertex[5].edge[1].id
  set vertex sqcyl_l where x > vertex[5].x
  set vertex sqcyl_l where x < vertex[4].x
  set vertex sqcyl_p where x > vertex[4].x && x < vertex[5].x
  
  set vertex constraint posrad

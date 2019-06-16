
// migrozebra - zebra b & w

//color1 := "black"
//color2 := "white"

binar :=-1;
edgecount := 1
vercount  :=1
set edge[edgecount] color black

for (inti := 1; inti < vertex_count-1; inti++){
vercount:= edge[edgecount].vertex[1].id+edge[edgecount].vertex[2].id-vertex[vercount].id;
edgecount:= vertex[vercount].edge[2].id+vertex[vercount].edge[1].id-edge[edgecount].id ;
if (binar == 1) then {
set edge[edgecount] color black;};
if (binar == -1) then{ 
set edge[edgecount] color white; };
binar := -binar;
};
if (recolor==1) then {
set edge color black;
set edge color green where on_quantity proteinarea; };

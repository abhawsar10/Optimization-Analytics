reset;

#parameters
param requirement{i in 1..7};

#variables
var nurses_hired{i in 1..7} >=0;

#objective function
minimize total_nurses_hired:
	sum{i in 1..7} nurses_hired[i];
	
#constraints

subject to x1: nurses_hired[1] >= requirement[1] - nurses_hired[7] - nurses_hired[6] - nurses_hired[5] - nurses_hired[4];
subject to x2: nurses_hired[2] >= requirement[2] - nurses_hired[1] - nurses_hired[7] - nurses_hired[6] - nurses_hired[5];
subject to x3: nurses_hired[3] >= requirement[3] - nurses_hired[2] - nurses_hired[1] - nurses_hired[7] - nurses_hired[6];
subject to x4: nurses_hired[4] >= requirement[4] - nurses_hired[3] - nurses_hired[2] - nurses_hired[1] - nurses_hired[7];
subject to x5: nurses_hired[5] >= requirement[5] - nurses_hired[4] - nurses_hired[3] - nurses_hired[2] - nurses_hired[1];
subject to x6: nurses_hired[6] >= requirement[6] - nurses_hired[5] - nurses_hired[4] - nurses_hired[3] - nurses_hired[2];
subject to x7: nurses_hired[7] >= requirement[7] - nurses_hired[6] - nurses_hired[5] - nurses_hired[4] - nurses_hired[3];
	

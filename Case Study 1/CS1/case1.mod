reset;

#params-------------------------------------------------------------------------------------------------:

param desk_profit{i in 1..9};

param september_orders{i in 1..9};

param aluminum_supply;
param aluminum_req{i in 1..9};

param particle_supply;
param particle_req{i in 1..9};

param pine_supply;
param pine_req{i in 1..9};

param total_labor;
param labor_req{i in 1..9};
param handy_req{i in 1..9};


param line_req {i in 1..9,j in 1..3};
param line_limit{i in 1..3};


#variables-----------------------------------------------------------------------------------------------:

var no_of_orders{i in 1..9}>=0;


var total_prod>=0;

#objective function--------------------------------------------------------------------------------------:

maximize total_profit: sum{i in 1..9} desk_profit[i] * no_of_orders[i];


#constraints--------------------------------------------------------------------------------------------:

subject to total_production: total_prod = sum{i in 1..9} no_of_orders[i];

subject to desk_demands {i in 1..9}: september_orders[i]  <= no_of_orders[i];


subject to alum_supply: sum{i in 1..9} no_of_orders[i] * aluminum_req[i] <= aluminum_supply;

subject to particle_board_supply: sum{i in 1..9} no_of_orders[i] * particle_req[i] <= particle_supply;

subject to pine_sheet_supply: sum{i in 1..9} no_of_orders[i] * pine_req[i] <= pine_supply;
								 
subject to labor_availability: sum{i in 1..9} (no_of_orders[i]*(2*line_req[i,1] + 2*line_req[i,2] + 2*line_req[i,3] + labor_req[i] + handy_req[i] )) <= total_labor;

subject to production_capacity {lin in 1..3}: line_limit[lin] >= sum{d in 1..9} no_of_orders[d] * line_req[d,lin] ;

subject to production_quotas1a: 0.2* total_prod <= sum{i in 1..3} no_of_orders[i];
subject to production_quotas1b: 0.5* total_prod >= sum{i in 1..3} no_of_orders[i];

subject to production_quotas2a: 0.4* total_prod <= sum{i in 4..6} no_of_orders[i];
subject to production_quotas2b: 0.6* total_prod >= sum{i in 4..6} no_of_orders[i];

subject to production_quotas3a: 0.1* total_prod <= sum{i in 7..9} no_of_orders[i];
subject to production_quotas3b: 0.2* total_prod >= sum{i in 7..9} no_of_orders[i];

subject to production_quotas4a: 0.2* total_prod <= no_of_orders[1] + no_of_orders[4] + no_of_orders[7];
subject to production_quotas4b: 0.35* total_prod >= no_of_orders[1] + no_of_orders[4] + no_of_orders[7];

subject to production_quotas5a: 0.4* total_prod <= no_of_orders[2] + no_of_orders[5] + no_of_orders[8];
subject to production_quotas5b: 0.7* total_prod >= no_of_orders[2] + no_of_orders[5] + no_of_orders[8];

subject to production_quotas6a: 0.05* total_prod <= no_of_orders[3] + no_of_orders[6] + no_of_orders[9];
subject to production_quotas6b: 0.15* total_prod >= no_of_orders[3] + no_of_orders[6] + no_of_orders[9];





















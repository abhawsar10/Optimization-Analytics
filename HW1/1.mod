reset;
#parameters
param change_cost;
param inventory_cost;
param p_limit;

param cost{i in 1..4};
param requirement{i in 1..4};


#variables
var production{i in 1..4} >=0;
var inventory{i in 0..4} >=0;
var z{i in 1..4};		#to linearize equation


#objective function
minimize totalcost:
	sum{i in 1..4}
		(cost[i]*production[i] + inventory_cost*inventory[i] + change_cost*z[i]);

	
#constraints
subject to production_limit {i in 1..4}: production[i] <= p_limit;
subject to starting_inventory: inventory[0] = 1000;
subject to inventory_update {i in 1..4}: inventory[i] = inventory[i-1] + production[i] - requirement[i];
subject to inventory_end: inventory[4] >= 1500;

subject to z0: z[1] = 0;
subject to z1 {i in 2..4}: z[i] >= production[i] - production[i-1];
subject to z2 {i in 2..4}: -z[i] <= production[i]  - production[i-1];


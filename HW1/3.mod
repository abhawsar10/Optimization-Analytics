reset;

#parameters

param hours{i in 1..8};
param score{i in 1..8};


#variables
var coef;
var intercept;
var z{i in 1..8};		#to linearize equation


#objective function
minimize AbsoluteErr:
	sum{i in 1..8} z[i];
	
subject to z1 {i in 1..8}: z[i] >= score[i] - hours[i]*coef - intercept;
subject to z2 {i in 1..8}: -z[i] <= score[i] - hours[i]*coef - intercept;


reset;
#parameters
param total_bet = 100;
param set_odds = 3/2;
param match_odds = 5/2;

#variables
var x_a{i in 1..3} >=0;
var x_b{i in 1..3} >=0;
var y_a >=0;
var y_b >=0;
var z;

#objective function
maximize total_earnings: z;

	
#constraints
subject to scene1: 
	z <= (set_odds)*x_a[1] - x_b[1] 
		+ (set_odds)*x_a[2]  - x_b[2] 
		+ match_odds*y_a - y_b; 

subject to scene2: 
	z <= set_odds*x_a[1] - x_b[1]
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ set_odds*x_a[3] - x_b[3] 
		+ match_odds*y_a - y_b;
	
subject to scene3: 
	z <= set_odds*x_a[1] - x_b[1]
		- x_a[2] + (1/set_odds)*x_b[2]
		- x_a[3] + (1/set_odds)*x_b[3] 
		- y_a + (1/match_odds)*y_b;
		
subject to scene4: 
	z <= (1/set_odds)*x_b[1] - x_a[1] 
		+ (1/set_odds)*x_b[2] - x_a[2]
		+ (1/match_odds)*y_b - y_a;
		
subject to scene5: 
	z <= (1/set_odds)*x_b[1] - x_a[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		+ (1/set_odds)*x_b[3] - x_a[3] 
		+ (1/match_odds)*y_b - y_a; 
		
subject to scene6: 
	z <= (1/set_odds)*x_b[1] - x_a[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		+ (match_odds)*y_a - y_b; 
		
subject to totalmoney:
	x_a[1] + x_a[2] + x_a[3] + x_b[1] + x_b[2] + x_b[3] + y_a + y_b <= 100; 
		
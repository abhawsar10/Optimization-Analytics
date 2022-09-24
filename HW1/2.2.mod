reset;
#parameters
param total_bet = 100;
param set_odds = 3/2;
param match_odds = 5/2;

#variables
var x_a{i in 1..5} >=0;
var x_b{i in 1..5} >=0;
var y_a >=0;
var y_b >=0;
var z;



#objective function
maximize total_earnings: z;

	
#constraints

subject to totalmoney:
	x_a[1] + x_a[2] + x_a[3] + x_a[4] + x_a[5]
	+ x_b[1] + x_b[2] + x_b[3] + x_b[4] + x_b[5] 
	+ y_a + y_b <= 100; 
		
subject to scene1: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		+ (set_odds)*x_a[2]  - x_b[2] 
		+ (set_odds)*x_a[3]  - x_b[3] ;

subject to scene2: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		+ (set_odds)*x_a[2]  - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		+ (set_odds)*x_a[4]  - x_b[4];
		
subject to scene3: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		+ (set_odds)*x_a[2]  - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4] 
		+ (set_odds)*x_a[5]  - x_b[5];
		
subject to scene4: 
	z <= 
		-y_a + (1/match_odds)*y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		+ (set_odds)*x_a[2]  - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4]
		- x_a[5]  + (1/set_odds)*x_b[5];  
		
subject to scene5: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3]  - x_b[3] 
		+ (set_odds)*x_a[4]  - x_b[4];
		
subject to scene6: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3]  - x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4]
		+ (set_odds)*x_a[5]  - x_b[5];
			
subject to scene7: 
	z <= 
		-y_a + (1/match_odds)*y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3]  - x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4]
		- x_a[5]  + (1/set_odds)*x_b[5];
		
subject to scene8: 
	z <= 
		+(match_odds)*y_a - y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3]
		+ (set_odds)*x_a[4]  - x_b[4] 
		+ (set_odds)*x_a[5]  - x_b[5];
			
subject to scene9: 
	z <= 
		-y_a + (1/match_odds)*y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		+ (set_odds)*x_a[4]  - x_b[4] 
		- x_a[5]  + (1/set_odds)*x_b[5];
		
subject to scene10: 
	z <= 
		-y_a + (1/match_odds)*y_b
		+ (set_odds)*x_a[1] - x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4];
		
subject to scene11: 
	z <= 
		+(match_odds)*y_a - y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		+ (set_odds)*x_a[4] - x_b[4] ;
	
subject to scene12: 
	z <= 
		+(match_odds)*y_a - y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4] 
		+ (set_odds)*x_a[5] - x_b[5] ;
				
subject to scene13: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4] 
		- x_a[5]  + (1/set_odds)*x_b[5] ;	
				
subject to scene14: 
	z <= 
		+(match_odds)*y_a - y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		+ (set_odds)*x_a[4] - x_b[4] 
		+ (set_odds)*x_a[5] - x_b[5] ;
				
subject to scene15: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		+ (set_odds)*x_a[4] - x_b[4] 
		- x_a[5]  + (1/set_odds)*x_b[5] ;						
		
subject to scene16: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		+ (set_odds)*x_a[2] - x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4] ;
		
subject to scene17: 
	z <= 
		+(match_odds)*y_a - y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		+ (set_odds)*x_a[4] - x_b[4] 
		+ (set_odds)*x_a[5] - x_b[5] ;
		
subject to scene18: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		+ (set_odds)*x_a[4] - x_b[4] 
		- x_a[5]  + (1/set_odds)*x_b[5] ;		
		
subject to scene19: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		+ (set_odds)*x_a[3] - x_b[3] 
		- x_a[4]  + (1/set_odds)*x_b[4] ;		
		
subject to scene20: 
	z <= 
		-y_a + (1/match_odds)*y_b
		- x_a[1]  + (1/set_odds)*x_b[1] 
		- x_a[2]  + (1/set_odds)*x_b[2] 
		- x_a[3]  + (1/set_odds)*x_b[3] ;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
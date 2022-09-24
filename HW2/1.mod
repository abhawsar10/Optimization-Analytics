reset;

#variables
var soldiers>=0;
var trains>=0;

#objective function
maximize profit: 3*soldiers + 2*trains;

	
#constraints
subject to finishing_limit: 2*soldiers + trains <=100;
subject to carpentry_limit: soldiers + trains <=80;
subject to soldier_limit: soldiers <=40;


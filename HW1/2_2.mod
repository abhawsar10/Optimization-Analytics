set SCENS;
set VARS;

param ones{VARS};
param matrix {SCENS, VARS};
param bud;
param a;
param b;
param a_match;
param b_match;

var x{VARS} >= 0;
var w >= 0;

maximize profit: w;

subject to budget: sum{i in VARS} ones[i]*x[i] <= bud;

subject to scen{j in SCENS}: w <= sum{i in VARS} matrix[j, i]*x[i];
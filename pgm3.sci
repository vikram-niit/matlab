

x = 0:5:35;
y = [0 20 43 59 89 124 154 200];
h = 5;
x = 25/h + 1
velocityAt25seconds = (y(x + 1) - y(x - 1)) /(2* h) ;
accelerationAt25seconds = (y(x + 1) - (2 * y(x)) + y(x - 1))/(h^2)

x = 1;
velocityAt0seconds = (y(x + 1) - y(x)) /(h) ;


*Program name: Project1 is stored in C:\Computational Statistics\4th Quater\SAS\Project1.
Purpose:  Do loop and more on 3D plot.
Programmer: Chinki Rai
Date Written: 02th Nov 2017;

/* Set the graphics environment */
goptions reset=all border cback=white htitle=12pt; 

 /* Create the data set HAT */
data hat;
   do x=-5 to 5 by 0.25;
      do y=-5 to 5 by 0.25;
         z=sin(sqrt(x*x+y*y));
	    w=1/5;
         output;
      end;
   end;
run;

 /* Define a title for the plot */
title1 'Surface Plot of HAT Data Set';

 /* Create the plot */
proc g3d data=hat;
   plot y*x=z;
run;
quit;

proc g3d data=hat;
   plot y*x=w;
run;
quit;

/* rotate the picture to 25 degrees */
proc g3d data=hat;
   plot y*x=z 
           / rotate= -25;
run;
quit;

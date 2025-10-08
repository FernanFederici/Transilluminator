/*
    Code to build standoff for the transilluminator.
    
    Fernan Federici 2025 (CC BY 4.0; https://creativecommons.org/licenses/by/4.0/) 
 
*/


use <threadlib/threadlib.scad> //read https://github.com/adrianschlatter/threadlib to install the lib

////////////////////////////////////
//  Parameters  //

standoff_type= [25.4, 19.05, 9.5];
thread_h = standoff_type[2];// define here the standoff type 0=25,4, 1=19,05 and 2=9,5

standoff_d=7;
thread_ri = 3/2; // thread internal radius
stand_r=7/2;
thread_size = "M3x0.5"; //  thread.
specs = thread_specs(str(thread_size, "-ext"));
pitch = specs[0];
turns = thread_h/pitch - 1; // 
corr=0.5;//correction


//these versions are scaled for better fit with the M3s
standoff();
module standoff(){
      difference(){
                //internal cylinder space
                 color("grey") cylinder(h=thread_h, r=stand_r, $fn=6, center =false);
          %scale([1.2,1.2,1]) tap(thread_size, turns=turns+corr);

            }}              
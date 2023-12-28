//
// Azudokei v 1.0
//

$fn=50;

height = 17;
width = 19;
thick = 1.5;

translate([1,1,1]) {

difference() {

union () {

// BASE
difference () {
    union () {
        hull () {
            sphere(d=2);
            translate ([width-2,0,0]) {sphere(d=2);}
            translate ([0,width-2,0]) {sphere(d=2);}
        }
        translate ([6.5,6.5,0]) {
            minkowski () {
                cylinder(h=0.000001,r=6);
                sphere(d=2);
            }
        }
    }
  translate ([7,7,-2]) {
       cylinder(h=4,d=3.5);
   }
}

// SIDE A
hull () {
    sphere(d=2);
    translate ([width-2,0,0]) {sphere(d=2);}
    translate ([0,0,height-2]) {sphere(d=2);}
}

// SIDE B
hull () {
    sphere(d=2);
    translate ([0,width-2,0]) {sphere(d=2);}
    translate ([0,0,height-2]) {sphere(d=2);}
}

}

// DIFF
translate ([0.25,0.25,0.25]) {cube([20,20,20]);}

}

}
//
// Azudokei v 1.0
//

$fn=50;

height = 17;
width = 19;
thick = 1.5;

difference() {

union () {

// BASE
difference () {
    union () {
        hull () {
            sphere(d=2);
            translate ([width,0,0]) {sphere(d=2);}
            translate ([0,width,0]) {sphere(d=2);}
        }
        translate ([7,7,0]) {
            minkowski () {
                cylinder(h=0.000001,r=7);
                sphere(d=2);
            }
        }
    }
  translate ([8,8,-2]) {
       cylinder(h=4,d=3.5);
   }
}

// SIDE A
hull () {
    sphere(d=2);
    translate ([width,0,0]) {sphere(d=2);}
    translate ([0,0,height]) {sphere(d=2);}
}

// SIDE B
hull () {
    sphere(d=2);
    translate ([0,width,0]) {sphere(d=2);}
    translate ([0,0,height]) {sphere(d=2);}
}

}

// DIFF
cube([20,20,20]);

}
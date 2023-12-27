//
// Azudokei v 1.0
//

$fn=50;

height = 17;
width = 19;
thick = 1.5;

hole_dia = 3;
washer_dia = 5.5;
overhang_width = 13;


union () {
    
// BASE -> polygon + minkovsky's sphere
hull () {
    sphere(d=1);
    translate ([width,0,0]) {sphere(d=1);}
    translate ([0,width,0]) {sphere(d=1);}
}

// SIDE A
hull () {
    sphere(d=1);
    translate ([width,0,0]) {sphere(d=1);}
    translate ([0,0,height]) {sphere(d=1);}
}

// SIDE B
hull () {
    sphere(d=1);
    translate ([0,width,0]) {sphere(d=1);}
    translate ([0,0,height]) {sphere(d=1);}
}

}
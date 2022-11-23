/*
Copyright by Pär Moberg

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <https://www.gnu.org/licenses/>.
*/

$fn = $preview ? 36 : 180;
rotate([0,-90,0])
difference(){
  union(){
    hull(){
      translate([-21,-20,-1.5]) cube([41,40,23]);
      translate([-30,-15,0]) cube([10,30,21.5]);
    }
    hull(){
      translate([-30,-15,0]) cube([1,30,30]);
      translate([-21,-20,0]) cube([1,40,20+1.5]);
    }
    translate([-40,-15,0]) cube([10,30,30]);
  }
  intersection(){
    translate([0,0,19]) cylinder(d=38,h=10);
    union(){
      translate([-20,-20,19]) cube([20,40,20]);
      translate([-20,-20,21.4]) cube([40,40,20]);
    }
  }
  difference(){
    hull(){
      translate([0,0,21.4]) cylinder(d=38,h=0.1);
      translate([-21,-19,0]) cube([0.1,38,19]);
    }
      translate([-40,-20,19]) cube([40,40,20]);
  }
  
  hull(){
    translate([-21,-19,0]) cube([0.1,38,19]);
    translate([-30,0,15])rotate([0,-90,0]) rotate([0,0,180/8])
      cylinder(d=26/cos(180/8),h=0.1,$fn=8);
  }
  translate([-30,0,15]) rotate([0,-90,0]) rotate([0,0,180/8])
    cylinder(d=26/cos(180/8),h=20,$fn=8);
  for(i=[90:90:360]) rotate([0,0,i]) translate([16,16,10]) cylinder(d=2.8,h=40);
  translate([-30,0,15]) rotate([0,-90,0]) for(i=[90:90:360]) rotate([0,0,i])
    translate([24.3/2,24.3/2,0]) cylinder(d=2.8,h=20);
}

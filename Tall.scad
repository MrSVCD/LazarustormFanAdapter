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

/* Set center to false to make a fan adapter with 30mm side set to the side.
   Rotate the print for left or right side version.
   Set center to true for a centered to one side version. This version might
   look more pleasing if used on inlet side of the Lazarustorm case.
*/
center=false;

$fn = $preview ? 36 : 180;
offset_y = center ? 3.5 : 0;
hightmulti=1.5;
difference(){
  union(){
    translate([1.5,1.5+offset_y,0]) cube([30,30,11*(hightmulti+1)]);
    hull(){
      cube([40,40,11]);
      translate([1.5,1.5+offset_y,0]) cube([30,30,11*hightmulti]);
    }
  }
  hull(){
    translate([16.5,16.5+offset_y,11*(hightmulti)]) rotate([0,0,180/8])
      cylinder(h=0.01,d=26/cos(180/8),$fn=8);
    translate([20,20,-1]) cylinder(h=1,d=38);
  }
  translate([16.5,16.5+offset_y,11*(hightmulti)]) rotate([0,0,180/8])
    cylinder(h=11*(hightmulti+1.5),d=26/cos(180/8),$fn=8);

  translate([20,20,0]) for(i=[90:90:360])
    rotate([0,0,i]) translate([16,16,-1]) cylinder(h=11,d=2.8);

  translate([16.5,16.5+offset_y,11*hightmulti]) for(i=[90:90:360])
    rotate([0,0,i]) translate([24/2,24/2,1]) cylinder(h=11,d=2.8);
}
#!/bin/bash
openscad -o "Inlet Flat.stl" "Flat.scad"
openscad -o "Tall Side.stl" "Tall.scad"
openscad -D 'center=true' -o "Inlet Tall Center.stl" "Tall.scad"
zip -9 LazarustormFanAdapter.zip *.stl *.scad Readme.md LICENSE Build.sh

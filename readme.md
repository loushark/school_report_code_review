SchoolReport
============
````
Grading criteria:
Green
Amber
Red

A school submits grades in a strnig format
e.g. "Green, Amber, Green, Red"

The school would like a report printed in the following format:
"Green: 2,\nAmber: 1,\nRed: 1"
````


input                 |      output
----------------------|-----------------------------------
"Green"               |   "Green: 1"
"Amber"               |   "Amber: 1"
"Red"                 |   "Red: 1"
"Green, Green"        |   "Green: 2"
"Amber, Amber"        |   "Amber: 2"
"Red, Red"            |   "Red: 2"
"Green, Amber, Red"   |   "Green: 1,\nAmber: 1,\nRed: 1"
"Green, Green, Amber" |   "Green: 2,\nAmber: 1,\nRed: 0"

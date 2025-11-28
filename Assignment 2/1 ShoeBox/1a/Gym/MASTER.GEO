;CATT-Acoustic v9.1 – Task 1(a) GymHall
;MASTER.GEO

;constant declarations
LOCAL  h  = 7      ;hall height
LOCAL  w  = 15     ;hall width
GLOBAL d  = 24     ;hall depth

;absorption and scattering coefficients 125Hz..4kHz [%]
ABS hardlow   = <2 2 2 2 2 2>       L <1 1 1 1 1 1>
ABS ceilingHi = <60 60 60 60 60 60> L <1 1 1 1 1 1>

CORNERS
;floor corners
 1  -w/2   0   0
 2  -w/2   d   0
 3   w/2   d   0
 4   w/2   0   0
;ceiling corners
11  -w/2   0   h
12  -w/2   d   h
13   w/2   d   h
14   w/2   0   h

PLANES
[1 floor      / 4 3 2 1 / hardlow ]
[2 ceiling    / 11 12 13 14 / ceilingHi ]
[3 front wall / 1 11 14 4 / hardlow ]
[4 rear wall  / 3 13 12 2 / hardlow ]
[5 left wall  / 2 12 11 1 / hardlow ]
[6 right wall / 4 14 13 3 / hardlow ]

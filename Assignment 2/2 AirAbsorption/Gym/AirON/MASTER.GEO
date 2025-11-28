;CATT-Acoustic v9.1 – TTT4292 Task 1(a,b) Gym
;MASTER_GYM.GEO

;-------------------------------
; Geometric parameters
;-------------------------------
LOCAL  h  =  7        ; hall height [m]
LOCAL  w  = 15        ; hall width  [m]
GLOBAL d  = 24        ; hall depth  [m]

;-------------------------------
; Materials (absorption = fixed)
; Scattering variants for 1(a) and 1(b)
;-------------------------------

; ---- 1(a) default (very low scattering ~1%) ----
ABS hardlow_s01   = <2 2 2 2 2 2>   L <1 1 1 1 1 1>    ; floor + walls
ABS ceilingHi_s01 = <60 60 60 60 60 60> L <1 1 1 1 1 1> ; ceiling

; ---- 1(b) scattering variants (same absorption) ----
ABS hardlow_s10   = <2 2 2 2 2 2>   L <10 10 10 10 10 10>
ABS ceilingHi_s10 = <60 60 60 60 60 60> L <10 10 10 10 10 10>

ABS hardlow_s30   = <2 2 2 2 2 2>   L <30 30 30 30 30 30>
ABS ceilingHi_s30 = <60 60 60 60 60 60> L <30 30 30 30 30 30>

ABS hardlow_s50   = <2 2 2 2 2 2>   L <50 50 50 50 50 50>
ABS ceilingHi_s50 = <60 60 60 60 60 60> L <50 50 50 50 50 50>

ABS hardlow_s80   = <2 2 2 2 2 2>   L <80 80 80 80 80 80>
ABS ceilingHi_s80 = <60 60 60 60 60 60> L <80 80 80 80 80 80>

;-------------------------------
; Corners
;-------------------------------
CORNERS
; floor
 1  -w/2   0   0
 2  -w/2   d   0
 3   w/2   d   0
 4   w/2   0   0
; ceiling
11  -w/2   0   h
12  -w/2   d   h
13   w/2   d   h
14   w/2   0   h

;-------------------------------
; Planes
; For 1(a): use *_s01 materials (default below).
; For 1(b): swap to *_s10 / *_s30 / *_s50 / *_s80 consistently.
;-------------------------------
PLANES
[1 floor      / 4 3 2 1     / hardlow_s01   ]
[2 ceiling    / 11 12 13 14 / ceilingHi_s01 ]
[3 front wall / 1 11 14 4   / hardlow_s01   ]
[4 rear wall  / 3 13 12 2   / hardlow_s01   ]
[5 left wall  / 2 12 11 1   / hardlow_s01   ]
[6 right wall / 4 14 13 3   / hardlow_s01   ]

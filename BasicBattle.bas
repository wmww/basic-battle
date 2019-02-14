10 rem 0Tn./Z)]_;zi}m={2jeQ%JMUB[5x`Au@k$„\?I9|<a(Ht>EW1,~3glGq&!Kbf'Xd+cL^yVYSC4vƒ*‚:€hO#F6woNsrD"8-P7Rp
20 filename$ = "BasicBattle.bas"
30 typspd=30
40 debug = 0
45 dirnums = 1
50 print "starting..."
60 tnth = 0
70 tme = timer
80 if timer > tme then 100
90 goto 80
100 tme = timer
110 tnth = tnth+1
120 print chr$(32)chr$(8);
130 if timer = tme then 110
140 tnth = int((tnth+0.5)/typspd)
150 ttl$ = "Williams basic battle 2.4"
160 typ$ = ttl$
170 cls
180 goto 280
190 if debug = 1 then print typ$;
200 if debug = 1 then return
210 for chrprnt = 1 to len(typ$)
220 print mid$(typ$,chrprnt,1);
230 for tmecntr = 1 to tnth
240 print chr$(32)chr$(8);
250 next tmecntr
260 next chrprnt
270 return
280 gosub 190
290 print
300 print
310 typ$ = "                           "
320 gosub 190
330 dim arna(11,11)
340 dim rndm(100)
350 print
360 print "the following error may be due to to file name of the program being changed. rename the program to 'BasicBattle.bas' or change the second line of the program to the current file name (make sure to include the file exstension)."
370 open filename$ for input as #0
380 cls
390 print ttl$
400 for i = 1 to 7
410 abc = fgetbyte(0)
420 next i
430 for i = 0 to 99
440 rndm(i) = fgetbyte(0)-33
450 next i
455 close #0
460 p1x = 20
470 p1y = 20
480 p2x = 20
490 p2y = 20
500 gosub 790
510 typ$ = "enter your start location:   "
520 gosub 190
530 print
540 print "x=";
550 input p1x
560 print "y=";
570 input p1y
580 gosub 790
590 p1sc = rndm(((p1x-1)*10)+p1y-1)
600 typ$ = "your start code is    "
610 gosub 190
620 print chr$(8)chr$(8)chr$(8);
630 print p1sc
640 typ$ = "   "
650 gosub 190
660 print
670 typ$ = "enter other start code:"
680 gosub 190
690 input p2sc
700 print
710 for i = 0 to 99
720 if rndm(i) = p2sc then p2sn = i
730 next i
740 p2x = int(p2sn/10)+1
750 p2y = (p2sn+10)-(p2x*10)+1
760 p1seed = ((p1x-1)*10)+p1y-1
770 p2seed = ((p2x-1)*10)+p2y-1
780 goto 1220
790 rem display ******************************************
800 print
810 if debug = 0 then cls
820 print "1 2 3 4 5 6 7 8 9 10"
830 print chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(194)chr$(196)chr$(191)
840 for i = 1 to 10
850 for j = 1 to 10
860 pxl$ = " "
870 if dirnums=1 and p1x = j+1 and p1y = i-1 then pxl$ = "1" ' movement directer
880 if dirnums=1 and p1x = j and p1y = i-1 then pxl$ = "2" ' movement directer
890 if dirnums=1 and p1x = j-1 and p1y = i-1 then pxl$ = "3" ' movement directer
900 if dirnums=1 and p1x = j+1 and p1y = i then pxl$ = "4" ' movement directer
910 if dirnums=1 and p1x = j-1 and p1y = i then pxl$ = "6" ' movement directer
920 if dirnums=1 and p1x = j+1 and p1y = i+1 then pxl$ = "7" ' movement directer
930 if dirnums=1 and p1x = j and p1y = i+1 then pxl$ = "8" ' movement directer
940 if dirnums=1 and p1x = j-1 and p1y = i+1 then pxl$ = "9" ' movement directer
960 if arna(i-1,j+1) = 2 then pxl$ = chr$(192)' senser corner
970 if arna(i+1,j+1) = 2 then pxl$ = chr$(218)' senser corner
980 if arna(i-1,j-1) = 2 then pxl$ = chr$(217)' senser corner
990 if arna(i+1,j-1) = 2 then pxl$ = chr$(191)' senser corner
1000 if arna(i,j) = 2 then pxl$ = "+" ' deactivated senser
1005 if arna(i,j) = 1 then pxl$ = chr$(15)' bomb
1010 if arna(i,j) = 2 and i+1 = p2y and j+1 = p2x then pxl$ = chr$(219)' senser checker
1020 if arna(i,j) = 2 and i-1 = p2y and j+1 = p2x then pxl$ = chr$(219)' senser checker
1030 if arna(i,j) = 2 and i+1 = p2y and j-1 = p2x then pxl$ = chr$(219)' senser checker
1040 if arna(i,j) = 2 and i-1 = p2y and j-1 = p2x then pxl$ = chr$(219)' senser checker
1050 if arna(i,j) = 2 and i = p2y and j+1 = p2x then pxl$ = chr$(219)' senser checker
1060 if arna(i,j) = 2 and i = p2y and j-1 = p2x then pxl$ = chr$(219)' senser checker
1070 if arna(i,j) = 2 and i+1 = p2y and j = p2x then pxl$ = chr$(219)' senser checker
1080 if arna(i,j) = 2 and i-1 = p2y and j = p2x then pxl$ = chr$(219)' senser checker
1090 if arna(i,j) = 2 and i = p2y and j = p2x then pxl$ = chr$(219)' senser checker
1100 if p1x = j and p1y = i then pxl$ = chr$(2)' player
1110 if p2x = j and p2y = i and debug = 1 then pxl$ = chr$(1)' player 2 (debug only)
1120 print pxl$;
1130 print chr$(179);
1140 next j
1150 print i
1160 print chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(197)chr$(196)chr$(180)
1170 if i = 10 then print chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(193)chr$(196)chr$(217)
1180 next i
1190 print
1200 return
1210 rem start of main loop ++++++++++++++++++++++++++++++++++++++
1220 typ$ = "enter action:"
1230 gosub 190
1240 input p1actn$
1250 print
1260 typ$ = chr$(39)+p1actn$+chr$(39)+" is an invalid action. valid actions are:"+chr$(10)+chr$(10)+"s or / - senser"+chr$(10)+"b or * - bomb"+chr$(10)+"m or - - missle"+chr$(10)+"n or 0 - none"
1270 vldactn = 0
1280 if p1actn$ = "b" or p1actn$ = "*" then arna(p1y,p1x) = 1
1290 if p1actn$ = "b" or p1actn$ = "*" then typ$ = "bomb deployed"
1300 if p1actn$ = "b" or p1actn$ = "*" then vldactn = 1
1310 if p1actn$ = "s" or p1actn$ = "/" then arna(p1y,p1x) = 2
1320 if p1actn$ = "s" or p1actn$ = "/" then typ$ = "senser activated"
1330 if p1actn$ = "s" or p1actn$ = "/" then vldactn = 1
1340 if p1actn$ = "m" or p1actn$ = "-" then goto 1420
1350 if p1actn$ = "n" or p1actn$ = "0" then typ$ = "no action taken"
1360 if p1actn$ = "n" or p1actn$ = "0" then vldactn = 1
1370 gosub 190
1380 print
1390 if vldactn = 0 then print
1400 if vldactn = 0 then goto 1220
1410 goto 1560
1420 typ$ = "enter missle target location:"
1430 gosub 190
1440 print
1450 print "x=";
1460 input mslx
1470 print "y=";
1480 input msly
1500 if mslx = p2x and msly = p2y then typ$ = "missle destroyed enemy. YOU WIN!!!"
1510 if mslx <> p2x or msly <> p2y then typ$ = "missle failed to hit the enemy"
1520 print
1530 gosub 190
1540 if mslx = p2x and msly = p2y then goto 2210
1550 print
1560 print
1570 typ$ = "enter movement direction:"
1580 gosub 190
1590 input p1mv
1600 if p1mv = 1 then p1x = p1x-1
1610 if p1mv = 1 then p1y = p1y+1
1620 if p1mv = 2 then p1y = p1y+1
1630 if p1mv = 3 then p1x = p1x+1
1640 if p1mv = 3 then p1y = p1y+1
1650 if p1mv = 4 then p1x = p1x-1
1660 if p1mv = 6 then p1x = p1x+1
1670 if p1mv = 7 then p1y = p1y-1
1680 if p1mv = 7 then p1x = p1x-1
1690 if p1mv = 8 then p1y = p1y-1
1700 if p1mv = 9 then p1x = p1x+1
1710 if p1mv = 9 then p1y = p1y-1
1720 if p1x > 10 then p1x = 10
1730 if p1x < 1 then p1x = 1
1740 if p1y > 10 then p1y = 10
1750 if p1y < 1 then p1y = 1
1760 gosub 790
1770 p1mc = rndm(p1seed)+p1mv
1780 goto 1800
1790 p1mc = p1mc-9
1800 if p1mc > 9 then goto 1790
1810 typ$ = "your multyplayer code is "
1820 gosub 190
1830 print p1mc
1840 print
1850 typ$ = "enter other multyplayer code:"
1860 gosub 190
1880 input p2mc
1890 print
1900 p2mv = p2mc-rndm(p2seed)
1903 p1seed=p1seed+1
1905 if p1seed>99 then p1seed=1
1907 p2seed=p2seed+1
1909 if p2seed>99 then p2seed=1
1910 goto 1930
1920 p2mv = p2mv+9
1930 if p2mv < 1 then goto 1920
1940 if p2mv = 1 then p2x = p2x-1
1950 if p2mv = 1 then p2y = p2y+1
1960 if p2mv = 2 then p2y = p2y+1
1970 if p2mv = 3 then p2x = p2x+1
1980 if p2mv = 3 then p2y = p2y+1
1990 if p2mv = 4 then p2x = p2x-1
2000 if p2mv = 6 then p2x = p2x+1
2010 if p2mv = 7 then p2y = p2y-1
2020 if p2mv = 7 then p2x = p2x-1
2030 if p2mv = 8 then p2y = p2y-1
2040 if p2mv = 9 then p2x = p2x+1
2050 if p2mv = 9 then p2y = p2y-1
2060 if p2x > 10 then p2x = 10
2070 if p2x < 1 then p2x = 1
2080 if p2y > 10 then p2y = 10
2090 if p2y < 1 then p2y = 1
2100 gosub 790
2105 print "your multyplayer code is " p1mc
2106 print
2107 print "enter other multyplayer code:? " p2mc
2110 if debug = 1 then print "other player is at (" p2x "," p2y ")" chr$(10)"other player's last move was " p2mv
2115 print
2130 if arna(p2y,p2x) = 1 then typ$ = "enamy hit one of your bombs. YOU WIN!!!"
2140 if arna(p2y,p2x) = 1 then gosub 190
2150 if arna(p2y,p2x) = 1 then goto 2210
2170 if p2x = p1x and p2y = p1y then typ$ = "you and the enamy colided. it's a tie!"
2180 if p2x = p1x and p2y = p1y then gosub 190
2190 if p2x = p1x and p2y = p1y then goto 2210
2200 goto 1210
2210 print
2220 print
2230 input ext
2280 print
2290 exit

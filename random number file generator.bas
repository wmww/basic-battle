1 rem This was used to generate the random comment at the start of the file
2 rem Why I choose to seed the random number generator this way is lost to history
10 input a$
15 a=asc(a$)-48
20 randomize a
25 dim c(100)
30 for i = 1 to 100
40 b = rnd(100)
41 bln=0
42 for j=1 to i-1
43 if c(j)=b then bln=1
44 next j
45 if bln=1 then goto 40
46 c(i)=b
50 print c(i)
60 next i
70 open "random numbers seeded with "+a$+".txt" for output as #2
80 for i=1 to 100
83 print
90 fputbyte (c(i)+33), #2
100 next i
110 close #2

5    *KEY10 OLD¦M RUN ¦M
10   MODE 9 : VDU 23; 8202;0;0;0;:VDU 19, 0, 4, 0, 0, 0:HI%=300
15   ENVELOPE 1, 131, 0, 0, 0, 0, 0, 0, 126, -3, 0, 0, 126, 0:PROCIN
20   VDU 23, 224, 255, 8, 31, 63, 63, 30, 76, 63, 23, 225, 128, 0, 197, 254, 133, 0, 128, 0, 23, 226, 1, 0, 163, 127, 162, 0, 1, 0, 23, 227, 255, 16, 248, 252, 252, 120, 50, 252, 23, 236, 72, 1, 148, 1, 19, 134, 16, 66,
25   VDU 23, 237, 65, 8, 34, 144, 192, 137, 32, 130,
30   VDU 23, 228, 0, 1, 7, 31, 63, 127, 255, 255
35   VDU 23, 229, 63, 255, 255, 255, 255, 255, 255, 255, 23, 230, 128, 240, 252, 254, 255, 255, 255, 255, 23,231, 0, 12, 62, 127, 255, 254, 252, 248, 23, 232, 255, 127, 63, 31, 7, 1, 0, 0, 23, 233, 255, 255, 255, 255, 255, 255, 63, 63,
40   VDU 23, 234, 255, 255, 255, 254, 252, 240, 128, 0
45   VDU 23, 235, 252, 254, 255, 127, 62, 12, 0, 0, 23, 238, 0, 1, 7, 15, 31, 63, 127, 127, 23, 239, 0, 128, 224, 240, 248, 252, 254, 254, 23, 240, 127, 255, 255, 255, 127, 127, 127, 63, 23, 241, 254, 255, 255, 255, 254, 254, 254, 252,
50   VDU 23, 242, 31, 15, 7, 1, 0, 0, 1, 1
55   VDU 23, 243, 248, 240, 224, 128, 0, 0, 128, 128, 23, 244, 0, 48, 124, 254, 255, 127, 63, 31, 23, 245, 1, 15, 63, 127, 255, 255, 255, 255, 23, 246, 252, 255, 255, 255, 255, 255, 255, 255, 23, 247, 0, 128, 224, 248, 252, 254, 255, 255,
60   VDU 23, 248, 63, 127, 255, 254, 124, 48, 0, 0
65   VDU 23, 249, 255, 255, 255, 127, 63, 15, 1, 0, 23, 250, 255, 255, 255, 255, 255, 255, 252, 252, 23, 251, 255, 254, 252, 248, 224, 128, 0, 0, 23, 252, 24, 60, 126, 126, 126, 126, 60, 24, 23, 253, 0, 0, 128, 255, 127, 63, 31, 15,
70   VDU 23, 254, 126, 126, 255, 255, 255, 255, 255, 255
75   VDU 23, 255, 0, 0, 1, 255, 254, 252, 248, 240
80   A$=CHR$(224)+CHR$(225):B$=CHR$(226)+CHR$(227):C$=CHR$(236)+CHR$(237):D$=CHR$(228)+CHR$(229)+CHR$(230)+CHR$(231):E$=CHR$(232)+CHR$(233)+CHR$(234)+CHR$(235):F$=CHR$(238)+CHR$(239):G$=CHR$(240)+CHR$(241)
81   H$=CHR$(242)+CHR$(243)
85   I$=CHR$(244)+CHR$(245)+CHR$(246)+CHR$(247) : J$=CHR$(248)+CHR$(249)+CHR$(250)+CHR$(251) : K$=CHR$(252) : L$=CHR$(253)+CHR$(254)+CHR$(255)
90   CLG : LI%=3 : SC%=0
95   Z%=0 : R1%=0 : R2%=0 : R3%=0 : R4%=0 : R5%=0 : R6%=0 : A1%=1 : C1%=1 : E1%=1 : X1%=1 : U1%=1 : S1%=1 : G1%=1 : G2%=10 : B1%=1 : D1%=1 : F1%=1 : Y1%=1 : V1%=1 : T1%=1
100  G%=10 : A%=RND(25)+1 : B%=21 : C%=RND(34)+1 : D%=4 : E%=RND(34)+1 : F%=11 : X%=RND(34)+1 : Y%=23 : U%=RND(34)+1 : V%=7 : S%=15 : T%=16
110  REPEAT
115   MOVE 0, 95 : DRAW 1280, 95
120   COLOUR 1 : PRINTTAB(2,1); "LIVES="; LI% : COLOUR 3 : PRINTTAB(13,1); "SCORE="; SC%: COLOUR 2 : PRINTTAB(26,1); "HI-SCORE=";HI%
130   PROCGUNM : PROCZLM : PROCZRM : PROCBILM : PROCBIRM : PROCBLM : PROCBRM : PROCA : PROCB
140   IF INKEY(-74) AND Z%=0 AND G%>1 THEN G1%=G% : G2%=27 : Z%=1 : SOUND 3,-15,7,1
145   REM RETURN
150   IF RND(5)=3 AND R1%=0 AND D%=4 THEN C1%=C% : D1%=D% : R1%=1
160   IF RND(5)=3 AND R2%=0 AND V%=7 THEN U1%=U% : V1%=V% : R2%=1
170   IF RND(5)=3 AND R3%=0 AND F%=11 THEN E1%=E% : F1%=F% : R3%=1
180   IF RND(5)=3 AND R4%=0 AND T%=16 THEN S1%=S% : T1%=T% : R4%=1
190   IF RND(5)=3 AND R5%=0 AND Y%=23 THEN X1%=X% : Y1%=Y% : R5%=1
200   IF RND(5)=3 AND R6%=0 AND B%=21 THEN A1%=A% : B1%=B% : R6%=1
210   IF Z%=1 THEN PROCFIRE
220   COLOUR 1
230   IF R1%=1 THEN PRINTTAB(C1%,D1%); " " : D1%=D1%+1 : PRINTTAB(C1%,D1%); K$
240   IF R2%=1 THEN PRINTTAB(U1%,V1%); " " : V1%=V1%+2 : PRINTTAB(U1%,V1%); K$
250   IF R3%=1 THEN PRINTTAB(E1%,F1%); " " : F1%=F1%+2 : PRINTTAB(E1%,F1%); K$
260   IF R4%=1 THEN PRINTTAB(S1%,T1%); " " : T1%=T1%+1 : PRINTTAB(S1%,T1%); K$
270   IF R5%=1 THEN PRINTTAB(X1%,Y1%); " " : Y1%=Y1%+2 : PRINTTAB(X1%,Y1%); K$
280   IF R6%=1 THEN PRINTTAB(A1%,B1%); " " : B1%=B1%+1 : PRINTTAB(A1%,B1%); K$
290   IF G2%=2 THEN Z%=0 : PRINTTAB(G1%+2, G2%); " "
300   IF D1%=29 THEN R1%=0 : PRINTTAB(C1%, D1%); " "
310   IF V1%=29 THEN R2%=0 : PRINTTAB(U1%, V1%); " "
320   IF F1%=29 THEN R3%=0 : PRINTTAB(E1%, F1%); " "
330   IF T1%=29 THEN R4%=0 : PRINTTAB(S1%, T1%); " "
340   IF Y1%=29 THEN R5%=0 : PRINTTAB(X1%, Y1%); " "
350   IF B1%=29 THEN R6%=0 : PRINTTAB(A1%, B1%); " "
360  UNTIL 0
370  DEFPROCGUNM
380  PRINTTAB(G%,28); " "; L$; " "
390  IF G%=34 THEN PRINTTAB(G%, 28); "    " : G%=1
400  IF G%=0 THEN PRINTTAB(G%, 28); "    " : G%=34
410  IF INKEY(-26)THEN G%=G%-1
411  REM Left arrow
415  IF INKEY(-122)THEN G%=G%+1
416  REM Right arrow
420  ENDPROC
430  DEFPROCZLM
440  COLOUR 1 : PRINTTAB(C%, D%); D$; " "; TAB(C%, D%+1); E$; " ":C%=C%-1
450  IF C%=0 THEN PRINTTAB(C%,D%); "     "; TAB(C%, D%+1); "     ":C%=36
460  COLOUR 3 : ENDPROC
470  DEFPROCZRM
480  VDU 19, 3, 2, 0, 0, 0
490  PRINTTAB(U%, V%); " "; I$; TAB(U%, V%+1); " "; J$:U%=U%+1
500  IF U%=36 THEN PRINTTAB(U%, V%); "     "; TAB(U%, V%+1); "     ":U%=0
510  COLOUR 2 : ENDPROC
520  DEFPROCBILM
530  COLOUR 3 : PRINTTAB(A%, B%); A$; " " A%=A% - 1
540  IF A%=1 THEN PRINTTAB(A%, B%); "   ":A%=36
550  COLOUR 2 : ENDPROC
560  DEFPROCBIRM
570  PRINTTAB(X%, Y%); " "; B$ : X%=X%+1 : IF X%=36 THEN PRINTTAB(X%, Y%); "    " : X%=0
580  ENDPROC
590  DEFPROCBLM
600  PRINTTAB(E%, F%); F$; " "; TAB(E%, F%+1); G$; " "; TAB(E%, F%+2); H$; " ":E%=E% - 1
610  IF E%=0 THEN PRINTTAB(E%, F%); "    "; TAB(E%, F%+1); TAB(E%, F%+2); "    ":E%=36
620  ENDPROC
630  DEFPROCBRM
640  COLOUR 1 : PRINTTAB(S%,T%); " " ; F$; TAB(S%, T%+1); " "; G$; TAB(S%, T%+2); " "; H$ : S%=S%+1
650  IF S%=36 THEN PRINTTAB(S%, T%); "    "; TAB(S%,T%+1); " "; TAB(S%,T%+2); " " : S%=0
660  COLOUR 3 : ENDPROC
670  DEFPROCFIRE
680  COLOUR 3 : PRINTTAB(G1%+2, G2%); " " : G2%=G2%-1
690  PRINTTAB(G1%+2, G2%); K$ : COLOUR 2
700  ENDPROC
710  DEFPROCB
720  IF A1% > G% AND A1% < G%+4 AND B1%=27 AND R6%=1 THEN GOTO 930
730  IF C1% > G% AND C1% < G%+4 AND D1%=27 AND R1%=1 THEN GOTO 930
740  IF E1% > G% AND E1% < G%+4 AND F1%=27 AND R2%=1 THEN GOTO 930
750  IF X1% > G% AND X1% < G%+4 AND Y1%=27 AND R5%=1 THEN GOTO 930
760  IF U1% > G% AND U1% < G%+4 AND V1%=27 AND R2%=1 THEN GOTO 930
770  IF S1% > G% AND S1% < G%+4 AND T1%=27 AND R4%=1 THEN GOTO 930
780  ENDPROC
790  DEFPROCA
800   IF G1% > C% - 2 AND G1% < C%+4 AND G2%=5 THEN PROCHITZL
810   IF G1% > C% - 2 AND G1% < C%+4 AND G2%=4 THEN PROCHITZL
820   IF G1% > E% - 2 AND G1% < E%+2 AND G2%=11 THEN PROCHITBL
830   IF G1% > E% - 2 AND G1% < E%+2 AND G2%=12 THEN PROCHITBL
840   IF G1% > E% - 2 AND G1% < E%+2 AND G2%=13 THEN PROCHITBL
850   IF G1% > A% - 2 AND G1% < A%+2 AND G2%=21 THEN PROCHITBIL
860   IF G1%+2 > X% - 2 AND G1%+2 < X%+3 AND G2%=23 THEN PROCHITBIR
870   IF G1%+2 > S% - 2 AND G1%+2 < S%+3 AND G2%=16 THEN PROCHITBR
880   IF G1%+2 > S% - 2 AND G1%+2 < S%+3 AND G2%=17 THEN PROCHITBR
890   IF G1%+2 > S% - 2 AND G1%+2 < S%+3 AND G2%=18 THEN PROCHITBR
900   IF G1%+2 > U% - 2 AND G1%+2 < U%+4 AND G2%=7 THEN PROCHITZR
910   IF G1%+2 > U% - 2 AND G1%+2 < U%+4 AND G2%=8 THEN PROCHITZR
920  ENDPROC
930  SOUND 0, 1, 6, 100 : PRINTTAB(G% - 1, 28); C$; C$; C$; TAB(G%, 27); "    "; TAB(G% - 1, 26); "     "
940  LI%=LI% - 1
950  FOR F=1 TO 200 : NEXT F : PRINTTAB(G% - 1, 28); "       " : FOR T=1 TO 3000 : NEXT T : IF LI%=0 THEN GOTO 1260
955  CLG : GOTO 95
960  DEFPROCHITZL
970   SC%=SC%+50 : PRINTTAB(C%, D%); " "; C$; C$; " "; TAB(C%, D%+1 ); " "; C$; C$; " " : SOUND 0, -15, 4, 2
980   FOR F=1 TO 100 : NEXT F
990   PRINTTAB(C%, D%); "     " ; TAB(C%, D%+1); "     ":C%=36:G2%=3
1000 ENDPROC
1010 DEFPROCHITBL
1020 SC%=SC%+20 : PRINTTAB(E%, F%); " "; C$; " "; TAB(E%, F%+1); " "; C$; " "; TAB(E%, F%+2); " " C$; " " : SOUND 0, -15, 4, 2
1030 FOR F=1 TO 100 : NEXT F
1040 PRINTTAB(E%, F%); "     "; TAB(E%, F%+1); "     "; TAB(E%, F%+2); "     ":E%=36:G2%=3
1050 ENDPROC
1060 DEFPROCHITBIL
1070 SC%=SC%+10 : PRINTTAB(A%, B%); " "; C$ : SOUND 0, -15, 4, 2
1080 FOR F=1 TO 100 : NEXT F
1090 PRINTTAB(A%, B%); "     ":A%=36:G2%=3
1100 ENDPROC
1110 DEFPROCHITBIR
1120 SC%=SC%+5:PRINTTAB(X%, Y%); " "; C$: SOUND 0, -15, 4, 2
1130 FOR F=1 TO 100 : NEXT F
1140 PRINTTAB(X%, Y%); "    ":X%=1: G2%=3
1150 ENDPROC
1160 DEFPROCHITBR
1170 SC%=SC%+15 : PRINTTAB(S%, T%); " "; C$; TAB(S%, T%+1); " "; C$; TAB(S%, T%+2); " "; C$: SOUND 0, -15, 4, 2
1180 FOR F=1 TO 100 : NEXT F
1190 PRINTTAB(S%, T%); "    " ; TAB(S%, T%+1); "    "; TAB(S%, T%+2); "    " : G2%=3:S%=1
1200 ENDPROC
1210 DEFPROCHITZR
1220 SC%=SC%+25 : PRINTTAB(U%, V%); C$; C$; " "; TAB(U%, V%+1); C$; C$; " " : SOUND 0, -15, 4, 2
1230 FOR F=1 TO 100 : NEXT F
1240 PRINTTAB(U%, V%); "    "; TAB(U%, V%+1); "    " : G2%=3 : U%=1
1250 ENDPROC
1260 CLS : PRINTTAB(12, 6); "G A M E  O V E R"
1270 PRINTTAB(12, 7); "________________"
1280 COLOUR 1 : PRINTTAB(11, 12); "YOUR SCORE WAS "; SC% : COLOUR 2
1290 IF SC%>HI% THEN PRINTTAB(8,15); "THAT IS A NEW HIGH SCORE" : HI%=SC%
1300 COLOUR 3 : PRINTTAB(5, 20); "PRESS SPACE BAR TO PLAY AGAIN."
1310 PRINTTAB(5,21); "______________________________"
1315 RESTORE : FOR T=1 TO 11 : READ D, P : SOUND 1, -15, P, D : SOUND 1, 0, 0, 1 : NEXT
1317 DATA 12, 5, 8, 5, 4, 5, 12, 5, 8, 17, 4, 13, 8, 13, 4, 5, 8, 5, 4, 1, 12, 5
1320 IF INKEY(-99)THEN GOTO 90 ELSE GOTO 1320
1325 REM Spacebar
1330 DEFPROCIN
1340 COLOUR 1 : PRINTTAB(14, 2); "WORLDWAR 1"
1350 PRINTTAB(14, 3); "__________" : COLOUR 3
1360 PRINTTAB(8, 6); "In this game you are a ship at the bottom of the screen being shot at by enemy fire. There are biplanes, hot air balloons and airships shooting and you must blow them up before they blow you up."
1365 PRINTTAB(9, 12); "The higher up the enemy is the more points you get."
1370 COLOUR 1 : PRINTTAB(8, 16); "USE THE FOLLOWING KEYS" : COLOUR 2 : PRINTTAB(16, 20); "LEFTARROW =LEFT"; TAB(16, 22); "RIGHTARROW=RIGHT"; TAB(14, 24); "RETURN=FIRE" : COLOUR 1
1380 PRINTTAB(7, 29); "PRESS SPACE BAR TO START"
1390 PRINTTAB(7, 30); "________________________"
1400 IF INKEY(-99)THEN ENDPROC ELSE GOTO 1510
1405 REM Spacebar
1510 IF INKEY(-99)THEN ENDPROC ELSE GOTO 1510
1515 REM Spacebar

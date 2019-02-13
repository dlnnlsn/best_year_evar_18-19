prologues := 3;
outputtemplate := "senior_january_q%c.mps";

input ../../geometry.mp;
input latexmp;

u := 2cm;
textsize := 1.5pt;

verbatimtex
%&latex
\documentclass[12pt]{article}
\usepackage{amsmath,amssymb}
\begin{document}
etex 

pair A; A := (0, 5u);
pair B; B := (-3u, 0);
pair C; C := (4u, 0);

beginfig(1);

draw A--B--C--cycle;

pair P; P := 0.3 [B, C];
pair Q; Q := 0.4 [C, A];
pair R; R := 0.2 [A, B];

path GammaX; GammaX := circumcircle(A, R, Q);
path GammaY; GammaY := circumcircle(B, P, R);

draw GammaX;
draw GammaY;
draw circumcircle(C, Q, P);

pair X; X := circumcenter(A, R, Q);
pair Y; Y := circumcenter(B, P, R);
pair Z; Z := circumcenter(C, Q, P);

draw X--Y--Z--cycle;

pair O; O := cross(GammaX, GammaY);

draw R--O;
draw O--Q;
draw O--P;

pair D; D := 0.5 [R, O];
mark_rt_angle_withsize(O, D, X, 0.2u);

pair E; E := 0.5 [O, Q];
mark_rt_angle_withsize(X, E, O, 0.2u);

whitedotlabel.top(btex $A$ etex scaled textsize, A);
whitedotlabel.llft(btex $B$ etex scaled textsize, B);
whitedotlabel.lrt(btex $C$ etex scaled textsize, C);

whitedotlabel.lrt(btex $P$ etex scaled textsize, P);
whitedotlabel.rt(btex $Q$ etex scaled textsize, Q);
whitedotlabel.rt(btex $R$ etex scaled textsize, R);

whitedotlabel.rt(btex $X$ etex scaled textsize, X);
whitedotlabel.lft(btex $Y$ etex scaled textsize, Y);
whitedotlabel.bot(btex $Z$ etex scaled textsize, Z);

whitedotlabel.lrt(btex $O$ etex scaled textsize, O);

whitedotlabel.ulft(btex $D$ etex scaled textsize, D);
whitedotlabel.urt(btex $E$ etex scaled textsize, E);

endfig;

beginfig(8);

draw A--B--C--cycle;

path Omega; Omega := circumcircle(A, B, C);
draw Omega;

pair O; O := circumcenter(A, B, C);

pair P, Q;
P := O - (2u, 0.2u);
Q := O + (3u, 0.3u);

draw P--Q;

pair D;
D = whatever [B, C];
(P - D) = whatever * ((C - B) rotated 90);
draw P--D;

pair E;
E = whatever [C, A];
(P - E) = whatever * ((A - C) rotated 90);
draw P--E;

pair F;
F = whatever [A, B];
(P - F) = whatever * ((B - A) rotated 90);
draw P--F;

pair X;
X = whatever [B, C];
(Q - X) = whatever * ((C - B) rotated 90);
draw Q--X;

pair Y;
Y = whatever [C, A];
(Q - Y) = whatever * ((A - C) rotated 90);
draw Q--Y;

pair Z;
Z = whatever [A, B];
(Q - Z) = whatever * ((B - A) rotated 90);
draw Q--Z;

pair DYZ;
DYZ = whatever [Y, Z];
(D - DYZ) = whatever * ((Z - Y) rotated 90);
draw Y--Z--DYZ--cycle;

pair EZX;
EZX = whatever [Z, X];
(E - EZX) = whatever * ((X - Z) rotated 90);
draw Z--X--EZX--cycle;

pair FXY;
FXY = whatever [X, Y];
(F - FXY) = whatever * ((Y - X) rotated 90);
draw X--Y--FXY--cycle;

pair R;
R = whatever [D, DYZ];
R = whatever [E, EZX];

draw D--DYZ--R--cycle;
draw E--EZX--R--cycle;
draw F--FXY--R--cycle;

mark_rt_angle_withsize(C, D, P, 0.1u);
mark_rt_angle_withsize(B, F, P, 0.1u);
mark_rt_angle_withsize(A, E, P, 0.1u);

mark_rt_angle_withsize(C, X, Q, 0.1u);
mark_rt_angle_withsize(B, Z, Q, 0.1u);
mark_rt_angle_withsize(A, Y, Q, 0.1u);

mark_rt_angle_withsize(Z, DYZ, D, 0.1u);
mark_rt_angle_withsize(X, EZX, E, 0.1u);
mark_rt_angle_withsize(Y, FXY, F, 0.1u);

whitedotlabel.top(btex $A$ etex scaled textsize, A);
whitedotlabel.llft(btex $B$ etex scaled textsize, B);
whitedotlabel.lrt(btex $C$ etex scaled textsize, C);

whitedotlabel.bot(btex $D$ etex scaled textsize, D);
whitedotlabel.rt(btex $E$ etex scaled textsize, E);
whitedotlabel.lft(btex $F$ etex scaled textsize, F);

whitedotlabel.bot(btex $X$ etex scaled textsize, X);
whitedotlabel.lft(btex $Y$ etex scaled textsize, Y);
whitedotlabel.lft(btex $Z$ etex scaled textsize, Z);

whitedotlabel.bot(btex $P$ etex scaled textsize, P);
whitedotlabel.bot(btex $Q$ etex scaled textsize, Q);

whitedotlabel.bot(btex $O$ etex scaled textsize, O);

whitedotlabel.bot(btex $R$ etex scaled textsize, R);

endfig;

end;

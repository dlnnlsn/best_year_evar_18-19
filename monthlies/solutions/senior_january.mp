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

beginfig(1);

pair A; A := (0, 5u);
pair B; B := (-3u, 0);
pair C; C := (4u, 0);

dotlabel.top(btex $A$ etex scaled textsize, A);
dotlabel.llft(btex $B$ etex scaled textsize, B);
dotlabel.lrt(btex $C$ etex scaled textsize, C);

draw A--B--C--cycle;

pair P; P := 0.3 [B, C];
dotlabel.lrt(btex $P$ etex scaled textsize, P);

pair Q; Q := 0.4 [C, A];
dotlabel.rt(btex $Q$ etex scaled textsize, Q);

pair R; R := 0.2 [A, B];
dotlabel.rt(btex $R$ etex scaled textsize, R);

path GammaX; GammaX := circumcircle(A, R, Q);
path GammaY; GammaY := circumcircle(B, P, R);

draw GammaX;
draw GammaY;
draw circumcircle(C, Q, P);

pair X; X := circumcenter(A, R, Q);
dotlabel.rt(btex $X$ etex scaled textsize, X);

pair Y; Y := circumcenter(B, P, R);
dotlabel.lft(btex $Y$ etex scaled textsize, Y);

pair Z; Z := circumcenter(C, Q, P);
dotlabel.bot(btex $Z$ etex scaled textsize, Z);

draw X--Y--Z--cycle;

pair O; O := cross(GammaX, GammaY);
dotlabel.lrt(btex $O$ etex scaled textsize, O);

draw R--O;
draw O--Q;
draw O--P;

pair D; D := 0.5 [R, O];
dotlabel.ulft(btex $D$ etex scaled textsize, D);

mark_rt_angle_withsize(O, D, X, 0.2u);

pair E; E := 0.5 [O, Q];
dotlabel.urt(btex $E$ etex scaled textsize, E);

mark_rt_angle_withsize(X, E, O, 0.2u);

endfig;

end;

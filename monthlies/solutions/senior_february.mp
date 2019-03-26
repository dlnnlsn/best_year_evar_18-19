prologues := 3;
outputtemplate := "senior_february_q%c.mps";

input latexmp;
input ../../geometry.mp;

u := 1in;

verbatimtex
%&latex
\documentclass[12pt]{article}
\usepackage{amsmath,amssymb}
\begin{document}
etex 

beginfig(2);

pair A; A := (0, 0);
pair B; B := (1u, 2u);
pair C; C := (3u, 1u);
pair D; D := (2u, -u);
draw A--B--C--D--cycle;
dotlabel.lft(btex $A$ etex, A);
dotlabel.top(btex $B$ etex, B);
dotlabel.rt(btex $C$ etex, C);
dotlabel.bot(btex $D$ etex, D);

pair P; P := (1.5u, u);
dotlabel.urt(btex $P$ etex, P);

pair X; X := 0.75 [A, B];
pair X';
X' = whatever [X, P];
X' = whatever [C, D];
draw X--X';
dotlabel.ulft(btex $X$ etex, X);
dotlabel.lrt(btex $X^\prime$ etex, X');

pair Y; Y := 0.65 [A, B];
pair Y';
Y' = whatever [Y, P];
Y' = whatever [C, D];
draw Y--Y';
dotlabel.ulft(btex $Y$ etex, Y);
dotlabel.lrt(btex $Y^\prime$ etex, Y');

pair Z; Z := 0.55 [A, B];
pair Z';
Z' = whatever [Z, P];
Z' = whatever [C, D];
draw Z--Z';
dotlabel.ulft(btex $Z$ etex, Z);
dotlabel.lrt(btex $Z^\prime$ etex, Z');

endfig;

end;

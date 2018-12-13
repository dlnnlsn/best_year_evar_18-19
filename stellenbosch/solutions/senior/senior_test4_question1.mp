prologues := 3;
outputtemplate := "senior_test4_question1_%c.mps";

u := 1in;
fontscale := 2pt;

beginfig(1);

for i := 0 upto 4:
	draw (i * u, 0)--(i * u, 2u);
endfor;

draw (0, 0)--(4u, 0);
draw (0, u)--(4u, u);
draw (0, 2u)--(4u, 2u);

draw (6u, 0)--(8u, 0);
draw (6u, u)--(8u, u);
draw (6u, 2u)--(8u, 2u);

draw (6u, 0)--(6u, 2u);
draw (7u, 0)--(7u, 2u);
draw (8u,0)--(8u, 2u);

label (btex $\cdots$ etex scaled 4pt, (5u, 0.5u));
label (btex $\cdots$ etex scaled 4pt, (5u, 1.5u));

pickup pencircle scaled 2;

draw (0.9u, -0.1u)--(8.1u, -0.1u)--(8.1u, 2.1u)--(0.9u, 2.1u)--cycle; 

draw (0.1u, 0.1u)--(7.9u, 0.1u)--(7.9u, 0.9u)--(0.1u, 0.9u)--cycle;
draw (0.1u, 1.1u)--(7.9u, 1.1u)--(7.9u, 1.9u)--(0.1u, 1.9u)--cycle;

draw (-0.2u, -0.2u)--(1.2u, -0.2u)--(1.2u, 2.2u)--(-0.2u, 2.2u)--cycle;

label.llft (btex $(0, 0)$ etex scaled fontscale, (-0.2u, -0.2u));
label.lft (btex $(0, 1)$ etex scaled fontscale, (-0.2u, u));
label.ulft (btex $(0, 2)$ etex scaled fontscale, (-0.2u, 2.2u));

label.bot (btex $(1, 0)$ etex scaled fontscale, (u, -0.2u));
label.top (btex $(1, 2)$ etex scaled fontscale, (u, 2.2u));

label.lrt (btex $(n, 0)$ etex scaled fontscale, (8.2u, -0.2u));
label.rt (btex $(n, 1)$ etex scaled fontscale, (8.2u, u));
label.urt (btex $(n, 2)$ etex scaled fontscale, (8.2u, 2.2u));

endfig;

end;

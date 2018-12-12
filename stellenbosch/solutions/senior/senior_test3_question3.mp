prologues := 3;
outputtemplate := "senior_test3_question3_%c.mps";

u := 1in;

beginfig(1);

pickup pencircle scaled 2;

fill (0, 0)--(8u, 0)--(8u, 8u)--(0, 8u)--cycle withcolor 0.5 * white;
fill (2u, 0)--(3u, 0)--(3u, 8u)--(2u, 8u)--cycle withcolor white;
fill (5u, 0)--(6u, 0)--(6u, 8u)--(5u, 8u)--cycle withcolor white;
fill (0, 2u)--(8u, 2u)--(8u, 3u)--(0, 3u)--cycle withcolor white;
fill (0, 5u)--(8u, 5u)--(8u, 6u)--(0, 6u)--cycle withcolor white;

for i := 0 upto 8:
	draw (0, i * u)--(8u, i * u);
	draw (i * u, 0)--(i * u, 8u);
endfor;

endfig;

beginfig(2);

pickup pencircle scaled 2;

draw (0, 0)--(6u, 0)--(6u, 2u)--(0, 2u)--cycle;
draw (2u, 0)--(2u, 2u);
draw (4u, 0)--(4u, 2u);

label (btex $S$ etex scaled 10pt, (u, u));
label (btex $T$ etex scaled 10pt, (3u, u));
label (btex $X$ etex scaled 10pt, (5u, u));

endfig;

end;

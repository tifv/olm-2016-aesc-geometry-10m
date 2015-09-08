import geometry;

size(0, 4cm);

point
    pA = (3,3), pB = (4,0), pC = (0,0),
    pM = (pA + pB + pC) / 3,
    pM1 = (pB + pC) / 2, pM2 = (pA + pC) / 2;

fill(pC--pM1--pM--pM2--cycle, gray(0.7));

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pM1 ^^ pB--pM2);

draw(pC--pM, gray(0.5));

draw(pB--pC, invisible, StickIntervalMarker(2, 1));
draw(pC--pA, invisible, StickIntervalMarker(2, 2));

label("$S_1$", (pC+pM+pM1+pM2) / 4);

dot(Label("$A$", pA, N));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, SW));
dot(Label("$M$", pM, ENE));
dot(Label("$M_1$", pM1, S));
dot(Label("$M_2$", pM2, NW));


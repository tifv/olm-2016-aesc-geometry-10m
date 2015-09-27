import geometry;

size(0, 4cm);

point
    pA = (2.5,3), pB = (4,0), pC = (0,0),
    pA1 = 2 pA - pC, pB1 = 2 pB - pA, pC1 = 2 pC - pB;

draw(triangle(pA, pB, pC), linewidth(1));

draw(pA--pA1--pC1--cycle ^^ pB--pB1--pA1--cycle ^^ pC--pC1--pB1--cycle);

draw(pA--pB1, invisible, StickIntervalMarker(2, 1));
draw(pB--pC1, invisible, StickIntervalMarker(2, 2));
draw(pC--pA1, invisible, TildeIntervalMarker(2, 1));

// label("$S$", (pA + pB + pC) / 3);

dot(Label(scale(0.85) * "$A$", pA, E));
dot(Label(scale(0.85) * "$B$", pB, unit(SSW+SW)));
dot(Label(scale(0.85) * "$C$", pC, NNW));
dot(Label("$A_1$", pA1, NE));
dot(Label("$B_1$", pB1, SE));
dot(Label("$C_1$", pC1, W));


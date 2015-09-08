import geometry;

size(0, 4cm);

point
    pA = (3,3), pB = (4,0), pC = (0,0),
    pC1 = (2 pA + pB) / 3, pA1 = (3 pB + 2 pC) / 5, pB1 = (pC + pA) / 2;

fill(pA1--pB1--pC1--cycle, gray(0.7));

draw(triangle(pA, pB, pC), linewidth(1));

draw(pA1--pB1--pC1--cycle);

label("$S_1$", (pA1+pB1+pC1) / 3);

dot(Label("$A$", pA, N));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, SW));
dot(Label("$A_1$", pA1, S));
dot(Label("$B_1$", pB1, NW));
dot(Label("$C_1$", pC1, NE));

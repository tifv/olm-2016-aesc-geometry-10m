import geometry;

size(4cm);

point
    pA = (0,0), pB = (4,0), pC = (1,3),
    pP = (2,1),
    pA1 = extension(pA, pP, pB, pC),
    pB1 = extension(pB, pP, pC, pA),
    pC1 = extension(pC, pP, pA, pB);

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, N));
dot(Label("$P$", pP, SW+S));
dot(Label("$A_1$", pA1, NE));
dot(Label("$B_1$", pB1, WNW));
dot(Label("$C_1$", pC1, S));


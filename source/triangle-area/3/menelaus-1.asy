import geometry;

size(0, 3cm);

point
    pA = (0,0), pB = (4,0), pC = (1,3);

mass mA = pA, mB = pB, mC = pC;

point
    pP = masscenter(1mA, 4mB, 2mC),
    pA1 = extension(pA, pP, pB, pC),
    pB1 = extension(pB, pP, pC, pA),
    pC1 = extension(pC, pP, pA, pB);

point
    pC2 = extension(pA1, pB1, pA, pB);

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

draw(pB1--pC2);
draw(pB--pC2);

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SSE));
dot(pC);
dot(pP);
dot(pA1);
dot(pB1);
dot(Label("$C_1$", pC1, SSE));

dot(Label("$C_2$", pC2, SSE));


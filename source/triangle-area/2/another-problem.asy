import geometry;

size(2.5cm);

point
    pA = (0,0), pB = (4,0), pC = (1,3),
    pA1 = (pB + pC) / 2, pP = (pA1 + pA) / 2,
    pB1 = extension(pB, pP, pC, pA),
    pC1 = extension(pC, pP, pA, pB);

fill(pA--pB1--pP--pC1--cycle, gray(0.7));

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

draw(pB--pC, invisible, StickIntervalMarker(2, 1));
draw(pA--pA1, invisible, StickIntervalMarker(2, 2));

dot(pA);
dot(pB);
dot(pC);
dot(pA1);
dot(pB1);
dot(pC1);
dot(pP);


import geometry;

size(4cm);

point
    pA = (0,0), pB = (4,0), pC = (1,3),
    pB1 = (pA+pC)/2, pC1 = (pA+pB)/2,
    pP = extension(pB, pB1, pC, pC1),
    pA1 = extension(pA, pP, pB, pC);

fill(pP--pB1--pC1--cycle, gray(0.7));

draw(pA--pB--pC--cycle, linewidth(1));

draw(pB--pB1--pC1--pC);

draw(pA--pB, invisible, StickIntervalMarker(2, 1));
draw(pA--pC, invisible, StickIntervalMarker(2, 2));

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, N));
dot(pP);
//dot(pA1);
dot(pB1);
dot(pC1);


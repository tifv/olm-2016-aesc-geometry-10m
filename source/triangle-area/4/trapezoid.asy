import geometry;

size(0, 5cm);

real alpha = 0.4;

point
    pA = (0,0), pB = (1,4), pC = (3,4), pD = (5,0),
    pT = (pA + pD) / 2, pQ = (pB + pC) / 2,
    pK = (1+alpha) * pC - alpha * pA,
    pE = extension(pA, pB, pK, pQ),
    pF = extension(pC, pD, pK, pT);

draw(pA--pB--pC--pD--cycle, linewidth(1));

draw(pA--pK ^^ pE--pK ^^ pT--pK ^^ pE--pF);

draw(pA--pT ^^ pT--pD, invisible, StickIntervalMarker(1, 2));
draw(pB--pQ ^^ pQ--pC, invisible, StickIntervalMarker(1, 1));

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, NW));
dot(Label("$C$", pC, E));
dot(Label("$D$", pD, SE));
dot(Label("$T$", pT, S));
dot(Label("$Q$", pQ, NNW));
dot(Label("$K$", pK, NE));
dot(Label("$E$", pE, WNW));
dot(Label("$F$", pF, 1.5E));


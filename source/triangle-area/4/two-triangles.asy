import geometry;

size(0, 5cm);

real k = 0.5;

point
    pA = (0,0), pB = (4,0), pC = (3,3),
    pD = (pA + k * pB) / (1 + k),
    pT = (pB + k * pC) / (1 + k),
    pN = (pC + k * pA) / (1 + k),
    pF = extension(pA, pT, pB, pN),
    pQ = extension(pB, pN, pC, pD),
    pE = extension(pC, pD, pA, pT);

pen gray = gray(0.85);

fill(pF--pQ--pE--cycle, gray);

draw(pA--pB--pC--cycle, linewidth(1));
draw(pA--pT ^^ pB--pN ^^ pC--pD);

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, N));
dot(Label("$D$", pD, S));
dot(Label("$T$", pT, ENE));
dot(Label("$N$", pN, NW));
dot(Label("$F$", pF, SW+S));
dot(Label("$Q$", pQ, 1.5E));
dot(Label("$E$", pE, NW));


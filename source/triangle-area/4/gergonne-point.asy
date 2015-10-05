import geometry;

size(0, 5cm);

point
    pA = (0,0), pB = (4,0), pC = (3,3);

triangle triABC = triangle(pA, pB, pC);

point
    pA1 = intouch(triABC.BC),
    pB1 = intouch(triABC.CA),
    pC1 = intouch(triABC.AB),
    pGe = gergonne(triABC);

draw(pA--pB--pC--cycle, linewidth(1));

draw(incircle(triABC));

draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

dot(Label("$A$",   pA, SW));
dot(Label("$B$",   pB, SE));
dot(Label("$C$",   pC, N));
dot(Label("$A_1$", pA1, ENE));
dot(Label("$B_1$", pB1, NW));
dot(Label("$C_1$", pC1, S));
dot(Label("$Ge$",  pGe, W+WNW));


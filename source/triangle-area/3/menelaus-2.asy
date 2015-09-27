import geometry;

size(0, 3cm);

point
    pA = (0,0), pB = (4,0), pC = (1,3);

mass mA = pA, mB = pB, mC = pC;

point
    pP = masscenter(2mA, 4mB, 1mC),
    pA1 = extension(pA, pP, pB, pC),
    pB1 = extension(pB, pP, pC, pA),
    pC1 = extension(pC, pP, pA, pB);

point
    pA2 = extension(pB1, pC1, pB, pC),
    pB2 = extension(pC1, pA1, pC, pA),
    pC2 = extension(pA1, pB1, pA, pB);

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

draw(pB--pA2 ^^ pA--pB2 ^^ pB--pC2);
draw(pB1--pA2 ^^ pA1--pB2 ^^ pB1--pC2);

//draw(line(pA2, pB2), dashed);

dot(pA);
dot(pB);
dot(pC);
dot(pP);
dot(pA1);
dot(pB1);
dot(pC1);

dot(Label("$A_2$", pA2, SE));
dot(Label("$B_2$", pB2, SE));
dot(Label("$C_2$", pC2, SE));


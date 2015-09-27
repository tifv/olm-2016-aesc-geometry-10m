import geometry;

size(4cm);

real
    alpha = 0.475, beta = 1.0 - alpha;

point
    pA = (0,0), pB = (4,0), pC = (1,3),
    pA1 = alpha * pB + beta * pC,
    pB1 = alpha * pC + beta * pA,
    pC1 = alpha * pA + beta * pB,
    pP = (pA + pB + pC) / 3,
    pM = extension(pA, pA1, pB, pB1),
    pN = extension(pB, pB1, pC, pC1),
    pK = extension(pC, pC1, pA, pA1);

real epsilon = max(abs(pM - pP), abs(pN - pP), abs(pK - pP));

draw(triangle(pA, pB, pC), linewidth(1));
draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

pen gray = gray(0.5)+opacity(0.7);

fill((path)circle(pP, 1.5epsilon), gray);
label("$P$", pP, SW + S, gray);


dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, N));
dot(Label("$A_1$", pA1, NE));
dot(Label("$B_1$", pB1, WNW));
dot(Label("$C_1$", pC1, S));


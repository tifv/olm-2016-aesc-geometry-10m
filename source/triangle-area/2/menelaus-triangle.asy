import geometry;

size(4cm);

point
    pA = (0,0), pB = (3,0), pC = (2,3),
    pA1 = 0.5pB + 0.5pC, pB1 = 0.3pA + 0.7pC;

line lL = line(pA1, pB1);

point pC1 = intersectionpoint(lL, line(pA, pB));

pen gray = gray(0.5)+opacity(0.7);

draw(lL, gray+linewidth(1));

draw(triangle(pA, pB, pC), linewidth(1));
draw(line(pB, pC1, extendA=false));

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, S));
dot(Label("$C$", pC, N));
dot(Label("$A_1$", pA1, SW));
dot(Label("$B_1$", pB1, W+WSW));
dot(Label("$C_1$", pC1, SSW));


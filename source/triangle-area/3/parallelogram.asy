import geometry;

size(4cm);

point
    pA = (0,0), pB = (3,0), pD = (1,3),
    pC = pB + pD - pA;

point pM = (2,2);

line
    la = parallel(pM, line(pA, pB)),
    lb = parallel(pM, line(pA, pD));

point
    pP = intersectionpoint(la, line(pA, pD)),
    pQ = intersectionpoint(lb, line(pA, pB)),
    pP1 = intersectionpoint(la, line(pB, pC)),
    pQ1 = intersectionpoint(lb, line(pC, pD)),
    pN = extension(pB, pP, pD, pQ);

draw(pA--pB--pC--pD--cycle, linewidth(1));

draw(la);
draw(lb);

draw(pD--pQ ^^ pB--pP);

draw(pC--pN, dashed);

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, SE));
dot(Label("$C$", pC, NE));
dot(Label("$D$", pD, NW));
dot(Label("$P$", pP, NW));
dot(Label("$Q$", pQ, SE));
dot(Label("$M$", pM, SE));
dot(Label("$N$", pN, SW));

dot(pP1);
dot(pQ1);
label("$a$", pP1, 2.5la.u + N);
label("$b$", pQ1, 2lb.u + E);


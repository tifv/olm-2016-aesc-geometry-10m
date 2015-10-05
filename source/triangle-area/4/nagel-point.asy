import geometry;

size(0, 5cm);

point
    pA = (0,0), pB = (4,0), pC = (3,4);

triangle triABC = triangle(pA, pB, pC);

point
    pA1 = extouch(triABC.BC).A,
    pB1 = extouch(triABC.CA).B,
    pC1 = extouch(triABC.AB).C,
    pN = extension(pA, pA1, pB, pB1);

pen gray = gray(0.5);

draw(line(pB, pC), gray);
draw(line(pC, pA), gray);
draw(line(pA, pB), gray);

clipdraw(excircle(triABC.BC)); //, gray
clipdraw(excircle(triABC.CA)); //, gray
clipdraw(excircle(triABC.AB)); //, gray

dot(extouch(triABC.BC), gray);
dot(extouch(triABC.CA), gray);
dot(extouch(triABC.AB), gray);

draw(pA--pB--pC--cycle, linewidth(1));

draw(pA--pA1 ^^ pB--pB1 ^^ pC--pC1);

dot(Label("$A$",   pA, 3.0WSW+0.5SW));
dot(Label("$B$",   pB, 1.5SE));
dot(Label("$C$",   pC, 1.8NNE+1.3N));
dot(Label("$N$",  pN, 1.5S+SSE));

dot(Label("$A_1$", pA1, ENE));
dot(Label("$B_1$", pB1, NW));
dot(Label("$C_1$", pC1, S));

pen borderpen = invisible+linewidth(25);

dot(extouch(triABC.BC), borderpen);
dot(extouch(triABC.CA), borderpen);
dot(extouch(triABC.AB), borderpen);


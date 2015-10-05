import geometry;

size(4cm);

point A[] = new point[] {(0,0), (1,0), (1,1), (0,1)};
A.cyclic = true;

point B[];
B.cyclic = true;

point C[], D[];
C.cyclic = D.cyclic = true;

for (int i = 0; i < 4; ++i) {
   B.push(0.5 A[i] + 0.5 A[i+1]);
}

for (int i = 0; i < 4; ++i) {
   C.push(extension(A[i], B[i+1], A[i+1], B[i-1]));
   D.push(extension(A[i], B[i+1], A[i+2], B[i]));
}

fill(
    C[0]--D[0]--C[1]--D[1]--C[2]--D[2]--C[3]--D[3]--cycle,
    gray(0.70)
);

draw(A[0]--A[1]--A[2]--A[3]--cycle, linewidth(1));

for (int i = 0; i < 4; ++i) {
   draw(A[i]--B[i+1] ^^ A[i]--B[i-2]);
}


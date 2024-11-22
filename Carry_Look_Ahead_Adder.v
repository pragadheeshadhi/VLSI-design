module cla(A,B,cin,cout,S);
  input [3:0]A,B;
  input cin;
  output[3:0]S;
  output cout;
  
  wire P0,P1,P2,P3,G0,G1,G2,G3;
  wire C1,C2,C3,C4;
  assign P0 = A[0]^B[0];
  assign P1 = A[1]^B[1];
  assign P2 = A[2]^B[2];
  assign P3 = A[3]^B[3];
  
  assign G0 = A[0]&B[0];
  assign G1 = A[1]&B[1];
  assign G2 = A[2]&B[2];
  assign G3 = A[3]&B[3];
  
  assign C1= G0|P0&cin;
  assign C2= G1|P1&G0|P1&P0&cin;
  assign C3= G2|P2&G1|P2&P1&G0|P2&P1&P0&cin;
  assign C4= G3|P3&G2|P3&P2&G1|P3&P2&P1&cin|P3&P2&P1&P0&cin;
  
  assign S[0]= P0^cin;
  assign S[1]= P1^C1;
  assign S[2]= P2^C2;
  assign S[3]= P3^C3;
  
  assign cout= C4;
  endmodule

%Exo 1
A=[0 1; 1 1];
B=A;
C=A;

N1=-inv(-1*eye(2)-A)*B;
N2=-inv(-2*eye(2)-A)*B;
V=[-1 1; 1 0];

z1=inv(N1)*V(1:2,1);
z2=inv(N2)*V(1:2,2);
W=[z1 z2];
K=W*inv(C*V);

U=inv(V);
H=V*inv(B);

ss2tf(A-B*K*C,B*H,C,zeros(2),2)
%%
% Exo 2
C=[1 1 0; 0 0 1];
B=[1 0; 0 1; 0 1];
A=[0 0 0;
    1 0 0;
    0 0 1];

Co=ctrb(A,B);
rank(Co)

Ob=obsv(A,B);
rank(Ob);

%%
%Exo 3 Afficher les modes dans le plan de Laplace


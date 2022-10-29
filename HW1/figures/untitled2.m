N=40;
L=15;
P=25;
K=2;
n=0:1:N-1;
x=randn(1,N);

figure;
stem(n,x);
xlabel("n");
ylabel("x[n]");
title("Random Signal x[n]");

h=ones(1,L);
g=ones(1,K);
p=ones(1,P);

y=conv(x,h);
z=conv(x,g);
j=conv(x,p);

figure;
stem(0:N+P-2,j/25);
xlabel("n");
ylabel("y[n]");
title("Convolution with Pulse Duration 25");

figure;
stem(0:N+L-2,y/15);
xlabel("n");
ylabel("y[n]");
title("Convolution with Pulse Duration 15");

figure;
stem(0:N+K-2,z/2);
xlabel("n");
ylabel("y[n]");
title("Convolution with Pulse Duration 2");

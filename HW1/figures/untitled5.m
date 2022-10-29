
n=0:1:20-1;
x=sin(2*pi*n/7);
figure;
stem(n,x);
xlabel("n")
ylabel("x[n]");
title("Signal x[n]")
%N=20, L=14
h=ones(1,14);
figure;
stem(0:13,h);
xlabel("n");
ylabel("h[n]");
title("İmpulse Response h[n]");
h_reversed=flip(h);
x_padded=[zeros(1,13) x zeros(1,13)];
y=zeros(1,33);
for i =1:33
    y(i)=x_padded(i:i+13) * h_reversed';
end

g=y(1:20);
figure;
stem(n,g);
xlabel("n");
ylabel("y[n]");
title("Convolution with Padding");
%}
z=conv(x,h);
figure;
stem(0:32,z);
xlabel("n");
ylabel("y[n]");
title("Convolution");
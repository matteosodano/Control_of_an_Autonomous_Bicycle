function plotRlocus(sys)
k1 = 0.06;
k2 = 1.95;

W1 = feedback(k1*sys, 1);
W2 = feedback(k2*sys, 1);

pole1 = pole(W1);
pole2 = pole(W2);

xline1 = real(pole1(1));
xline2 = real(pole2(2));

figure;
hold on;
rlocus(sys);
xline(xline1);
xline(xline2);
end


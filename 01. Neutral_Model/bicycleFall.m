function x = bicycleFall(x, t)
samples = length(t);
for i = 1:samples
    if x(i, 1) >= pi/2
        x(i:end, 1) = pi/2;
        x(i:end, 2) = 0;
        break
    end
    if x(i, 1) <= -pi/2
        x(i:end, 1) = -pi/2;
        x(i:end, 2) = 0;
        break
    end
end
end


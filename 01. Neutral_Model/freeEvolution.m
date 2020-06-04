function x = freeEvolution(A, init_conds, t)
    samples = length(t);
    x = zeros(samples, length(init_conds));
    for i = 1:samples
        x(i, :) = expm(A*t(i))*init_conds';
    end
end
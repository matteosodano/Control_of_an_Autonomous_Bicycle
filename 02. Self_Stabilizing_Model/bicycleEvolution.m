function x = bicycleEvolution(sys, init_conds, t)
    [y,t,x] = initial(sys,init_conds, t);
    x = bicycleFall(x, t);
end


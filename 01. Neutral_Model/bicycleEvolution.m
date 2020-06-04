function x = bicycleEvolution(A, init_conds, t)
    x = freeEvolution(A, init_conds, t);
    x = bicycleFall(x, t);
end


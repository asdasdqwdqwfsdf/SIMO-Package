function solu = BarExactSolution(q1, q2, E, A, L, u0, P)
% function solu = BarExactSolution(q1, q2, E, A, L)
% Calculate exact solution for bar problem

solu.displ = @(x) (q1 - q2) * x .^ 3 / (6 * E(x) * A(x) * L) -...
    q1 * x .^ 2 / (2 * E(x) * A(x)) + (3 * L ^ 2 * q1 + ...
    3 * L ^ 2 * q2 + 6 * L * P) * x / (6 * E(x) * A(x) * L) + u0;
solu.sigma = @(x) ((q1 - q2) * x .^ 2 / (2 * E(x) * A(x) * L) -...
    q1 * x / (E(x) * A(x)) + (3 * L ^ 2 * q1 + ...
    3 * L ^ 2 * q2 + 6 * L * P) / (6 * E(x) * A(x) * L)) * E(x);
end
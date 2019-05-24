% Input arguments
    int: N;
    int: capacity;
    array[1..N] of int: profits;
    array[1..N] of int: weights;

% Variables
    var set of 1..N: knapsack;

% Constraints
    constraint sum (i in knapsack)
                   (weights[i]) <= capacity;

% objective function
    solve maximize sum (i in knapsack)
                       (profits[i]);

output ["\(knapsack)"];
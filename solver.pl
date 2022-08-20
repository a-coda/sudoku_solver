easy_sudoku() :-
    Board = [[2, 7, _, _, _, _, 1, 9, 5],
             [_, 4, 1, 7, 5, _, _, 3, _],
             [_, _, 8, 1, 9, 6, _, _, 2],
             [3, _, _, _, 2, 7, 9, _, 6],
             [6, _, _, _, _, 4, 2, 5, 7],
             [7, 5, 2, 9, 6, _, _, _, _],
             [_, 2, 7, 8, _, _, 3, 6, _],
             [1, _, 5, 6, 7, 3, _, _, _],
             [_, 6, _, _, _, 9, 5, 7, 1]],
    sudoku(Board).

medium_sudoku() :-
    Board = [[_, _, 9, 3, _, _, _, _, _],
             [_, _, _, _, 2, 6, _, _, _],
             [_, _, _, 7, _, _, _, 5, _],
             [_, 3, _, _, _, _, 8, _, 2],
             [_, _, 4, _, 6, _, _, _, _],
             [_, _, _, 9, _, 1, 7, _, 3],
             [6, 5, _, _, _, _, 9, _, _],
             [7, 9, _, 5, 4, _, _, _, _],
             [_, _, _, _, _, 8, _, 2, _]],
    sudoku(Board).

sudoku(Board) :-
    solve(Board),
    print(Board).

solve(Board) :-
    Board = [[S11, S12, S13, S14, S15, S16, S17, S18, S19],
             [S21, S22, S23, S24, S25, S26, S27, S28, S29],
             [S31, S32, S33, S34, S35, S36, S37, S38, S39],
             [S41, S42, S43, S44, S45, S46, S47, S48, S49],
             [S51, S52, S53, S54, S55, S56, S57, S58, S59],
             [S61, S62, S63, S64, S65, S66, S67, S68, S69],
             [S71, S72, S73, S74, S75, S76, S77, S78, S79],
             [S81, S82, S83, S84, S85, S86, S87, S88, S89],
             [S91, S92, S93, S94, S95, S96, S97, S98, S99]],

    has_1_to_9([S11, S12, S13, S14, S15, S16, S17, S18, S19]),
    has_1_to_9([S11, S21, S31, S41, S51, S61, S71, S81, S91]),
    has_1_to_9([S11, S12, S13, S21, S22, S23, S31, S32, S33]),

    has_1_to_9([S21, S22, S23, S24, S25, S26, S27, S28, S29]),
    has_1_to_9([S12, S22, S32, S42, S52, S62, S72, S82, S92]),
    has_1_to_9([S14, S15, S16, S24, S25, S26, S34, S35, S36]),

    has_1_to_9([S31, S32, S33, S34, S35, S36, S37, S38, S39]),
    has_1_to_9([S13, S23, S33, S43, S53, S63, S73, S83, S93]),
    has_1_to_9([S17, S18, S19, S27, S28, S29, S37, S38, S39]),

    has_1_to_9([S41, S42, S43, S44, S45, S46, S47, S48, S49]),
    has_1_to_9([S14, S24, S34, S44, S54, S64, S74, S84, S94]),
    has_1_to_9([S41, S42, S43, S51, S52, S53, S61, S62, S63]),

    has_1_to_9([S51, S52, S53, S54, S55, S56, S57, S58, S59]),
    has_1_to_9([S15, S25, S35, S45, S55, S65, S75, S85, S95]),
    has_1_to_9([S44, S45, S46, S54, S55, S56, S64, S65, S66]),

    has_1_to_9([S61, S62, S63, S64, S65, S66, S67, S68, S69]),
    has_1_to_9([S16, S26, S36, S46, S56, S66, S76, S86, S96]),
    has_1_to_9([S47, S48, S49, S57, S58, S59, S67, S68, S69]),

    has_1_to_9([S71, S72, S73, S74, S75, S76, S77, S78, S79]),
    has_1_to_9([S17, S27, S37, S47, S57, S67, S77, S87, S97]),
    has_1_to_9([S71, S72, S73, S81, S82, S83, S91, S92, S93]),

    has_1_to_9([S81, S82, S83, S84, S85, S86, S87, S88, S89]),
    has_1_to_9([S18, S28, S38, S48, S58, S68, S78, S88, S98]),
    has_1_to_9([S74, S75, S76, S84, S85, S86, S94, S95, S96]),

    has_1_to_9([S91, S92, S93, S94, S95, S96, S97, S98, S99]),
    has_1_to_9([S19, S29, S39, S49, S59, S69, S79, S89, S99]),
    has_1_to_9([S77, S78, S79, S87, S88, S89, S97, S98, S99]).

has_1_to_9(Xs) :-
    permutation(Xs, [1,2,3,4,5,6,7,8,9]).

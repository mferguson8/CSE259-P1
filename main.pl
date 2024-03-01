% ASU ID: 1224953483

asu(LeftRightMargin, BottomTopMargin, SpaceBetweenCharacters, FontSize) :-
    print_top_border(LeftRightMargin, FontSize),
    print_middle_section(LeftRightMargin, SpaceBetweenCharacters, FontSize),
    print_bottom_border(LeftRightMargin, FontSize, BottomTopMargin).

print_top_border(0, _).
print_top_border(N, FontSize) :-
    N > 0,
    print_spaces(FontSize),
    write('*'),
    Next is N - 1,
    print_top_border(Next, FontSize).

print_middle_section(0, _, _).
print_middle_section(N, SpaceBetweenCharacters, FontSize) :-
    N > 0,
    print_spaces(FontSize),
    write('*'),
    print_spaces(SpaceBetweenCharacters),
    write('*'),
    Next is N - 1,
    nl,
    print_middle_section(Next, SpaceBetweenCharacters, FontSize).

print_bottom_border(_, _, 0).
print_bottom_border(LeftRightMargin, FontSize, BottomTopMargin) :-
    BottomTopMargin > 0,
    print_spaces(LeftRightMargin),
    write('*'),
    print_spaces((FontSize + 1) * (LeftRightMargin - 1)),
    write('*'),
    nl,
    Next is BottomTopMargin - 1,
    print_bottom_border(LeftRightMargin, FontSize, Next).

print_spaces(0).
print_spaces(N) :-
    N > 0,
    write(' '),
    Next is N - 1,
    print_spaces(Next).

#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "fen_viewer";
zci is_cached   => 1;

ddg_goodie_test(
    [qw( DDG::Goodie::FenViewer )],
    'FEN rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1' => test_zci("rnbqkbnr\npppppppp\n - - - -\n- - - - \n - - - -\n- - - - \nPPPPPPPP\nRNBQKBNR", html => '<div class="zci--fenviewer"><table class="chess_board" cellpadding="0" cellspacing="0"><tr><td id="A8"><span class="black rook">&#9820;</span></td><td id="B8"><span class="black knight">&#9822;</span></td><td id="C8"><span class="black bishop">&#9821;</span></td><td id="D8"><span class="black queen">&#9819;</span></td><td id="E8"><span class="black king">&#9818;</span></td><td id="F8"><span class="black bishop">&#9821;</span></td><td id="G8"><span class="black knight">&#9822;</span></td><td id="H8"><span class="black rook">&#9820;</span></td></tr><tr><td id="A7"><span class="black pawn">&#9823;</span></td><td id="B7"><span class="black pawn">&#9823;</span></td><td id="C7"><span class="black pawn">&#9823;</span></td><td id="D7"><span class="black pawn">&#9823;</span></td><td id="E7"><span class="black pawn">&#9823;</span></td><td id="F7"><span class="black pawn">&#9823;</span></td><td id="G7"><span class="black pawn">&#9823;</span></td><td id="H7"><span class="black pawn">&#9823;</span></td></tr><tr><td id="A6"><span class="empty"></span></td><td id="B6"><span class="empty"></span></td><td id="C6"><span class="empty"></span></td><td id="D6"><span class="empty"></span></td><td id="E6"><span class="empty"></span></td><td id="F6"><span class="empty"></span></td><td id="G6"><span class="empty"></span></td><td id="H6"><span class="empty"></span></td></tr><tr><td id="A5"><span class="empty"></span></td><td id="B5"><span class="empty"></span></td><td id="C5"><span class="empty"></span></td><td id="D5"><span class="empty"></span></td><td id="E5"><span class="empty"></span></td><td id="F5"><span class="empty"></span></td><td id="G5"><span class="empty"></span></td><td id="H5"><span class="empty"></span></td></tr><tr><td id="A4"><span class="empty"></span></td><td id="B4"><span class="empty"></span></td><td id="C4"><span class="empty"></span></td><td id="D4"><span class="empty"></span></td><td id="E4"><span class="empty"></span></td><td id="F4"><span class="empty"></span></td><td id="G4"><span class="empty"></span></td><td id="H4"><span class="empty"></span></td></tr><tr><td id="A3"><span class="empty"></span></td><td id="B3"><span class="empty"></span></td><td id="C3"><span class="empty"></span></td><td id="D3"><span class="empty"></span></td><td id="E3"><span class="empty"></span></td><td id="F3"><span class="empty"></span></td><td id="G3"><span class="empty"></span></td><td id="H3"><span class="empty"></span></td></tr><tr><td id="A2"><span class="white pawn">&#9817;</span></td><td id="B2"><span class="white pawn">&#9817;</span></td><td id="C2"><span class="white pawn">&#9817;</span></td><td id="D2"><span class="white pawn">&#9817;</span></td><td id="E2"><span class="white pawn">&#9817;</span></td><td id="F2"><span class="white pawn">&#9817;</span></td><td id="G2"><span class="white pawn">&#9817;</span></td><td id="H2"><span class="white pawn">&#9817;</span></td></tr><tr><td id="A1"><span class="white rook">&#9814;</span></td><td id="B1"><span class="white knight">&#9816;</span></td><td id="C1"><span class="white bishop">&#9815;</span></td><td id="D1"><span class="white queen">&#9813;</span></td><td id="E1"><span class="white king">&#9812;</span></td><td id="F1"><span class="white bishop">&#9815;</span></td><td id="G1"><span class="white knight">&#9816;</span></td><td id="H1"><span class="white rook">&#9814;</span></td></tr></table></div>'),
    'fen   rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1   ' => test_zci("rnbqkbnr\npppppppp\n - - - -\n- - - - \n - -P- -\n- - - - \nPPPP PPP\nRNBQKBNR", html => '<div class="zci--fenviewer"><table class="chess_board" cellpadding="0" cellspacing="0"><tr><td id="A8"><span class="black rook">&#9820;</span></td><td id="B8"><span class="black knight">&#9822;</span></td><td id="C8"><span class="black bishop">&#9821;</span></td><td id="D8"><span class="black queen">&#9819;</span></td><td id="E8"><span class="black king">&#9818;</span></td><td id="F8"><span class="black bishop">&#9821;</span></td><td id="G8"><span class="black knight">&#9822;</span></td><td id="H8"><span class="black rook">&#9820;</span></td></tr><tr><td id="A7"><span class="black pawn">&#9823;</span></td><td id="B7"><span class="black pawn">&#9823;</span></td><td id="C7"><span class="black pawn">&#9823;</span></td><td id="D7"><span class="black pawn">&#9823;</span></td><td id="E7"><span class="black pawn">&#9823;</span></td><td id="F7"><span class="black pawn">&#9823;</span></td><td id="G7"><span class="black pawn">&#9823;</span></td><td id="H7"><span class="black pawn">&#9823;</span></td></tr><tr><td id="A6"><span class="empty"></span></td><td id="B6"><span class="empty"></span></td><td id="C6"><span class="empty"></span></td><td id="D6"><span class="empty"></span></td><td id="E6"><span class="empty"></span></td><td id="F6"><span class="empty"></span></td><td id="G6"><span class="empty"></span></td><td id="H6"><span class="empty"></span></td></tr><tr><td id="A5"><span class="empty"></span></td><td id="B5"><span class="empty"></span></td><td id="C5"><span class="empty"></span></td><td id="D5"><span class="empty"></span></td><td id="E5"><span class="empty"></span></td><td id="F5"><span class="empty"></span></td><td id="G5"><span class="empty"></span></td><td id="H5"><span class="empty"></span></td></tr><tr><td id="A4"><span class="empty"></span></td><td id="B4"><span class="empty"></span></td><td id="C4"><span class="empty"></span></td><td id="D4"><span class="empty"></span></td><td id="E4"><span class="white pawn">&#9817;</span></td><td id="F4"><span class="empty"></span></td><td id="G4"><span class="empty"></span></td><td id="H4"><span class="empty"></span></td></tr><tr><td id="A3"><span class="empty"></span></td><td id="B3"><span class="empty"></span></td><td id="C3"><span class="empty"></span></td><td id="D3"><span class="empty"></span></td><td id="E3"><span class="empty"></span></td><td id="F3"><span class="empty"></span></td><td id="G3"><span class="empty"></span></td><td id="H3"><span class="empty"></span></td></tr><tr><td id="A2"><span class="white pawn">&#9817;</span></td><td id="B2"><span class="white pawn">&#9817;</span></td><td id="C2"><span class="white pawn">&#9817;</span></td><td id="D2"><span class="white pawn">&#9817;</span></td><td id="E2"><span class="empty"></span></td><td id="F2"><span class="white pawn">&#9817;</span></td><td id="G2"><span class="white pawn">&#9817;</span></td><td id="H2"><span class="white pawn">&#9817;</span></td></tr><tr><td id="A1"><span class="white rook">&#9814;</span></td><td id="B1"><span class="white knight">&#9816;</span></td><td id="C1"><span class="white bishop">&#9815;</span></td><td id="D1"><span class="white queen">&#9813;</span></td><td id="E1"><span class="white king">&#9812;</span></td><td id="F1"><span class="white bishop">&#9815;</span></td><td id="G1"><span class="white knight">&#9816;</span></td><td id="H1"><span class="white rook">&#9814;</span></td></tr></table></div>'),
    # Two examples from the last world championship
    'fen r1b1r1k1/2qn1ppp/1ppp4/p3p3/P2PP3/R4N1P/1PP2PP1/2BQR1K1 b - - 0 14   ' => test_zci("r-b-r-k-\n- qn-ppp\n ppp - -\np - p - \nP- PP- -\nR - -N-P\n PP- PP-\n- BQR K ", html => '<div class="zci--fenviewer"><table class="chess_board" cellpadding="0" cellspacing="0"><tr><td id="A8"><span class="black rook">&#9820;</span></td><td id="B8"><span class="empty"></span></td><td id="C8"><span class="black bishop">&#9821;</span></td><td id="D8"><span class="empty"></span></td><td id="E8"><span class="black rook">&#9820;</span></td><td id="F8"><span class="empty"></span></td><td id="G8"><span class="black king">&#9818;</span></td><td id="H8"><span class="empty"></span></td></tr><tr><td id="A7"><span class="empty"></span></td><td id="B7"><span class="empty"></span></td><td id="C7"><span class="black queen">&#9819;</span></td><td id="D7"><span class="black knight">&#9822;</span></td><td id="E7"><span class="empty"></span></td><td id="F7"><span class="black pawn">&#9823;</span></td><td id="G7"><span class="black pawn">&#9823;</span></td><td id="H7"><span class="black pawn">&#9823;</span></td></tr><tr><td id="A6"><span class="empty"></span></td><td id="B6"><span class="black pawn">&#9823;</span></td><td id="C6"><span class="black pawn">&#9823;</span></td><td id="D6"><span class="black pawn">&#9823;</span></td><td id="E6"><span class="empty"></span></td><td id="F6"><span class="empty"></span></td><td id="G6"><span class="empty"></span></td><td id="H6"><span class="empty"></span></td></tr><tr><td id="A5"><span class="black pawn">&#9823;</span></td><td id="B5"><span class="empty"></span></td><td id="C5"><span class="empty"></span></td><td id="D5"><span class="empty"></span></td><td id="E5"><span class="black pawn">&#9823;</span></td><td id="F5"><span class="empty"></span></td><td id="G5"><span class="empty"></span></td><td id="H5"><span class="empty"></span></td></tr><tr><td id="A4"><span class="white pawn">&#9817;</span></td><td id="B4"><span class="empty"></span></td><td id="C4"><span class="empty"></span></td><td id="D4"><span class="white pawn">&#9817;</span></td><td id="E4"><span class="white pawn">&#9817;</span></td><td id="F4"><span class="empty"></span></td><td id="G4"><span class="empty"></span></td><td id="H4"><span class="empty"></span></td></tr><tr><td id="A3"><span class="white rook">&#9814;</span></td><td id="B3"><span class="empty"></span></td><td id="C3"><span class="empty"></span></td><td id="D3"><span class="empty"></span></td><td id="E3"><span class="empty"></span></td><td id="F3"><span class="white knight">&#9816;</span></td><td id="G3"><span class="empty"></span></td><td id="H3"><span class="white pawn">&#9817;</span></td></tr><tr><td id="A2"><span class="empty"></span></td><td id="B2"><span class="white pawn">&#9817;</span></td><td id="C2"><span class="white pawn">&#9817;</span></td><td id="D2"><span class="empty"></span></td><td id="E2"><span class="empty"></span></td><td id="F2"><span class="white pawn">&#9817;</span></td><td id="G2"><span class="white pawn">&#9817;</span></td><td id="H2"><span class="empty"></span></td></tr><tr><td id="A1"><span class="empty"></span></td><td id="B1"><span class="empty"></span></td><td id="C1"><span class="white bishop">&#9815;</span></td><td id="D1"><span class="white queen">&#9813;</span></td><td id="E1"><span class="white rook">&#9814;</span></td><td id="F1"><span class="empty"></span></td><td id="G1"><span class="white king">&#9812;</span></td><td id="H1"><span class="empty"></span></td></tr></table></div>'),
    'fen    5rk1/4R1p1/3q1p2/p1p2P1p/P3Q2P/5pP1/2P2P1K/8 w - - 0 35' => test_zci(" - - rk-\n- - R p \n - q p -\np p -P-p\nP- -Q- P\n- - -pP \n -P- P K\n- - - - ", html => '<div class="zci--fenviewer"><table class="chess_board" cellpadding="0" cellspacing="0"><tr><td id="A8"><span class="empty"></span></td><td id="B8"><span class="empty"></span></td><td id="C8"><span class="empty"></span></td><td id="D8"><span class="empty"></span></td><td id="E8"><span class="empty"></span></td><td id="F8"><span class="black rook">&#9820;</span></td><td id="G8"><span class="black king">&#9818;</span></td><td id="H8"><span class="empty"></span></td></tr><tr><td id="A7"><span class="empty"></span></td><td id="B7"><span class="empty"></span></td><td id="C7"><span class="empty"></span></td><td id="D7"><span class="empty"></span></td><td id="E7"><span class="white rook">&#9814;</span></td><td id="F7"><span class="empty"></span></td><td id="G7"><span class="black pawn">&#9823;</span></td><td id="H7"><span class="empty"></span></td></tr><tr><td id="A6"><span class="empty"></span></td><td id="B6"><span class="empty"></span></td><td id="C6"><span class="empty"></span></td><td id="D6"><span class="black queen">&#9819;</span></td><td id="E6"><span class="empty"></span></td><td id="F6"><span class="black pawn">&#9823;</span></td><td id="G6"><span class="empty"></span></td><td id="H6"><span class="empty"></span></td></tr><tr><td id="A5"><span class="black pawn">&#9823;</span></td><td id="B5"><span class="empty"></span></td><td id="C5"><span class="black pawn">&#9823;</span></td><td id="D5"><span class="empty"></span></td><td id="E5"><span class="empty"></span></td><td id="F5"><span class="white pawn">&#9817;</span></td><td id="G5"><span class="empty"></span></td><td id="H5"><span class="black pawn">&#9823;</span></td></tr><tr><td id="A4"><span class="white pawn">&#9817;</span></td><td id="B4"><span class="empty"></span></td><td id="C4"><span class="empty"></span></td><td id="D4"><span class="empty"></span></td><td id="E4"><span class="white queen">&#9813;</span></td><td id="F4"><span class="empty"></span></td><td id="G4"><span class="empty"></span></td><td id="H4"><span class="white pawn">&#9817;</span></td></tr><tr><td id="A3"><span class="empty"></span></td><td id="B3"><span class="empty"></span></td><td id="C3"><span class="empty"></span></td><td id="D3"><span class="empty"></span></td><td id="E3"><span class="empty"></span></td><td id="F3"><span class="black pawn">&#9823;</span></td><td id="G3"><span class="white pawn">&#9817;</span></td><td id="H3"><span class="empty"></span></td></tr><tr><td id="A2"><span class="empty"></span></td><td id="B2"><span class="empty"></span></td><td id="C2"><span class="white pawn">&#9817;</span></td><td id="D2"><span class="empty"></span></td><td id="E2"><span class="empty"></span></td><td id="F2"><span class="white pawn">&#9817;</span></td><td id="G2"><span class="empty"></span></td><td id="H2"><span class="white king">&#9812;</span></td></tr><tr><td id="A1"><span class="empty"></span></td><td id="B1"><span class="empty"></span></td><td id="C1"><span class="empty"></span></td><td id="D1"><span class="empty"></span></td><td id="E1"><span class="empty"></span></td><td id="F1"><span class="empty"></span></td><td id="G1"><span class="empty"></span></td><td id="H1"><span class="empty"></span></td></tr></table></div>'),
    'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1' => undef,
    'fen' => undef,
    'fen   ' => undef,
);

done_testing;

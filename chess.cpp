#include <chess.hpp>
/**
 *  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
 *  call these methods.
 */

void db_array_to_board(uint8_t (&board)[8][8], uint8_t (&db_array)[64]) {
  uint8_t b = 0;
  uint8_t g = 0;

  for (uint8_t i = 0; i < 64; i++) {
    board[g][b] = db_array[i];
    if (b == 7) {
      g++;
      b = 0;
    } else {
      b++;
    }
  }
}

uint8_t get_piece_type(uint8_t piece) {
  uint8_t r;
  switch ( piece ) {
  case  11 ://king
  case  31 :
    r = 0;
    break;
  case  12 ://queen
  case  32 :
    r = 1;
    break;
  case  13 ://rook ♖
  case  14 :
  case  33 :
  case  34 :
    r = 2;
    break;
  case  15 ://bishops ♗
  case  16 :
  case  35 :
  case  36 :
    r = 3;
    break;
  case  17 ://knights ♘
  case  18 :
  case  37 :
  case  38 :
    r = 4;
    break;
  case  19 ://pawns ♙
  case  20 :
  case  21 :
  case  22 :
  case  23 :
  case  24 :
  case  25 :
  case  26 :
  case  39 :
  case  40 :
  case  41 :
  case  42 :
  case  43 :
  case  44 :
  case  45 :
  case  46 :
    r = 5;
    break;
  }
  return r;
}

void add_piece_config(uint8_t (&config_array)[6], const uint8_t (&piece_config)[6]) {
  for (uint8_t g = 0; g < 6; g++) {
    config_array[g] = piece_config[g];
  }
  uint8_t x = piece_config[0];
  (x > 10 && x < 27) ? x = 0 : x = 1;
  config_array[0] = x;
}

uint8_t piece_side(uint8_t piece) {
  if (piece != 0) {
    uint8_t x;
    (piece > 10 && piece < 27) ? x = 0 : x = 1;
    return x;
  } else {
    return 100;
  }
}

void detect_check(uint8_t (&board)[8][8], uint8_t king_pos_vert, uint8_t king_pos_hor, bool is_checked) {

  uint8_t king = board[king_pos_vert][king_pos_hor];
  uint8_t kingside = piece_side(king);
  uint8_t vert_plus_one = king_pos_vert+1;
  uint8_t vert_minus_one = king_pos_vert-1;
  uint8_t hor_plus_one = king_pos_hor+1;
  uint8_t hor_minus_one = king_pos_hor-1;

  uint8_t directions [8][2] = {
    {vert_plus_one, king_pos_hor}, //vert_top
    {vert_minus_one, king_pos_hor}, //vert_bottom
    {king_pos_vert, hor_minus_one}, //hor_right
    {king_pos_vert, hor_minus_one}, //hor_left
    {vert_plus_one, hor_plus_one}, //diag_top_right
    {vert_plus_one, hor_minus_one}, //diag_top_left
    {vert_minus_one, hor_plus_one}, //diag_bottom_right
    {vert_minus_one, hor_minus_one} //diag_bottom_left
  };

  uint8_t hor, vert, p_side, direction;

  for (uint8_t j = 0; j < 8; j++) {
    vert = directions[j][0];
    hor = directions[j][1];


    for (uint8_t jj = 0; jj < 7; jj++) {

      p_side = piece_side(board[vert][hor]);

      if (p_side == 100) {
        if (vert != king_pos_vert) {
          (vert > king_pos_vert) ? vert++ : vert--;
        }
        if (hor != king_pos_hor) {
          (hor > king_pos_hor) ? hor++ : hor--;
        }
        continue;
      }
      else if (p_side != kingside) {
        switch (get_piece_type(board[vert][hor])) {
        case 0:
          (!jj) ? is_checked = true : is_checked = false;
          break;
        case 1:
          is_checked = true;
          break;
        case 2:
          (j < 4) ? is_checked = true : is_checked = false;
          break;
        case 3:
          (j > 3) ? is_checked = true : is_checked = false;
          break;
        case 4:
          is_checked = false;
          break;
        case 5:
          if (!kingside ) {
            (!jj && j > 3 && j < 6) ? is_checked = true : is_checked = false;
          }
          else {
            (!jj && j > 5) ? is_checked = true : is_checked = false;
          }
          break;
        }
        if (is_checked) { return;}
      }
      else {
        break;
      }

    }//end step


  } //end direction
  //!check knight positions

}

void newmatch(Newmatch_message message) {
  eos::requireAuth( message.me );
  uint64_t matchid;
  match query;
  bool lastmatch = MainTable::back(query);
  (lastmatch) ? matchid = query.matchid + 1 : matchid = 0 ;
  uint64_t white;
  uint64_t black;
  if (message.side == 0) {
    white = message.me;
    black = message.opponent;
  } else {
    white = message.opponent;
    black = message.me;
  }

  match a = {matchid, white, black, 0, 1, 0, 0};
  a.check = 10;
  a.matchstart = now();
  a.kings[0] = 7;
  a.kings[1] = 3;
  a.kings[2] = 0;
  a.kings[3] = 3;
  uint8_t b = 0;
  uint8_t g = 0;
  for (uint8_t i = 0; i < 64; i++) {
    a.board[i] = FRESHBOARD[g][b];
    if (i < 16) {
      a.graveyard[i] = 0;
      if (i < 5) {
        a.lastmove[i] = 0;
        if (i < 4) {
          a.castling[i] = 0;
        }
      }
    }
    if (b == 7) {
      g++;
      b = 0;
    } else {
      b++;
    }

  }
  bool res =  MainTable::store(a);

  if (res == true) {
    eos::print( "Created new board", "\n" );
    //ask player2
  } else {
    eos::print( "Couldnt create new board", "\n" );
    //why?
  }

}

/*  void castling(Castling_message message) {
    eos::requireAuth( message.player );
    match query;
    query.matchid = message.matchid;
    bool matchexist = MainTable::get(query);
    //assert status if match was accpected needs method too
    assert( matchexist, "Match not found!" );
    assert( query.white == message.player || query.black == message.player, "Player not found!" );
    uint8_t playerside;
    (query.white == message.player) ?  playerside = 0 : playerside = 1;
    assert( playerside != query.lastmoveside, "It's not your turn!" );
    if (message.type) { //if short castling
      if (!playerside) { //if white
        assert(!query.castling[1], "Short castling is not possible either because it has already been done or the rook or king have been moved");
      }
      else {
        assert(!query.castling[3], "Short castling is not possible either because it has already been done or the rook or king have been moved");
      }
    }
    else {
      if (!playerside) {
        assert(!query.castling[0], "Long castling is not possible either because it has already been done or the rook or king have been moved");
      }
      else {
        assert(!query.castling[2], "Long castling is not possible either because it has already been done or the rook or king have been moved");
      }
    }
    uint8_t board[8][8];
    db_array_to_board(board, query.board);



  }*/


void movepiece(Move_message message) {
  eos::requireAuth( message.player );
  match query;
  query.matchid = message.matchid;
  bool matchexist = MainTable::get(query);
  //assert status if match was accpected needs method too
  assert( matchexist, "Match not found!" );
  assert( query.white == message.player || query.black == message.player, "Player not found!" );
  uint8_t playerside;
  (query.white == message.player) ?  playerside = 0 : playerside = 1;
  assert( playerside != query.lastmoveside, "It's not your turn!" );
  uint8_t board[8][8];
  db_array_to_board(board, query.board);
  uint8_t piece = board[message.steps[0]][message.steps[1]];
  assert( piece != 0 , "There is no piece on this position" );
  if (playerside == 0) {
    assert( piece_side(piece) == 0, "Piece belongs to opponent" );
  } else {
    assert( piece_side(piece) == 1, "Piece belongs to opponent" );
  }
  bool king = false;
  //piece side white 0 black 1,forward only,diagonal steps,vertical steps,horizontal steps,skip pieces(horse)
  uint8_t  piece_config[6];
  switch ( piece ) {
  case  11 ://king
    if (piece == 11) {query.castling[0] = 2; query.castling[1] = 2;}
  case  31 :
    if (piece == 31) {query.castling[2] = 2; query.castling[3] = 2;}
    add_piece_config(piece_config, {piece, 0, 1, 1, 1, 0});
    king = true;
    break;
  case  12 ://queen
  case  32 :
    add_piece_config(piece_config, {piece, 0, 7, 7, 7, 0});
    break;
  case  13 ://rook ♖
    if (piece == 13) {query.castling[0] = 2;}
  case  14 :
    if (piece == 14) {query.castling[1] = 2;}
  case  33 :
    if (piece == 33) {query.castling[3] = 2;}
  case  34 :
    if (piece == 34) {query.castling[2] = 2;}
    add_piece_config(piece_config, {piece, 0, 0, 7, 7, 0});
    break;
  case  15 ://bishops ♗
  case  16 :
  case  35 :
  case  36 :
    add_piece_config(piece_config, {piece, 0, 7, 0, 0, 0});
    break;
  case  17 ://knights ♘
  case  18 :
  case  37 :
  case  38 :
    add_piece_config(piece_config, {piece, 0, 0, 2, 2, 1});
    break;
  case  19 ://pawns ♙
  case  20 :
  case  21 :
  case  22 :
  case  23 :
  case  24 :
  case  25 :
  case  26 :
  case  39 :
  case  40 :
  case  41 :
  case  42 :
  case  43 :
  case  44 :
  case  45 :
  case  46 :
    // ALSO special bois !!!!!!!!!!!!!!!impl pawn promotion
    add_piece_config(piece_config, {piece, 1, 1, 1, 0, 0});
    break;
  }

  uint8_t horizontal_steps = 0;
  uint8_t vertical_steps = 0;
  uint8_t diagonal_steps = 0;
  uint8_t total_steps = 0;
  uint8_t last_position[2] = {message.steps[0], message.steps[1]};
  bool is_checked = false;
  uint8_t en_passant = 0;
  for (uint8_t x = 2; x < message.steps_len / 2; x += 2) {
    if (message.steps[x] == 10) {break;} //as for now 10 means end of steps
    uint8_t occ_piece = board[message.steps[x]][message.steps[x + 1]];

    assert( (int)message.steps[x] - (int)last_position[0] > -2 && (int)message.steps[x] - (int)last_position[0] < 2, "Vertical step is too far" );
    assert( (int)message.steps[x + 1] - (int)last_position[1] > -2 && (int)message.steps[x + 1] - (int)last_position[1] < 2, "Horinzontal step is too far" );

    if (message.steps[x] != last_position[0] && message.steps[x + 1] != last_position[1]) { //diagonal step
      if (piece_config[1]) {

        if (!playerside) { //if white
          assert((int)message.steps[x] - (int)last_position[0] < 0, "Pawn can only move in opponents direction");
          if (piece_side(occ_piece) == 100) { //if empty
            //en passant
            assert(query.lastmove[1] == 1 && query.lastmove[3] == 3 && query.lastmove[0] > 38 && query.lastmove[0] < 47 && message.steps[x] == 2 && message.steps[x + 1] == query.lastmove[4], "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
            en_passant = board[query.lastmove[3]][query.lastmove[4]];
          }
          else {
            assert(piece_side(occ_piece) , "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
          }

        } else {
          assert((int)message.steps[x] - (int)last_position[0] > 0, "Pawn can only move in opponents direction");
          if (piece_side(occ_piece) == 100) { //if empty
            //en passant
            assert(query.lastmove[1] == 6 && query.lastmove[3] == 4 && query.lastmove[0] > 18 && query.lastmove[0] < 27 && message.steps[x] == 5 && message.steps[x + 1] == query.lastmove[4], "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
            en_passant = board[query.lastmove[3]][query.lastmove[4]];
          }
          else {
            assert(!piece_side(occ_piece), "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
          }

        }
        piece_config[3] = 0;//remove vertical step
      }

      diagonal_steps++; total_steps++;
      assert(piece_config[2] >= diagonal_steps, "Piece cannot move diagonally or has no more diagonal steps left");
    }
    else if (message.steps[x] != last_position[0] && !diagonal_steps && message.steps[x + 1] == last_position[1]) { //vertical step

      if (piece_config[5] && !vertical_steps && horizontal_steps) {
        assert(horizontal_steps == 2, "Knight must have done two horizontal steps first");
      }
      if (piece_config[1]) {
        assert( piece_side(occ_piece) != 100, "Pawn can only move horinzontally if target field is not occupied");
        if (!playerside) { //if white
          assert((int)message.steps[x] - (int)last_position[0] < 0, "Pawn can only move in opponents direction");
          if (last_position[0] == 6) {
            piece_config[3] = 2; //increase to two steps
          }
        } else {
          assert((int)message.steps[x] - (int)last_position[0] > 0, "Pawn can only move in opponents direction");
          if (last_position[0] == 1) {
            piece_config[3] = 2; //increase to two steps
          }
        }

        piece_config[2] = 0;//remove diagonal step
      }

      vertical_steps++; total_steps++;
      assert(piece_config[3] >= vertical_steps, "Piece cannot move vertically or has no more vertical steps left");
    }
    else if (message.steps[x + 1] != last_position[1] && !diagonal_steps && message.steps[x] == last_position[0]) { //horizontal step

      if (piece_config[5] && !horizontal_steps && vertical_steps) {
        assert(vertical_steps == 2 , "Knight must have done two vertical steps first");
      }
      horizontal_steps++; total_steps++;

      assert(piece_config[4] >= horizontal_steps, "Piece cannot move horinzontally or has no more horizontal steps left");
    }

    if (piece_config[5] && total_steps < 3) {//knight is not fnished
      //update last position
      last_position[0] = message.steps[x];
      last_position[1] = message.steps[x + 1];
      continue;
    }

    if (piece_side(occ_piece) != 100) {//next piece is not empty
      if (piece_side(occ_piece) != playerside) {
        for (uint8_t uu = 0; uu < 16; uu++) { //add to graveyard
          if (query.graveyard[uu] == 0) {
            query.graveyard[uu] = occ_piece;
            board[message.steps[x]][message.steps[x + 1]] = 0; //remove from board
            break;// end of graveyard loop
          }
        }
        //change position on board
        board[last_position[0]][last_position[1]] = 0;
        board[message.steps[x]][message.steps[x + 1]] = piece;
        break;//end of steps loop
      }
      else {
        assert(false, "Piece cannot move through your own pieces.");
      }
    }
    else {
      if (en_passant) {
        for (uint8_t uu = 0; uu < 16; uu++) { //add to graveyard
          if (query.graveyard[uu] == 0) {
            query.graveyard[uu] = en_passant;
            board[query.lastmove[3]][query.lastmove[4]] = 0; //remove from board
            break;// end of graveyard loop
          }
        }
      }
    }

    //update last position
    last_position[0] = message.steps[x];
    last_position[1] = message.steps[x + 1];


    //break;

  }

  query.lastmove[0] = piece;
  query.lastmove[1] = message.steps[0];
  query.lastmove[2] = message.steps[1];
  query.lastmove[3] = last_position[0];
  query.lastmove[4] = last_position[1];

  if (!playerside) {
    if (king) {
      query.kings[0] = last_position[0];
      query.kings[1] = last_position[1];
    }
    detect_check(board, query.kings[0], query.kings[1], is_checked);
  }
  else {
    if (king) {
      query.kings[2] = last_position[0];
      query.kings[3] = last_position[1];
    }
    detect_check(board, query.kings[2], query.kings[3], is_checked);
  }

  assert(!is_checked, "You cannot end your move if your king is in check");


//IMPORTANT impl check method and after that castling

}



extern "C" {

  void init()  {
    /*  eos::print( "....................................................................................................", "\n" );
      eos::print( "....................................................................................................", "\n" );
      eos::print( "...................................----:::://///::::---.............................................", "\n" );
      eos::print( "..............................--://++ooooooooooooooo+++//:--........................................", "\n" );
      eos::print( "...........................-:/++oossssssssssssssssssssoooo++/:-....................................." , "\n");
      eos::print( "........................-:/+oos+-..........syyyyyyysso.........-:-..................................", "\n" );
      eos::print( ".............--.......-:+oosssy+`.``..-::/+yyyyyyyyyyo/:--.````.+/:-................................", "\n" );
      eos::print( ".....:-....:sdho-....:+osssyyyyyo+syyyyyyyyyyyyyyyyyyssssssso+/+oo++:-..............................", "\n" );
      eos::print( "...-ydho--sdddh+...-/ossyyyyyyyyyyyssssssssssssyyyyyysssooo++ooooooo+/-.............................", "\n" );
      eos::print( "...+hdho-/ddy+-.-://+syyyyyyyyyyssoooooooooooossyyyyssoooo++///++oooo++:............................" , "\n");
      eos::print( "...ohhs/.+dho-/hdmmdy++syyyyyysoooo+++++ossoo++osysssssssso/:----/+oooo+:...........................", "\n" );
      eos::print( ".../hdhs-/ds-odhhoodmds-ssso+/-.`         `.-://osssso+:.`         `.-::-.``........................", "\n" );
      eos::print( "...:yhyo:-yy-ss.-.`.::.         ``    ``        `--.`   `````````          `........................", "\n" );
      eos::print( "..../hdho-`-`-.-+ssssys-:-     ``````````````         ``````````````    -/:`........................", "\n" );
      eos::print( "....ohdhs:`  ``/+ooohds-sy/   ````````````````    -   ` ````````````   `o+/`........................", "\n" );
      eos::print( "...:yddhs:` ./hddhhddy+/yyy`   ````````````````  `:   ` ```````````` ` :o+/.........................", "\n" );
      eos::print( "..-ohddho-`/+ohdmmdy//yyyyy+     ````````````` ` +o`    ``````````.```:so+/.........................", "\n" );
      eos::print( "..-shhhy+.-s+/oyys++syyyyyyyo`    `````````.````+yys.    ````````````+ssso/.........................", "\n" );
      eos::print( ".-/+oss+.`//-.-/+osyyyyyyyyyys/`       ```````:syyyyy/.          `./ssssso:.........................", "\n" );
      eos::print( ".-+yhys+.`....-/+ossyyssyyyyyyys+:.      `.:+yyyyyyyyyso/:-....-://:/osss+-.........................", "\n" );
      eos::print( "....-::-......./++osssoo/-:/++oooosssoooossssssssssssoooo++//:::..:+++sss+.............---..........", "\n" );
      eos::print( "...............:/++ossooosso//sd++sss+osssooooo++oooo+osso:ss::::osssssso:............:hdho.........", "\n" );
      eos::print( "...............-:/+osssyyyyyyso+:/syhoyhdhyshhys+yyys+sys+:o+:+osooooooo+............`/ydds.........", "\n" );
      eos::print( "................-//+osssyyyyyyyys+ohh/syhy+ohhyo:yhhy+hdhs+ds+so++ooooo+-............`+hdds.........", "\n" );
      eos::print( ".................://+ossyyyyyyyyyysossdNNmhdNNmhyNNmdsNmho/ooo+/+oooo++:..............ohhy+.........", "\n" );
      eos::print( "..................:/+osssyyyyyssssyyysosyyshdmdysdddy+ysoooo+//+oo+++/-...............+yddy-........", "\n" );
      eos::print( "...................-/+oosssssyysso+osssyyssooooo++ooooosoo+::+ooo++/:-..............`-::-:+o//::-...", "\n" );
      eos::print( "....................-:/+ooosssssssso+++ossssyysssssssoo+///+oo+++/:-...............:./: .ohdddddds-.", "\n" );
      eos::print( "......................-:/+oooosssssssso+++++oooooo+++///++++++//:-................o/:/+`.+ydddddhs-." , "\n");
      eos::print( "........................-:/++oooooooooooooooo++++++++++++++//::-..................hy//:--:://///:...", "\n" );
      eos::print( "...........................-://++++ooooooooo++++++++++////:--.....................s:...::+sdmddddh+." , "\n");
      eos::print( "..............................--::////+++++++++/////:::--.........................--`:/-.:shddhdddo.", "\n" );
      eos::print( "....................................--------------....................................`.+ossso+/:-..", "\n" );
      eos::print( "......................................................................................`/ydmmmmmd+...", "\n" );
      eos::print( "........................................................................................:+osssso-...", "\n" );
      eos::print( "....................................................................................................", "\n" );
      eos::print( "....................................................................................................", "\n" );
      eos::print( "....................................................................................................", "\n" );*/
  }

  /// The apply method implements the dispatch of events to this contract
  void apply( uint64_t code, uint64_t action ) {


    if ( code == N(chess) ) {
      switch ( action ) {
      case N( newmatch ):
        eos::print("action newmatch ", "\n");
        newmatch( eos::currentMessage<Newmatch_message>() );
        break;
      case N( movepiece ):
        eos::print("action movepiece ", "\n");
        movepiece( eos::currentMessage<Move_message>() );
        break;
      /*case N( castling ):
        eos::print("action castling ", "\n");
        castling( eos::currentMessage<Castling_message>() );
        break;*/
      default :
        assert( false, "unknown action" );
      }
    }

  }
} // extern "C"



/*
[ black
0 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
1 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
2 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
3 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
4 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
5 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
6 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
7 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ]
] white

white pieces
king 11
queen 12
rooks 13,14
bishops 15,16
knights 17,18
pawns 19,20,21,22,23,24,25,26

black pieces
king 31
queen 32
rooks 33,34
bishops 35,36
knights 37,38
pawns 39,40,41,42,43,44,45,46


1 king
1 queen
2 rooks
2 bishops
2 knights
8 pawns
*/

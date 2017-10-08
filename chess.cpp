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



bool in_array(int (&arr)[], int size, int num) {
  for (uint8_t i = 0; i < size; ++i) {
    if (num == arr[i]) {
      return true;
    }
  }
  return false;
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

  a.matchstart = now();
  uint8_t b = 0;
  uint8_t g = 0;
  for (uint8_t i = 0; i < 64; i++) {
    a.board[i] = FRESHBOARD[g][b];
    if (i < 16) {
      a.graveyard[i] = 0;
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
  assert( playerside != query.lastmove, "It's not your turn!" );
  uint8_t board[8][8];
  db_array_to_board(board, query.board);
  uint8_t piece = board[message.steps[0]][message.steps[1]];
  assert( piece != 0 , "There is no piece on this position" );
  if (playerside == 0) {
    assert( piece_side(piece) == 0, "Piece belongs to opponent" );
  } else {
    assert( piece_side(piece) == 1, "Piece belongs to opponent" );
  }

  //piece side white 0 black 1,forward only,diagonal steps,vertical steps,horizontal steps,skip pieces
  uint8_t  piece_config[6];
  switch ( piece ) {
  case  11 ://king
  case  31 :
    add_piece_config(piece_config, {piece, 0, 1, 1, 1, 0});
    break;
  case  12 ://queen
  case  32 :
    add_piece_config(piece_config, {piece, 0, 7, 7, 7, 0});
    break;
  case  13 ://rook ♖
  case  14 :
  case  33 :
  case  34 :
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
    //special bois !!!!!!!!!!!!!!!
    add_piece_config(piece_config, {piece, 0, 0,/*NO*/ 0, /*NO*/0, 1});
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
    // ALSO special bois !!!!!!!!!!!!!!!
    add_piece_config(piece_config, {piece, 1, 0/*maybe yes*/, 1, 0, 0});
    break;
  }

  uint8_t horizontal_steps = 0; uint8_t vertical_steps = 0; uint8_t diagonal_steps = 0;
  uint8_t last_position[2] = {message.steps[0], message.steps[1]};

  for (uint8_t x = 2; x < message.steps_len; x += 2) {
    int pospos[3] = { -1, 0, 1};
    assert( (int)message.steps[x] - (int)last_position[0] > -2 && (int)message.steps[x] - (int)last_position[0] < 2, "Step is too far" );
    assert( (int)message.steps[x + 1] - (int)last_position[1] > -2 && (int)message.steps[x + 1] - (int)last_position[1] < 2,"Step is too far" );


    // uint8_t step = board[message.steps[0]][message.steps[1]];
    if (message.steps[x] != last_position[0] && message.steps[x + 1] != last_position[1]) {
      diagonal_steps++;
      assert(piece_config[2] >= diagonal_steps, "Piece cannot move diagonally");
    }
    else if (message.steps[x] != last_position[0] && diagonal_steps == 0) {
      vertical_steps++;
      assert(piece_config[3] >= vertical_steps, "Piece cannot move vertically");
    }
    else if (message.steps[x + 1] != last_position[1] && diagonal_steps == 0) {
      horizontal_steps++;
      assert(piece_config[4] <= horizontal_steps, "Piece cannot move horinzontally");
    }
    //made the move

    uint8_t next_piece = board[message.steps[x]][message.steps[x + 1]];

    if ( piece_side(next_piece) != 100) {//next piece is not empty
      if (piece_side(next_piece) != playerside ) {

        for (uint8_t uu = 0; uu < 16; uu++) { //add to graveyard
          if (query.graveyard[uu] == 0) {
            query.graveyard[uu] = next_piece;
            board[message.steps[x]][message.steps[x + 1]] = 0;//remove from board
            break;// end of graveyard loop
          }
        }
        break;//end of steps loop
      }
      else {
        assert(0, "Piece cannot move through your own pieces. You need to buy the jetpack dlc :)");
      }
    }
    break;

  }
//example move king:piece on 7,4 to 6,4
  /*
  message.steps = {7,4, 6,4}
  4,3-3,4= 1,-1
  4,3-4,4= 0,-1
  4,3-4,2= 0,1
  4,3-3,3= 1,0
  4,3-3,2= 1,1
  4,3-5,2= -1,1

  */
  /*[ black
  0 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
  1 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
  2 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
  3 [ 0 , 1 ,|2|,|3|,|4|, 5 , 6 , 7 ],
  4 [ 0 , 1 ,|2|,|3|,|4|, 5 , 6 , 7 ],
  5 [ 0 , 1 ,|2|,|3|,|4|, 5 , 6 , 7 ],
  6 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ],
  7 [ 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 ]
      0   1   2   3   4   5   6   7
  ] white

  */

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
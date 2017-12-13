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
  case  33 :
  case  37 :
  case  17 :
    r = 2;
    break;
  case  14 ://bishops ♗
  case  34 :
    r = 3;
    break;
  case  15 ://knights ♘
  case  35 :
    r = 4;
    break;
  case  16 ://pawns ♙
  case  36 :
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
  (x > 10 && x < 18) ? x = 0 : x = 1;
  config_array[0] = x;
}

uint8_t piece_side(uint8_t piece) {
  if (piece != 0) {
    uint8_t x;
    (piece > 10 && piece < 18) ? x = 0 : x = 1;
    return x;
  } else {
    return 100;
  }
}

void detect_check(uint8_t (&board)[8][8], uint8_t king_pos_vert, uint8_t king_pos_hor, bool &is_checked, bool kside) {
  uint8_t kingside;
  if(kside) {
    kingside = 1;
  } else {
    kingside = 0;
  }
  uint8_t vert_plus_one = king_pos_vert + 1;
  uint8_t vert_minus_one = king_pos_vert - 1;
  uint8_t hor_plus_one = king_pos_hor + 1;
  uint8_t hor_minus_one = king_pos_hor - 1;
  uint8_t directions [8][2] = {
    {vert_minus_one, king_pos_hor}, //vert_top0
    {vert_plus_one, king_pos_hor}, //vert_bottom1
    {king_pos_vert, hor_plus_one}, //hor_right2
    {king_pos_vert, hor_minus_one}, //hor_left3
    {vert_minus_one, hor_plus_one}, //diag_top_right4
    {vert_minus_one, hor_minus_one}, //diag_top_left5
    {vert_plus_one, hor_plus_one}, //diag_bottom_right6
    {vert_plus_one, hor_minus_one} //diag_bottom_left7
  };
  uint8_t hor, vert, p_side, direction;
  for (uint8_t j = 0; j < 8; j++) {
    vert = directions[j][0];
    hor = directions[j][1];
    for (uint8_t jj = 0; jj < 7; jj++) {
      p_side = piece_side(board[vert][hor]);
      if (vert < 0 || vert > 7 || hor < 0 || hor > 7) {
        break;
      }
      if (p_side == 100) {
        if (vert != king_pos_vert ) {
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
  //check knight positions
  uint8_t bad_boi;
  if (king_pos_vert > 1) {
    bad_boi = board[king_pos_vert - 2][king_pos_hor + 1];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
    bad_boi = board[king_pos_vert - 2][king_pos_hor - 1];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
  }
  if (king_pos_vert < 6) {
    bad_boi = board[king_pos_vert + 2][king_pos_hor + 1];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
    bad_boi = board[king_pos_vert + 2][king_pos_hor - 1];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
  }
  if (king_pos_hor < 6) {
    bad_boi = board[king_pos_vert + 1][king_pos_hor + 2];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
    bad_boi = board[king_pos_vert - 1][king_pos_hor + 2];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
  }
  if (king_pos_hor > 1) {
    bad_boi = board[king_pos_vert + 1][king_pos_hor - 2];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
    bad_boi = board[king_pos_vert - 1][king_pos_hor - 2];
    if (get_piece_type(bad_boi) == 4 && piece_side(bad_boi) != kingside) {
      is_checked = true;
      return;
    }
  }
}

void acceptmatch( Acceptmatch_message message ) {
  eosio::require_auth( message.player );
  matchrequest request;
  request.opponent = message.opponent;
  bool findrequest = RequestTable::get(request, message.player);
  assert(findrequest, "Could not find a request with that opponent.");
  assert(!request.status, "The match has already started or is over.");
  matchrequest requested;
  requested.opponent = message.player;
  bool findrequested = RequestedTable::get(requested, message.opponent);
  assert(findrequested, "Could not find a request with that opponent.");
  assert(!requested.status, "The match has already started or is over.");
  match umatch;
  umatch.matchid = requested.matchid;
  bool getmatch = MatchTable::get(umatch, message.opponent);
  request.status = 1;
  requested.status = 1;
  umatch.status = 1;
  bool updaterequest = RequestTable::update(request, message.player);
  bool updaterequested = RequestedTable::update(requested, message.opponent);
  bool updatematch = MatchTable::update(umatch, message.opponent);
  assert(updaterequest && updaterequested && updatematch && getmatch, "Could not update match status.");
}

void declinematch( Acceptmatch_message message ) {
  eosio::require_auth( message.player );
  matchrequest request;
  request.opponent = message.opponent;
  bool findrequest = RequestTable::get(request, message.player);
  assert(findrequest, "Could not find a request with that opponent.");
  assert(!request.status, "The match has already started or is over.");
  matchrequest requested;
  requested.opponent = message.player;
  bool findrequested = RequestedTable::get(requested, message.opponent);
  assert(findrequested, "Could not find a request with that opponent.");
  assert(!requested.status, "The match has already started or is over.");
  request.status = 2;
  requested.status = 2;
  bool updaterequest = RequestTable::update(request, message.player);
  bool updaterequested = RequestedTable::update(requested, message.opponent);
  assert(updaterequest && updaterequested, "Could not update match status.");
  match newmatch;
  newmatch.matchid = request.matchid;
  bool removematch = MatchTable::remove(newmatch, message.opponent);
  assert(removematch, "Could not remove match.");
}

void matchmaking( Matchmaking_message message ) {
  eosio::require_auth( message.player );
  Matchmaking_message ad;
  ad.player = message.player;
  ad.status = message.status;
  bool findad = MatchMakingTable::get(ad);
  if(findad) {
    bool updatead =  MatchMakingTable::update(ad);
  } else {
    bool publishad =  MatchMakingTable::store(ad);
  }
}

void claimwin( Claimwin_message message ) {
  eosio::require_auth( message.player );
  match query;
  query.matchid = message.matchid;
  bool findmatch = MatchTable::get(query, message.host);
  assert(findmatch, "Could not find match.");
  assert(query.white == message.player || query.black == message.player, "Could not find player in this match.");
  assert(query.status == 1, "The match is already over or has not been started.");
  uint32_t time = now();
  assert(time >= query.lastmovetime + query.maxmoveinterval, "Your opponent still has time left to make a move.");
  query.status = 3;
  matchrequest request;
  matchrequest requested;
  request.opponent = message.host;
  bool updaterequest =  RequestTable::update(request, query.opponent);
  requested.opponent = query.opponent;
  bool updaterequested =  RequestedTable::update(requested, message.host);
  bool updatematch =  MatchTable::update(query, message.host);
  assert(updaterequest && updaterequested && updatematch, "Could not update match and request.");
}

void newmatch(Newmatch_message message) {
  eosio::require_auth( message.player );
  matchrequest player;
  player.opponent = message.opponent;
  bool findrequested = RequestedTable::get(player, message.player);
  assert(message.maxmoveinterval, "You have to specify a max move interval in seconds.");
  assert(!findrequested, "You already sent a match reuqest to this player.");
  match id;
  int32_t findmatchid = back_i64( message.player, N(chess), N(matches), &id, sizeof(match) );
  player.matchid = (id.matchid) ? id.matchid + 1 : 1;
  player.opponentside = (message.side) ? 0 : 1;
  player.maxmoveinterval = message.maxmoveinterval;
  player.lastmovetime = 0;
  matchrequest opponent;
  opponent.opponent = message.player;
  opponent.matchid =  player.matchid;
  opponent.opponentside = (!message.side) ? 0 : 1;
  opponent.maxmoveinterval = message.maxmoveinterval;
  opponent.lastmovetime = 0;
  match newmatch;
  newmatch.matchid = player.matchid;
  bool findmatch = MatchTable::get(newmatch, message.player);
  assert(!findmatch, "Could not find previous match");
  newmatch.white = (!message.side) ? message.player : message.opponent;
  newmatch.black = (!message.side) ? message.opponent : message.player;
  newmatch.opponent = message.opponent;
  newmatch.maxmoveinterval = message.maxmoveinterval;
  newmatch.status = 0;
  newmatch.lastmoveside = 2;
  newmatch.moveswhite = 0;
  newmatch.movesblack = 0;
  newmatch.matchstart = 0;
  newmatch.check = 10;
  newmatch.kings[0] = 7;
  newmatch.kings[1] = 4;
  newmatch.kings[2] = 0;
  newmatch.kings[3] = 4;
  uint8_t new_board [8][8] = {
    {37, 35, 34, 32, 31, 34, 35, 33},
    {36, 36, 36, 36, 36, 36, 36, 36},
    { 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
    { 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
    { 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
    { 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
    {16, 16, 16, 16, 16, 16, 16, 16},
    {17, 15, 14, 12, 11, 14, 15, 13}
  };
  uint8_t b = 0;
  uint8_t g = 0;
  for (uint8_t i = 0; i < 64; i++) {
    newmatch.board[i] = new_board[g][b];
    if (b == 7) {
      g++;
      b = 0;
    } else {
      b++;
    }
  }
  newmatch.lastmove[0] = 10;
  newmatch.lastmove[1] = 10;
  newmatch.lastmove[2] = 10;
  newmatch.lastmove[3] = 10;
  newmatch.lastmove[4] = 10;
  newmatch.castling[0] = 0;
  newmatch.castling[1] = 0;
  newmatch.castling[2] = 0;
  newmatch.castling[3] = 0;
  bool storerequested =  RequestedTable::store(player, message.player);
  bool storerequest =  RequestTable::store(opponent, message.opponent);
  bool storematch =  MatchTable::store(newmatch, message.player);
  assert(storerequested && storerequest, "Could not store match request.");
  assert(storematch, "Could not store match.");
  eosio::print("Created match and match request successfully");
}

void castling(Castling_message message) {
  eosio::require_auth( message.player );
  match query;
  query.matchid = message.matchid;
  bool matchexist = MatchTable::get(query, message.host);
  assert( query.status == 1, "Match was not accepted or is already over.");
  assert( matchexist, "Match not found!");
  assert( query.white == message.player || query.black == message.player, "Player not found!");
  assert( query.white == message.host || query.black == message.host, "Host not found!");
  uint8_t playerside = (query.white == message.player) ?  0 : 1;
  assert( playerside != query.lastmoveside, "It's not your turn!");
  uint8_t board[8][8];
  db_array_to_board(board, query.board);
  bool is_checked = false;
  if (message.type) { //if short castling
    if (!playerside) { //if white
      assert(!query.castling[1] && !board[7][5] && !board[7][6], "Short castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between.");
      detect_check(board, 7, 4, is_checked, 0);
      assert( !is_checked, "Cannot castle while checked.");
      detect_check(board, 7, 5, is_checked, 0);
      detect_check(board, 7, 6, is_checked, 0);
      assert(!is_checked, "Short castling is not possible because king would be checked while moving to the end position.");
      detect_check(board, 7, 7, is_checked, 0);
      assert(!is_checked, "Short castling is not possible because king would be checked at the end of the move.");
      board[7][4] = 0;
      board[7][5] = 13;
      board[7][6] = 11;
      board[7][7] = 0;
      query.castling[0] = 1;
      query.castling[1] = 2;
      query.kings[1] = 6;
    }
    else {
      assert(!query.castling[3] && !board[0][5] && !board[0][6], "Short castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between");
      detect_check(board, 0, 4, is_checked, 1);
      assert( !is_checked, "Cannot castle while checked.");
      detect_check(board, 0, 5, is_checked, 1);
      detect_check(board, 0, 6, is_checked, 1);
      assert(!is_checked, "Short castling is not possible because king would be checked while moving to the end position.");
      detect_check(board, 0, 7, is_checked, 1);
      assert(!is_checked, "Short castling is not possible because king would be checked at the end of the move.");
      board[0][4] = 0;
      board[0][5] = 33;
      board[0][6] = 31;
      board[0][7] = 0;
      query.castling[2] = 1;
      query.castling[3] = 2;
      query.kings[3] = 6;
    }
  }
  else {
    if (!playerside) {
      assert(!query.castling[0] && !board[7][1] && !board[7][2] && !board[7][3], "Long castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between.");
      detect_check(board, 7, 4, is_checked, 0);
      assert( !is_checked, "Cannot castle while checked.");
      detect_check(board, 7, 1, is_checked, 0);
      detect_check(board, 7, 2, is_checked, 0);
      detect_check(board, 7, 3, is_checked, 0);
      assert(!is_checked, "Short castling is not possible because king would be checked while moving to the end position.");
      detect_check(board, 7, 0, is_checked, 0);
      assert(!is_checked, "Short castling is not possible because king would be checked at the end of the move.");
      board[7][4] = 0;
      board[7][3] = 17;
      board[7][2] = 11;
      board[7][1] = 0;
      board[7][0] = 0;
      query.castling[0] = 2;
      query.castling[1] = 1;
      query.kings[1] = 2;
    }
    else {
      assert(!query.castling[2] && !board[0][1] && !board[0][2] && !board[0][3], "Long castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between.");
      detect_check(board, 0, 4, is_checked, 1);
      assert( !is_checked, "Cannot castle while checked.");
      detect_check(board, 0, 1, is_checked, 1);
      detect_check(board, 0, 2, is_checked, 1);
      detect_check(board, 0, 3, is_checked, 1);
      assert(!is_checked, "Short castling is not possible because king would be checked while moving to the end position.");
      detect_check(board, 0, 0, is_checked, 1);
      assert(!is_checked, "Short castling is not possible because king would be checked at the end of the move.");
      board[0][4] = 0;
      board[0][3] = 37;
      board[0][2] = 31;
      board[0][1] = 0;
      board[0][0] = 0;
      query.castling[2] = 2;
      query.castling[3] = 1;
      query.kings[3] = 2;
    }
  }
  query.lastmoveside = playerside;
  query.lastmovetime = now();
  uint8_t b = 0;
  uint8_t g = 0;
  for (uint8_t i = 0; i < 64; i++) {
    query.board[i] = board[g][b];
    if (b == 7) {
      g++;
      b = 0;
    } else {
      b++;
    }
  }
  matchrequest request;
  matchrequest requested;
  if (query.white == message.host) {
    request.opponentside = 0;
    requested.opponentside = 1;
  } else {
    request.opponentside = 1;
    requested.opponentside = 0;
  }
  request.opponent = message.host;
  request.maxmoveinterval = query.maxmoveinterval;
  request.matchid = query.matchid;
  request.lastmovetime = query.lastmovetime;
  request.status = 1;
  request.matchstart = query.matchstart;
  requested.opponent = query.opponent;
  requested.matchid = query.matchid;
  requested.lastmovetime = query.lastmovetime;
  requested.maxmoveinterval = query.maxmoveinterval;
  requested.status = 1;
  requested.matchstart = query.matchstart;
  bool updaterequest =  RequestTable::update(request, query.opponent);
  bool updaterequested =  RequestedTable::update(requested, message.host);
  bool updatematch =  MatchTable::update(query, message.host);
  assert(updaterequest && updaterequested && updatematch, "Could not update match and request.");
}

void movepiece(Move_message message) {
  eosio::require_auth( message.player );
  match query;
  query.matchid = message.matchid;
  bool matchexist = MatchTable::get(query, message.host);
  assert( query.status == 1, "Match was not accepted or is already over" );
  assert( matchexist, "Match not found!" );
  assert( query.white == message.player || query.black == message.player, "Player not found!" );
  assert( query.white == message.host || query.black == message.host, "Host not found!" );
  matchrequest request;
  request.opponent = message.host;
  matchrequest requested;
  requested.opponent = query.opponent;
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
    assert(query.lastmoveside == 0, "It's not your turn!" );
    assert( piece_side(piece) == 1, "Piece belongs to opponent" );
  }
  bool king = false;
  //piece side white 0 black 1,forward only,diagonal steps,vertical steps,horizontal steps,skip pieces(horse)
  uint8_t  piece_config[6];
  uint8_t piece_type = get_piece_type(piece);
  switch (piece_type) {
  case 0:
    if (piece == 11) {
      query.castling[0] = 2; query.castling[1] = 2;
    }
    else {
      query.castling[2] = 2; query.castling[3] = 2;
    }
    add_piece_config(piece_config, {piece, 0, 1, 1, 1, 0});
    king = true;
    break;
  case 1:
    add_piece_config(piece_config, {piece, 0, 7, 7, 7, 0});
    break;
  case 2:
    if (piece == 13) {
      query.castling[0] = 2;
    }
    else if (piece == 17) {
      query.castling[1] = 2;
    }
    else if (piece == 33) {
      query.castling[3] = 2;
    }
    else if (piece == 37) {
      query.castling[2] = 2;
    }
    add_piece_config(piece_config, {piece, 0, 0, 7, 7, 0});
    break;
  case 3:
    add_piece_config(piece_config, {piece, 0, 7, 0, 0, 0});
    break;
  case 4:
    add_piece_config(piece_config, {piece, 0, 0, 2, 2, 1});
    break;
  case 5:
    add_piece_config(piece_config, {piece, 1, 1, 1, 0, 0});
    break;
  }
  uint8_t occ_piece;
  uint8_t horizontal_steps = 0;
  uint8_t vertical_steps = 0;
  uint8_t diagonal_steps = 0;
  uint8_t total_steps = 0;
  uint8_t last_position[2] = {message.steps[0], message.steps[1]};
  uint8_t en_passant = 0;
  uint8_t promotion_piece;
  for (uint8_t x = 2; x < 17; x += 2) {
    if (message.steps[x] > 7) {
      promotion_piece = message.steps[x];
      break;
    } //as for now 10 means end of steps
    occ_piece = board[message.steps[x]][message.steps[x + 1]];
    assert( (int)message.steps[x] - (int)last_position[0] > -2 && (int)message.steps[x] - (int)last_position[0] < 2, "Vertical step is too far" );
    assert( (int)message.steps[x + 1] - (int)last_position[1] > -2 && (int)message.steps[x + 1] - (int)last_position[1] < 2, "Horinzontal step is too far" );
    if (message.steps[x] != last_position[0] && message.steps[x + 1] != last_position[1]) { //diagonal step
      if (piece_config[1]) {
        if (!playerside) { //if white
          assert((int)message.steps[x] - (int)last_position[0] < 0, "Pawn can only move in opponents direction");
          if (piece_side(occ_piece) == 100) { //if empty
            //en passant
            assert(query.lastmove[1] == 1 && query.lastmove[3] == 3 && query.lastmove[0] == 36 && message.steps[x] == 2 && message.steps[x + 1] == query.lastmove[4], "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
            en_passant = board[query.lastmove[3]][query.lastmove[4]];
          }
          else {
            assert(piece_side(occ_piece) , "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
          }
        }
        else {
          assert((int)message.steps[x] - (int)last_position[0] > 0, "Pawn can only move in opponents direction");
          if (piece_side(occ_piece) == 100) { //if empty
            //en passant
            assert(query.lastmove[1] == 6 && query.lastmove[3] == 4 && query.lastmove[0] == 16 && message.steps[x] == 5 && message.steps[x + 1] == query.lastmove[4], "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation");
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
        assert( piece_side(occ_piece) == 100, "Pawn can only move horinzontally if target field is not occupied");
        if (!playerside) { //if white
          assert((int)message.steps[x] - (int)last_position[0] < 0, "Pawn can only move in opponents direction");
          if (last_position[0] == 6) {
            piece_config[3] = 2; //increase to two steps
          }
        }
        else {
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
        board[last_position[0]][last_position[1]] = 0;
        board[message.steps[x]][message.steps[x + 1]] = piece;
        last_position[0] = message.steps[x];
        last_position[1] = message.steps[x + 1];
        break;//end of steps loop
      }
      assert(false, "Piece cannot move through your own pieces.");
    }
    else {
      if (en_passant) {
        board[query.lastmove[3]][query.lastmove[4]] = 0; //remove from board
      }
      board[message.steps[x]][message.steps[x + 1]] = piece;
      if(!piece_config[5]) {
        board[message.steps[x - 2]][message.steps[x - 1]] = 0;
      }
    }
    //update last position
    last_position[0] = message.steps[x];
    last_position[1] = message.steps[x + 1];
  }

  if (piece_config[1]) {
    if (last_position[0] == 0 || last_position[0] == 7 ) {
      if (piece_config[0] == piece_side(promotion_piece)) {
        piece = promotion_piece;
      }
    }
  }
  board[message.steps[0]][message.steps[1]] = 0;
  query.lastmove[0] = piece;
  query.lastmove[1] = message.steps[0];
  query.lastmove[2] = message.steps[1];
  query.lastmove[3] = last_position[0];
  query.lastmove[4] = last_position[1];
  bool is_checked = false;
  if (!playerside) {
    query.moveswhite++;
    if (king) {
      query.kings[0] = last_position[0];
      query.kings[1] = last_position[1];
    }
    detect_check(board, query.kings[0], query.kings[1], is_checked, 0);
  }
  else {
    query.movesblack++;
    if (king) {
      query.kings[2] = last_position[0];
      query.kings[3] = last_position[1];
    }
    detect_check(board, query.kings[2], query.kings[3], is_checked, 1);
  }
  assert(!is_checked, "You cannot end your move if your king is in check");
  query.lastmoveside = playerside;
  query.lastmovetime = now();
  uint8_t b = 0;
  uint8_t g = 0;
  for (uint8_t i = 0; i < 64; i++) {
    query.board[i] = board[g][b];
    if (b == 7) {
      g++;
      b = 0;
    } else {
      b++;
    }
  }

  if (query.matchstart == 0) {
    query.matchstart = now();
  }
  if (query.white == message.host) {
    request.opponentside = 0;
    requested.opponentside = 1;
  } else {
    request.opponentside = 1;
    requested.opponentside = 0;
  }
  request.maxmoveinterval = query.maxmoveinterval;
  request.matchid = query.matchid;
  request.lastmovetime = query.lastmovetime;
  request.status = 1;
  request.matchstart = query.matchstart;
  requested.matchid = query.matchid;
  requested.lastmovetime = query.lastmovetime;
  requested.maxmoveinterval = query.maxmoveinterval;
  requested.status = 1;
  requested.matchstart = query.matchstart;
  bool updaterequest =  RequestTable::update(request, query.opponent);
  bool updaterequested =  RequestedTable::update(requested, message.host);
  bool updatematch =  MatchTable::update(query, message.host);
  assert(updaterequest && updaterequested && updatematch, "Could not update match and request.");
}

extern "C" {

  void init()  {

  }
  /// The apply method implements the dispatch of events to this contract
  void apply( uint64_t code, uint64_t action ) {
    if ( code == N(chess) ) {
      switch ( action ) {
      case N( newmatch ):
        newmatch( eosio::current_message<Newmatch_message>() );
        break;
      case N( acceptmatch ):
        acceptmatch( eosio::current_message<Acceptmatch_message>() );
        break;
        case N( declinematch ):
        declinematch( eosio::current_message<Acceptmatch_message>() );
        break;
      case N( movepiece ):
        movepiece( eosio::current_message<Move_message>() );
        break;
      case N( castling ):
        castling( eosio::current_message<Castling_message>() );
        break;
      case N( claimwin ):
        claimwin( eosio::current_message<Claimwin_message>() );
        break;
        case N( matchmaking ):
          matchmaking( eosio::current_message<Matchmaking_message>() );
          break;
      default :
        assert( false, "unknown action" );
      }
    }
  }
} // extern "C"

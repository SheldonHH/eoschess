#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>


struct PACKED ( Newmatch_message ) {
								account_name player;
								uint8_t side;
								account_name opponent;
								uint32_t maxmoveinterval;
};

struct PACKED ( Claimwin_message ) {
								uint64_t matchid;
								account_name player;
								account_name host;
};

struct PACKED ( Acceptmatch_message ) {
								account_name player;
								account_name opponent;
};

struct PACKED ( Move_message ) {
								uint64_t matchid;
								uint8_t steps_len = 17;
								uint8_t steps[17];
								account_name player;
								account_name host;
};

struct PACKED ( Matchmaking_message ) {
								account_name player;
								uint8_t status;
};

struct PACKED ( matchrequest ) {
								account_name opponent;
								uint64_t matchid;
								uint8_t opponentside;
								uint32_t maxmoveinterval;
								uint32_t lastmovetime;
								uint8_t status;
								uint32_t matchstart;
};

struct PACKED ( Castling_message ) {
								uint64_t matchid;
								uint8_t type;
								account_name player;
								account_name host;
};

struct PACKED ( match ) {
								uint64_t matchid;
								account_name opponent;
								account_name white;
								account_name black;
								uint8_t status;// 0 started  1 accepted 2 denied 3 game over 4 aborted?
								uint8_t lastmoveside;// 0 white,1 black
								uint64_t moveswhite;
								uint64_t movesblack;
								uint32_t matchstart;//unix
								uint8_t check;
								uint8_t kings_len = 4;
								uint8_t kings[4];
								uint8_t board_len = 64;
								uint8_t board[64];
								uint8_t lastmove_len = 5;
								uint8_t lastmove[5];// {piece, move_start_position_vertical, move_start_position_horizontal, move_end_position_vertical, move_end_position_horizontal}2 not possible bc of movement,0 still possible, 1 executed
								uint32_t lastmovetime;
								uint32_t maxmoveinterval;//max time in seconds before a move has to be made
								uint8_t castling_len = 4;
								uint8_t castling[4];// {long castle white, short castling white, long castle black, short castling black}
};

typedef eosio::table<N(chess), N(chess), N(matchmaking), Matchmaking_message, account_name> MatchMakingTable;
typedef eosio::table<N(chess), N(chess), N(matches), match, uint64_t> MatchTable;
typedef eosio::table<N(chess), N(chess), N(requests), matchrequest, account_name> RequestTable;
typedef eosio::table<N(chess), N(chess), N(requested), matchrequest, account_name> RequestedTable;

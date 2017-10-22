#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>


struct PACKED( Newmatch_message ) {
	AccountName player;
	uint8_t side;//0white
	AccountName opponent;
	uint32_t maxmoveinterval;
};

struct PACKED( Claimwin_message ) {
	uint64_t matchid;
	AccountName player;
};

struct PACKED( Acceptmatch_message ) {
	uint64_t matchid;
	uint8_t accept; //1 accept
	AccountName player;
};

struct PACKED( Move_message ) {
	uint64_t	matchid;
	uint8_t steps_len = 16;
	uint8_t steps[16];
	AccountName	player;
};

struct PACKED( Castling_message ) {
	uint64_t	matchid;
	uint8_t 	type; //0 long castle, 1 short castle
	AccountName	player;
};

struct PACKED( match ) {
	uint64_t	matchid;
	AccountName white;
	AccountName  black;
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

typedef Table<N(chess), N(chess), N(matches), match, uint64_t> MainTable;

/*
uint8_t FRESHBOARD [8][8] = {
	{37, 35, 34, 32, 31, 34, 35, 33},
	{36, 36, 36, 36, 36, 36, 36, 36},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{16, 16, 16, 16, 16, 16, 16, 16},
	{17, 15, 14, 12, 11, 14, 15, 13}
};*/


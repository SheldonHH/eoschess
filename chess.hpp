#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>


struct PACKED( Newmatch_message ) {
	AccountName player;
	uint8_t side;//0white
	AccountName opponent;
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
	uint8_t status;// 0 started 1 accepted 2 tie 3 game over 4 aborted?
	uint8_t lastmoveside;// 0 white,1 black
	uint64_t moveswhite;
	uint64_t movesblack;
	uint32_t matchstart;//unix
	uint8_t check;
	uint8_t kings_len = 4;
	uint8_t kings[4];
	uint8_t board_len = 64;
	uint8_t board[64];
	uint8_t graveyard_len = 16;
	uint8_t graveyard[16];
	uint8_t lastmove_len = 5;
	uint8_t lastmove[5];// {piece, move_start_position_vertical, move_start_position_horizontal, move_end_position_vertical, move_end_position_horizontal}2 not possible bc of movement,0 still possible, 1 executed
	uint8_t castling_len = 4;
	uint8_t castling[4];// {long castle white, short castling white, long castle black, short castling black}

};

typedef Table<N(chess), N(chess), N(matches), match, uint64_t> MainTable;


uint8_t FRESHBOARD [8][8] = {
	{33, 37, 35, 32, 31, 36, 38, 34},
	{39, 40, 41, 42, 43, 44, 45, 46},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{ 0 , 0 , 0 , 0, 0 , 0 , 0 , 0},
	{19, 20, 21, 22, 23, 24, 25, 26},
	{13, 17, 15, 12, 11, 16, 18, 14}
};


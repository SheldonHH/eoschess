#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>


struct PACKED( Newmatch_message ) {
	AccountName me;
	uint8_t side;//0white
	AccountName opponent;
};
struct PACKED( Move_message ) {
	uint64_t	matchid;
	uint8_t steps_len = 16;
	uint8_t steps[16];

	AccountName	player;
};
struct PACKED( match ) {
	uint64_t	matchid;
	AccountName white;
	AccountName  black;
	uint8_t status;//0 started 1 accepted 2 tie 3 game over 4 aborted?
	uint8_t lastmove;
	uint64_t moveswhite;
	uint64_t movesblack;
	uint8_t board_len = 64;
	uint8_t board[64];
	uint64_t matchstart;//unix
		uint8_t graveyard_len = 16;
	uint8_t graveyard[16];
};

typedef Table<N(chess), N(chess), N(matches), match, uint64_t> MainTable;


 uint8_t FRESHBOARD [8][8] = {
	//black
	{33, 37, 35, 32, 31, 36, 38, 34},
	{39, 40, 41, 42, 43, 44, 45, 46},
	{0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0},
	{19, 20, 21, 22, 23, 24, 25, 26},
	{13, 17, 15, 12, 11, 16, 18, 14}
	//white
};

*/

(module
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ijjii (func (param i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijji (func (param i64 i64 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "assert" (func $assert (param i32 i32)))
 (import "env" "load_i64" (func $load_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "now" (func $now (result i32)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "read_message" (func $read_message (param i32 i32) (result i32)))
 (import "env" "remove_i64" (func $remove_i64 (param i64 i64 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "store_i64" (func $store_i64 (param i64 i64 i32 i32) (result i32)))
 (import "env" "update_i64" (func $update_i64 (param i64 i64 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "\80K\00\00")
 (data (i32.const 16) "{\"reason\": \"Could not find a request with that opponent.\"}\00")
 (data (i32.const 80) "{\"reason\": \"The match has already started or is over.\"}\00")
 (data (i32.const 144) "{\"reason\": \"Could not update match status.\"}\00")
 (data (i32.const 192) "{\"reason\": \"Could not remove match.\"}\00")
 (data (i32.const 240) "{\"reason\": \"Could not find match.\"}\00")
 (data (i32.const 288) "Could not find player in this match.\"}\00")
 (data (i32.const 336) "{\"reason\": \"The match is already over or has not been started.\"}\00")
 (data (i32.const 416) "{\"reason\": \"Your opponent still has time left to make a move.\"}\00")
 (data (i32.const 480) "{\"reason\": \"Could not update match and request.\"}\00")
 (data (i32.const 544) "{\"reason\": \"You have to specify a max move interval in seconds.\"}\00")
 (data (i32.const 624) "{\"reason\": \"You already sent a match reuqest to this player.\"}\00")
 (data (i32.const 688) "{\"reason\": \"You can only create one new match per second.\"}\00")
 (data (i32.const 752) "{\"reason\": \"Could not store match request.\"}\00")
 (data (i32.const 800) "{\"reason\": \"Something went wrong.\"}\00")
 (data (i32.const 848) "Created match and match request successfully\00")
 (data (i32.const 896) "%#\" \1f\"#!$$$$$$$$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\10\10\10\10\10\10\10\11\0f\0e\0c\0b\0e\0f\0d")
 (data (i32.const 960) "{\"reason\": \"Match was not accepted or is already over.\"}\00")
 (data (i32.const 1024) "{\"reason\": \"Match not found!\"}\00")
 (data (i32.const 1056) "{\"reason\": \"Player not found!\"}\00")
 (data (i32.const 1088) "{\"reason\": \"It\'s not your turn!\"}\00")
 (data (i32.const 1136) "{\"reason\": \"Short castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between.\"}\00")
 (data (i32.const 1296) "{\"reason\": \"Cannot castle while checked.\"}\00")
 (data (i32.const 1344) "{\"reason\": \"Short castling is not possible because king would be checked while moving to the end position.\"}\00")
 (data (i32.const 1456) "{\"reason\": \"Short castling is not possible because king would be checked at the end of the move.\"}\00")
 (data (i32.const 1568) "{\"reason\": \"Short castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between\00")
 (data (i32.const 1728) "{\"reason\": \"Long castling is not possible either because it has already been done or the rook or king have been moved or there are other pieces in between.\"}\00")
 (data (i32.const 1888) "Match was not accepted or is already over\00")
 (data (i32.const 1936) "Match not found!\00")
 (data (i32.const 1968) "Player not found!\00")
 (data (i32.const 2000) "It\'s not your turn!\00")
 (data (i32.const 2032) "There is no piece on this position\00")
 (data (i32.const 2080) "Piece belongs to opponent\00")
 (data (i32.const 2112) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00")
 (data (i32.const 2144) "Vertical step is too far\00")
 (data (i32.const 2176) "Horinzontal step is too far\00")
 (data (i32.const 2208) "Pawn can only move in opponents direction\00")
 (data (i32.const 2256) "Pawn can only move diagonally if an opponent piece is occupying the target field or in an en passant situation\00")
 (data (i32.const 2368) "Piece cannot move diagonally or has no more diagonal steps left\00")
 (data (i32.const 2432) "Knight must have done two horizontal steps first\00")
 (data (i32.const 2496) "Pawn can only move horinzontally if target field is not occupied\00")
 (data (i32.const 2576) "Piece cannot move vertically or has no more vertical steps left\00")
 (data (i32.const 2640) "Knight must have done two vertical steps first\00")
 (data (i32.const 2688) "Piece cannot move horinzontally or has no more horizontal steps left\00")
 (data (i32.const 2768) "Piece cannot move through your own pieces.\00")
 (data (i32.const 2816) "You cannot end your move if your king is in check\00")
 (data (i32.const 2880) "chess\00")
 (data (i32.const 2896) "message shorter than expected\00")
 (data (i32.const 2928) "unknown action\00")
 (export "memory" (memory $0))
 (export "_Z17db_array_to_boardRA8_A8_hRA64_h" (func $_Z17db_array_to_boardRA8_A8_hRA64_h))
 (export "_Z14get_piece_typeh" (func $_Z14get_piece_typeh))
 (export "_Z16add_piece_configRA6_hRA6_Kh" (func $_Z16add_piece_configRA6_hRA6_Kh))
 (export "_Z10piece_sideh" (func $_Z10piece_sideh))
 (export "_Z12detect_checkRA8_A8_hhhRbb" (func $_Z12detect_checkRA8_A8_hhhRbb))
 (export "_Z11acceptmatch19Acceptmatch_message" (func $_Z11acceptmatch19Acceptmatch_message))
 (export "_Z12declinematch19Acceptmatch_message" (func $_Z12declinematch19Acceptmatch_message))
 (export "_Z11matchmaking19Matchmaking_message" (func $_Z11matchmaking19Matchmaking_message))
 (export "_Z8claimwin16Claimwin_message" (func $_Z8claimwin16Claimwin_message))
 (export "_Z8newmatch16Newmatch_message" (func $_Z8newmatch16Newmatch_message))
 (export "_Z8castling16Castling_message" (func $_Z8castling16Castling_message))
 (export "_Z9movepiece12Move_message" (func $_Z9movepiece12Move_message))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $_Z17db_array_to_boardRA8_A8_hRA64_h (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.const 0)
  )
  (set_local $5
   (i32.const 0)
  )
  (loop $label$0
   (i32.store8
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 255)
       )
       (i32.const 3)
      )
     )
     (tee_local $2
      (i32.and
       (get_local $5)
       (i32.const 255)
      )
     )
    )
    (i32.load8_u
     (i32.add
      (get_local $1)
      (get_local $3)
     )
    )
   )
   (set_local $5
    (select
     (i32.const 0)
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
     (tee_local $2
      (i32.eq
       (get_local $2)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $4)
    )
   )
   (br_if $label$0
    (i32.ne
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
 )
 (func $_Z14get_piece_typeh (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $0
      (i32.add
       (get_local $0)
       (i32.const -12)
      )
     )
     (i32.const 25)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_table $label$4 $label$5 $label$3 $label$2 $label$1 $label$5 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$0 $label$4 $label$5 $label$3 $label$2 $label$1 $label$5 $label$4
         (get_local $0)
        )
       )
       (set_local $1
        (i32.const 2)
       )
       (br $label$0)
      )
      (set_local $1
       (i32.const 1)
      )
      (br $label$0)
     )
     (set_local $1
      (i32.const 3)
     )
     (br $label$0)
    )
    (set_local $1
     (i32.const 4)
    )
    (br $label$0)
   )
   (set_local $1
    (i32.const 5)
   )
  )
  (i32.and
   (get_local $1)
   (i32.const 255)
  )
 )
 (func $_Z16add_piece_configRA6_hRA6_Kh (param $0 i32) (param $1 i32)
  (i32.store8
   (get_local $0)
   (i32.load8_u
    (get_local $1)
   )
  )
  (i32.store8 offset=1
   (get_local $0)
   (i32.load8_u offset=1
    (get_local $1)
   )
  )
  (i32.store8 offset=2
   (get_local $0)
   (i32.load8_u offset=2
    (get_local $1)
   )
  )
  (i32.store8 offset=3
   (get_local $0)
   (i32.load8_u offset=3
    (get_local $1)
   )
  )
  (i32.store8 offset=4
   (get_local $0)
   (i32.load8_u offset=4
    (get_local $1)
   )
  )
  (i32.store8 offset=5
   (get_local $0)
   (i32.load8_u offset=5
    (get_local $1)
   )
  )
  (i32.store8
   (get_local $0)
   (i32.gt_u
    (i32.and
     (i32.add
      (i32.load8_u
       (get_local $1)
      )
      (i32.const -11)
     )
     (i32.const 255)
    )
    (i32.const 6)
   )
  )
 )
 (func $_Z10piece_sideh (param $0 i32) (result i32)
  (select
   (i32.gt_u
    (i32.and
     (i32.add
      (get_local $0)
      (i32.const -11)
     )
     (i32.const 255)
    )
    (i32.const 6)
   )
   (i32.const 100)
   (get_local $0)
  )
 )
 (func $_Z12detect_checkRA8_A8_hhhRbb (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (i32.store8 offset=1
   (tee_local $18
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
   (get_local $2)
  )
  (i32.store8 offset=3
   (get_local $18)
   (get_local $2)
  )
  (i32.store8 offset=4
   (get_local $18)
   (get_local $1)
  )
  (i32.store8 offset=6
   (get_local $18)
   (get_local $1)
  )
  (i32.store8
   (get_local $18)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const -1)
    )
   )
  )
  (i32.store8 offset=2
   (get_local $18)
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (i32.store8 offset=5
   (get_local $18)
   (tee_local $7
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (i32.store8 offset=7
   (get_local $18)
   (tee_local $8
    (i32.add
     (get_local $2)
     (i32.const -1)
    )
   )
  )
  (i32.store8 offset=8
   (get_local $18)
   (get_local $6)
  )
  (i32.store8 offset=9
   (get_local $18)
   (get_local $7)
  )
  (i32.store8 offset=10
   (get_local $18)
   (get_local $6)
  )
  (i32.store8 offset=11
   (get_local $18)
   (get_local $8)
  )
  (i32.store8 offset=12
   (get_local $18)
   (get_local $5)
  )
  (i32.store8 offset=13
   (get_local $18)
   (get_local $7)
  )
  (i32.store8 offset=14
   (get_local $18)
   (get_local $5)
  )
  (i32.store8 offset=15
   (get_local $18)
   (get_local $8)
  )
  (set_local $17
   (get_local $2)
  )
  (set_local $16
   (get_local $6)
  )
  (set_local $14
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $4)
     )
    )
    (set_local $19
     (i32.const 71)
    )
    (br $label$0)
   )
   (set_local $19
    (i32.const 46)
   )
  )
  (loop $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (block $label$6
       (block $label$7
        (block $label$8
         (block $label$9
          (block $label$10
           (block $label$11
            (block $label$12
             (block $label$13
              (block $label$14
               (block $label$15
                (block $label$16
                 (block $label$17
                  (block $label$18
                   (block $label$19
                    (block $label$20
                     (block $label$21
                      (block $label$22
                       (block $label$23
                        (block $label$24
                         (block $label$25
                          (block $label$26
                           (block $label$27
                            (block $label$28
                             (block $label$29
                              (block $label$30
                               (block $label$31
                                (block $label$32
                                 (block $label$33
                                  (block $label$34
                                   (block $label$35
                                    (block $label$36
                                     (block $label$37
                                      (block $label$38
                                       (block $label$39
                                        (block $label$40
                                         (block $label$41
                                          (block $label$42
                                           (block $label$43
                                            (block $label$44
                                             (block $label$45
                                              (block $label$46
                                               (block $label$47
                                                (block $label$48
                                                 (block $label$49
                                                  (block $label$50
                                                   (block $label$51
                                                    (block $label$52
                                                     (block $label$53
                                                      (block $label$54
                                                       (block $label$55
                                                        (block $label$56
                                                         (block $label$57
                                                          (block $label$58
                                                           (block $label$59
                                                            (block $label$60
                                                             (block $label$61
                                                              (block $label$62
                                                               (block $label$63
                                                                (block $label$64
                                                                 (block $label$65
                                                                  (block $label$66
                                                                   (block $label$67
                                                                    (block $label$68
                                                                     (block $label$69
                                                                      (block $label$70
                                                                       (block $label$71
                                                                        (block $label$72
                                                                         (block $label$73
                                                                          (block $label$74
                                                                           (block $label$75
                                                                            (block $label$76
                                                                             (block $label$77
                                                                              (block $label$78
                                                                               (block $label$79
                                                                                (block $label$80
                                                                                 (block $label$81
                                                                                  (block $label$82
                                                                                   (block $label$83
                                                                                    (block $label$84
                                                                                     (block $label$85
                                                                                      (block $label$86
                                                                                       (block $label$87
                                                                                        (block $label$88
                                                                                         (block $label$89
                                                                                          (block $label$90
                                                                                           (block $label$91
                                                                                            (block $label$92
                                                                                             (block $label$93
                                                                                              (block $label$94
                                                                                               (block $label$95
                                                                                                (block $label$96
                                                                                                 (block $label$97
                                                                                                  (block $label$98
                                                                                                   (block $label$99
                                                                                                    (block $label$100
                                                                                                     (block $label$101
                                                                                                      (block $label$102
                                                                                                       (block $label$103
                                                                                                        (block $label$104
                                                                                                         (block $label$105
                                                                                                          (block $label$106
                                                                                                           (block $label$107
                                                                                                            (block $label$108
                                                                                                             (block $label$109
                                                                                                              (block $label$110
                                                                                                               (block $label$111
                                                                                                                (block $label$112
                                                                                                                 (block $label$113
                                                                                                                  (block $label$114
                                                                                                                   (block $label$115
                                                                                                                    (block $label$116
                                                                                                                     (block $label$117
                                                                                                                      (block $label$118
                                                                                                                       (block $label$119
                                                                                                                        (block $label$120
                                                                                                                         (block $label$121
                                                                                                                          (block $label$122
                                                                                                                           (block $label$123
                                                                                                                            (block $label$124
                                                                                                                             (block $label$125
                                                                                                                              (block $label$126
                                                                                                                               (block $label$127
                                                                                                                                (block $label$128
                                                                                                                                 (block $label$129
                                                                                                                                  (block $label$130
                                                                                                                                   (block $label$131
                                                                                                                                    (block $label$132
                                                                                                                                     (block $label$133
                                                                                                                                      (block $label$134
                                                                                                                                       (block $label$135
                                                                                                                                        (block $label$136
                                                                                                                                         (block $label$137
                                                                                                                                          (block $label$138
                                                                                                                                           (block $label$139
                                                                                                                                            (block $label$140
                                                                                                                                             (block $label$141
                                                                                                                                              (block $label$142
                                                                                                                                               (block $label$143
                                                                                                                                                (block $label$144
                                                                                                                                                 (block $label$145
                                                                                                                                                  (block $label$146
                                                                                                                                                   (block $label$147
                                                                                                                                                    (block $label$148
                                                                                                                                                     (block $label$149
                                                                                                                                                      (block $label$150
                                                                                                                                                       (block $label$151
                                                                                                                                                        (block $label$152
                                                                                                                                                         (block $label$153
                                                                                                                                                          (block $label$154
                                                                                                                                                           (block $label$155
                                                                                                                                                            (block $label$156
                                                                                                                                                             (block $label$157
                                                                                                                                                              (block $label$158
                                                                                                                                                               (block $label$159
                                                                                                                                                                (block $label$160
                                                                                                                                                                 (block $label$161
                                                                                                                                                                  (block $label$162
                                                                                                                                                                   (block $label$163
                                                                                                                                                                    (block $label$164
                                                                                                                                                                     (block $label$165
                                                                                                                                                                      (block $label$166
                                                                                                                                                                       (block $label$167
                                                                                                                                                                        (block $label$168
                                                                                                                                                                         (block $label$169
                                                                                                                                                                          (block $label$170
                                                                                                                                                                           (block $label$171
                                                                                                                                                                            (block $label$172
                                                                                                                                                                             (block $label$173
                                                                                                                                                                              (block $label$174
                                                                                                                                                                               (block $label$175
                                                                                                                                                                                (block $label$176
                                                                                                                                                                                 (block $label$177
                                                                                                                                                                                  (block $label$178
                                                                                                                                                                                   (block $label$179
                                                                                                                                                                                    (block $label$180
                                                                                                                                                                                     (block $label$181
                                                                                                                                                                                      (block $label$182
                                                                                                                                                                                       (block $label$183
                                                                                                                                                                                        (block $label$184
                                                                                                                                                                                         (block $label$185
                                                                                                                                                                                          (block $label$186
                                                                                                                                                                                           (block $label$187
                                                                                                                                                                                            (block $label$188
                                                                                                                                                                                             (block $label$189
                                                                                                                                                                                              (block $label$190
                                                                                                                                                                                               (block $label$191
                                                                                                                                                                                                (block $label$192
                                                                                                                                                                                                 (block $label$193
                                                                                                                                                                                                  (block $label$194
                                                                                                                                                                                                   (block $label$195
                                                                                                                                                                                                    (block $label$196
                                                                                                                                                                                                     (block $label$197
                                                                                                                                                                                                      (block $label$198
                                                                                                                                                                                                       (block $label$199
                                                                                                                                                                                                        (block $label$200
                                                                                                                                                                                                         (block $label$201
                                                                                                                                                                                                          (block $label$202
                                                                                                                                                                                                           (block $label$203
                                                                                                                                                                                                            (block $label$204
                                                                                                                                                                                                             (block $label$205
                                                                                                                                                                                                              (block $label$206
                                                                                                                                                                                                               (block $label$207
                                                                                                                                                                                                                (block $label$208
                                                                                                                                                                                                                 (block $label$209
                                                                                                                                                                                                                  (block $label$210
                                                                                                                                                                                                                   (block $label$211
                                                                                                                                                                                                                    (block $label$212
                                                                                                                                                                                                                     (block $label$213
                                                                                                                                                                                                                      (block $label$214
                                                                                                                                                                                                                       (block $label$215
                                                                                                                                                                                                                        (block $label$216
                                                                                                                                                                                                                         (block $label$217
                                                                                                                                                                                                                          (block $label$218
                                                                                                                                                                                                                           (br_table $label$170 $label$169 $label$168 $label$167 $label$166 $label$153 $label$152 $label$151 $label$150 $label$139 $label$138 $label$135 $label$134 $label$131 $label$121 $label$120 $label$117 $label$116 $label$113 $label$115 $label$114 $label$119 $label$118 $label$130 $label$129 $label$126 $label$125 $label$122 $label$124 $label$123 $label$128 $label$127 $label$133 $label$132 $label$137 $label$136 $label$149 $label$148 $label$144 $label$143 $label$140 $label$142 $label$141 $label$147 $label$146 $label$218 $label$194 $label$171 $label$193 $label$192 $label$191 $label$190 $label$189 $label$188 $label$173 $label$172 $label$182 $label$181 $label$145 $label$183 $label$187 $label$186 $label$185 $label$180 $label$179 $label$177 $label$175 $label$174 $label$176 $label$178 $label$184 $label$217 $label$216 $label$215 $label$214 $label$213 $label$212 $label$196 $label$195 $label$206 $label$204 $label$205 $label$207 $label$211 $label$210 $label$209 $label$203 $label$202 $label$200 $label$198 $label$197 $label$199 $label$201 $label$208 $label$161 $label$160 $label$165 $label$164 $label$163 $label$159 $label$158 $label$156 $label$154 $label$155 $label$157 $label$162 $label$162
                                                                                                                                                                                                                            (get_local $19)
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (set_local $17
                                                                                                                                                                                                                           (i32.load8_u offset=1
                                                                                                                                                                                                                            (tee_local $16
                                                                                                                                                                                                                             (i32.add
                                                                                                                                                                                                                              (get_local $18)
                                                                                                                                                                                                                              (i32.shl
                                                                                                                                                                                                                               (get_local $14)
                                                                                                                                                                                                                               (i32.const 1)
                                                                                                                                                                                                                              )
                                                                                                                                                                                                                             )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (set_local $16
                                                                                                                                                                                                                           (i32.load8_u
                                                                                                                                                                                                                            (get_local $16)
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (br_if $label$112
                                                                                                                                                                                                                           (i32.eqz
                                                                                                                                                                                                                            (get_local $4)
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (set_local $19
                                                                                                                                                                                                                           (i32.const 71)
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (br $label$2)
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (set_local $11
                                                                                                                                                                                                                          (i32.gt_u
                                                                                                                                                                                                                           (get_local $14)
                                                                                                                                                                                                                           (i32.const 3)
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (set_local $10
                                                                                                                                                                                                                          (i32.lt_u
                                                                                                                                                                                                                           (get_local $14)
                                                                                                                                                                                                                           (i32.const 4)
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (set_local $15
                                                                                                                                                                                                                          (i32.const 0)
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (set_local $19
                                                                                                                                                                                                                          (i32.const 72)
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (br $label$2)
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                        (br_if $label$89
                                                                                                                                                                                                                         (i32.gt_u
                                                                                                                                                                                                                          (i32.and
                                                                                                                                                                                                                           (i32.or
                                                                                                                                                                                                                            (get_local $17)
                                                                                                                                                                                                                            (get_local $16)
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                           (i32.const 255)
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (i32.const 7)
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                        (set_local $19
                                                                                                                                                                                                                         (i32.const 73)
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                        (br $label$2)
                                                                                                                                                                                                                       )
                                                                                                                                                                                                                       (br_if $label$21
                                                                                                                                                                                                                        (i32.eqz
                                                                                                                                                                                                                         (tee_local $9
                                                                                                                                                                                                                          (i32.load8_u
                                                                                                                                                                                                                           (i32.add
                                                                                                                                                                                                                            (i32.add
                                                                                                                                                                                                                             (get_local $0)
                                                                                                                                                                                                                             (i32.shl
                                                                                                                                                                                                                              (tee_local $13
                                                                                                                                                                                                                               (i32.and
                                                                                                                                                                                                                                (get_local $16)
                                                                                                                                                                                                                                (i32.const 255)
                                                                                                                                                                                                                               )
                                                                                                                                                                                                                              )
                                                                                                                                                                                                                              (i32.const 3)
                                                                                                                                                                                                                             )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                            (tee_local $12
                                                                                                                                                                                                                             (i32.and
                                                                                                                                                                                                                              (get_local $17)
                                                                                                                                                                                                                              (i32.const 255)
                                                                                                                                                                                                                             )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                       )
                                                                                                                                                                                                                       (set_local $19
                                                                                                                                                                                                                        (i32.const 74)
                                                                                                                                                                                                                       )
                                                                                                                                                                                                                       (br $label$2)
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                      (br_if $label$88
                                                                                                                                                                                                                       (i32.eq
                                                                                                                                                                                                                        (select
                                                                                                                                                                                                                         (i32.gt_u
                                                                                                                                                                                                                          (i32.and
                                                                                                                                                                                                                           (i32.add
                                                                                                                                                                                                                            (get_local $9)
                                                                                                                                                                                                                            (i32.const -11)
                                                                                                                                                                                                                           )
                                                                                                                                                                                                                           (i32.const 255)
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                          (i32.const 6)
                                                                                                                                                                                                                         )
                                                                                                                                                                                                                         (i32.const 100)
                                                                                                                                                                                                                         (get_local $9)
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                        (get_local $4)
                                                                                                                                                                                                                       )
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                      (set_local $19
                                                                                                                                                                                                                       (i32.const 75)
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                      (br $label$2)
                                                                                                                                                                                                                     )
                                                                                                                                                                                                                     (br_if $label$20
                                                                                                                                                                                                                      (i32.gt_u
                                                                                                                                                                                                                       (tee_local $9
                                                                                                                                                                                                                        (i32.add
                                                                                                                                                                                                                         (get_local $9)
                                                                                                                                                                                                                         (i32.const -12)
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                       )
                                                                                                                                                                                                                       (i32.const 25)
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                     )
                                                                                                                                                                                                                     (set_local $19
                                                                                                                                                                                                                      (i32.const 76)
                                                                                                                                                                                                                     )
                                                                                                                                                                                                                     (br $label$2)
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                    (block $label$219
                                                                                                                                                                                                                     (br_table $label$34 $label$219 $label$33 $label$32 $label$31 $label$219 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$30 $label$34 $label$219 $label$33 $label$32 $label$31 $label$219 $label$34
                                                                                                                                                                                                                      (get_local $9)
                                                                                                                                                                                                                     )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                    (set_local $19
                                                                                                                                                                                                                     (i32.const 83)
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                    (br $label$2)
                                                                                                                                                                                                                   )
                                                                                                                                                                                                                   (i32.store8
                                                                                                                                                                                                                    (get_local $3)
                                                                                                                                                                                                                    (get_local $10)
                                                                                                                                                                                                                   )
                                                                                                                                                                                                                   (br_if $label$62
                                                                                                                                                                                                                    (i32.eqz
                                                                                                                                                                                                                     (get_local $10)
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                   )
                                                                                                                                                                                                                   (br $label$63)
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                  (set_local $9
                                                                                                                                                                                                                   (get_local $1)
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                  (br_if $label$15
                                                                                                                                                                                                                   (i32.eq
                                                                                                                                                                                                                    (get_local $13)
                                                                                                                                                                                                                    (get_local $1)
                                                                                                                                                                                                                   )
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                  (set_local $19
                                                                                                                                                                                                                   (i32.const 85)
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                  (br $label$2)
                                                                                                                                                                                                                 )
                                                                                                                                                                                                                 (br_if $label$14
                                                                                                                                                                                                                  (i32.le_u
                                                                                                                                                                                                                   (get_local $13)
                                                                                                                                                                                                                   (get_local $1)
                                                                                                                                                                                                                  )
                                                                                                                                                                                                                 )
                                                                                                                                                                                                                 (set_local $19
                                                                                                                                                                                                                  (i32.const 93)
                                                                                                                                                                                                                 )
                                                                                                                                                                                                                 (br $label$2)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (set_local $9
                                                                                                                                                                                                                 (i32.add
                                                                                                                                                                                                                  (get_local $16)
                                                                                                                                                                                                                  (i32.const 1)
                                                                                                                                                                                                                 )
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (br_if $label$12
                                                                                                                                                                                                                 (i32.eq
                                                                                                                                                                                                                  (get_local $12)
                                                                                                                                                                                                                  (get_local $2)
                                                                                                                                                                                                                 )
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (br $label$11)
                                                                                                                                                                                                               )
                                                                                                                                                                                                               (i32.store8
                                                                                                                                                                                                                (get_local $3)
                                                                                                                                                                                                                (get_local $11)
                                                                                                                                                                                                               )
                                                                                                                                                                                                               (br_if $label$64
                                                                                                                                                                                                                (i32.eqz
                                                                                                                                                                                                                 (get_local $11)
                                                                                                                                                                                                                )
                                                                                                                                                                                                               )
                                                                                                                                                                                                               (br $label$65)
                                                                                                                                                                                                              )
                                                                                                                                                                                                              (br_if $label$16
                                                                                                                                                                                                               (i32.lt_u
                                                                                                                                                                                                                (get_local $14)
                                                                                                                                                                                                                (i32.const 6)
                                                                                                                                                                                                               )
                                                                                                                                                                                                              )
                                                                                                                                                                                                              (set_local $19
                                                                                                                                                                                                               (i32.const 81)
                                                                                                                                                                                                              )
                                                                                                                                                                                                              (br $label$2)
                                                                                                                                                                                                             )
                                                                                                                                                                                                             (br_if $label$29
                                                                                                                                                                                                              (i32.eqz
                                                                                                                                                                                                               (i32.and
                                                                                                                                                                                                                (get_local $15)
                                                                                                                                                                                                                (i32.const 255)
                                                                                                                                                                                                               )
                                                                                                                                                                                                              )
                                                                                                                                                                                                             )
                                                                                                                                                                                                             (set_local $19
                                                                                                                                                                                                              (i32.const 80)
                                                                                                                                                                                                             )
                                                                                                                                                                                                             (br $label$2)
                                                                                                                                                                                                            )
                                                                                                                                                                                                            (i32.store8
                                                                                                                                                                                                             (get_local $3)
                                                                                                                                                                                                             (i32.const 0)
                                                                                                                                                                                                            )
                                                                                                                                                                                                            (br $label$19)
                                                                                                                                                                                                           )
                                                                                                                                                                                                           (set_local $9
                                                                                                                                                                                                            (i32.add
                                                                                                                                                                                                             (get_local $16)
                                                                                                                                                                                                             (i32.const -1)
                                                                                                                                                                                                            )
                                                                                                                                                                                                           )
                                                                                                                                                                                                           (set_local $19
                                                                                                                                                                                                            (i32.const 87)
                                                                                                                                                                                                           )
                                                                                                                                                                                                           (br $label$2)
                                                                                                                                                                                                          )
                                                                                                                                                                                                          (br_if $label$13
                                                                                                                                                                                                           (i32.ne
                                                                                                                                                                                                            (get_local $12)
                                                                                                                                                                                                            (get_local $2)
                                                                                                                                                                                                           )
                                                                                                                                                                                                          )
                                                                                                                                                                                                          (set_local $19
                                                                                                                                                                                                           (i32.const 92)
                                                                                                                                                                                                          )
                                                                                                                                                                                                          (br $label$2)
                                                                                                                                                                                                         )
                                                                                                                                                                                                         (set_local $16
                                                                                                                                                                                                          (get_local $9)
                                                                                                                                                                                                         )
                                                                                                                                                                                                         (set_local $17
                                                                                                                                                                                                          (get_local $2)
                                                                                                                                                                                                         )
                                                                                                                                                                                                         (br $label$18)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (br_if $label$10
                                                                                                                                                                                                         (i32.le_u
                                                                                                                                                                                                          (get_local $12)
                                                                                                                                                                                                          (get_local $2)
                                                                                                                                                                                                         )
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (set_local $19
                                                                                                                                                                                                         (i32.const 91)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (br $label$2)
                                                                                                                                                                                                       )
                                                                                                                                                                                                       (set_local $17
                                                                                                                                                                                                        (i32.add
                                                                                                                                                                                                         (get_local $17)
                                                                                                                                                                                                         (i32.const 1)
                                                                                                                                                                                                        )
                                                                                                                                                                                                       )
                                                                                                                                                                                                       (br $label$9)
                                                                                                                                                                                                      )
                                                                                                                                                                                                      (set_local $17
                                                                                                                                                                                                       (i32.add
                                                                                                                                                                                                        (get_local $17)
                                                                                                                                                                                                        (i32.const -1)
                                                                                                                                                                                                       )
                                                                                                                                                                                                      )
                                                                                                                                                                                                      (set_local $19
                                                                                                                                                                                                       (i32.const 90)
                                                                                                                                                                                                      )
                                                                                                                                                                                                      (br $label$2)
                                                                                                                                                                                                     )
                                                                                                                                                                                                     (set_local $16
                                                                                                                                                                                                      (get_local $9)
                                                                                                                                                                                                     )
                                                                                                                                                                                                     (br $label$17)
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (i32.store8
                                                                                                                                                                                                     (get_local $3)
                                                                                                                                                                                                     (i32.eqz
                                                                                                                                                                                                      (tee_local $9
                                                                                                                                                                                                       (i32.and
                                                                                                                                                                                                        (get_local $15)
                                                                                                                                                                                                        (i32.const 255)
                                                                                                                                                                                                       )
                                                                                                                                                                                                      )
                                                                                                                                                                                                     )
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (br_if $label$61
                                                                                                                                                                                                     (i32.eqz
                                                                                                                                                                                                      (get_local $9)
                                                                                                                                                                                                     )
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (set_local $19
                                                                                                                                                                                                     (i32.const 78)
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (br $label$2)
                                                                                                                                                                                                   )
                                                                                                                                                                                                   (br_if $label$87
                                                                                                                                                                                                    (i32.lt_u
                                                                                                                                                                                                     (i32.and
                                                                                                                                                                                                      (tee_local $15
                                                                                                                                                                                                       (i32.add
                                                                                                                                                                                                        (get_local $15)
                                                                                                                                                                                                        (i32.const 1)
                                                                                                                                                                                                       )
                                                                                                                                                                                                      )
                                                                                                                                                                                                      (i32.const 255)
                                                                                                                                                                                                     )
                                                                                                                                                                                                     (i32.const 7)
                                                                                                                                                                                                    )
                                                                                                                                                                                                   )
                                                                                                                                                                                                   (br $label$86)
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (set_local $11
                                                                                                                                                                                                   (i32.gt_u
                                                                                                                                                                                                    (get_local $14)
                                                                                                                                                                                                    (i32.const 3)
                                                                                                                                                                                                   )
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (set_local $10
                                                                                                                                                                                                   (i32.lt_u
                                                                                                                                                                                                    (get_local $14)
                                                                                                                                                                                                    (i32.const 4)
                                                                                                                                                                                                   )
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (br_if $label$46
                                                                                                                                                                                                   (i32.ne
                                                                                                                                                                                                    (i32.and
                                                                                                                                                                                                     (get_local $14)
                                                                                                                                                                                                     (i32.const 254)
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (i32.const 4)
                                                                                                                                                                                                   )
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (set_local $19
                                                                                                                                                                                                   (i32.const 48)
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (br $label$2)
                                                                                                                                                                                                 )
                                                                                                                                                                                                 (set_local $15
                                                                                                                                                                                                  (i32.const 0)
                                                                                                                                                                                                 )
                                                                                                                                                                                                 (set_local $19
                                                                                                                                                                                                  (i32.const 49)
                                                                                                                                                                                                 )
                                                                                                                                                                                                 (br $label$2)
                                                                                                                                                                                                )
                                                                                                                                                                                                (br_if $label$111
                                                                                                                                                                                                 (i32.gt_u
                                                                                                                                                                                                  (i32.and
                                                                                                                                                                                                   (i32.or
                                                                                                                                                                                                    (get_local $17)
                                                                                                                                                                                                    (get_local $16)
                                                                                                                                                                                                   )
                                                                                                                                                                                                   (i32.const 255)
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (i32.const 7)
                                                                                                                                                                                                 )
                                                                                                                                                                                                )
                                                                                                                                                                                                (set_local $19
                                                                                                                                                                                                 (i32.const 50)
                                                                                                                                                                                                )
                                                                                                                                                                                                (br $label$2)
                                                                                                                                                                                               )
                                                                                                                                                                                               (br_if $label$45
                                                                                                                                                                                                (i32.eqz
                                                                                                                                                                                                 (tee_local $9
                                                                                                                                                                                                  (i32.load8_u
                                                                                                                                                                                                   (i32.add
                                                                                                                                                                                                    (i32.add
                                                                                                                                                                                                     (get_local $0)
                                                                                                                                                                                                     (i32.shl
                                                                                                                                                                                                      (tee_local $13
                                                                                                                                                                                                       (i32.and
                                                                                                                                                                                                        (get_local $16)
                                                                                                                                                                                                        (i32.const 255)
                                                                                                                                                                                                       )
                                                                                                                                                                                                      )
                                                                                                                                                                                                      (i32.const 3)
                                                                                                                                                                                                     )
                                                                                                                                                                                                    )
                                                                                                                                                                                                    (tee_local $12
                                                                                                                                                                                                     (i32.and
                                                                                                                                                                                                      (get_local $17)
                                                                                                                                                                                                      (i32.const 255)
                                                                                                                                                                                                     )
                                                                                                                                                                                                    )
                                                                                                                                                                                                   )
                                                                                                                                                                                                  )
                                                                                                                                                                                                 )
                                                                                                                                                                                                )
                                                                                                                                                                                               )
                                                                                                                                                                                               (set_local $19
                                                                                                                                                                                                (i32.const 51)
                                                                                                                                                                                               )
                                                                                                                                                                                               (br $label$2)
                                                                                                                                                                                              )
                                                                                                                                                                                              (br_if $label$92
                                                                                                                                                                                               (i32.eq
                                                                                                                                                                                                (select
                                                                                                                                                                                                 (i32.gt_u
                                                                                                                                                                                                  (i32.and
                                                                                                                                                                                                   (i32.add
                                                                                                                                                                                                    (get_local $9)
                                                                                                                                                                                                    (i32.const -11)
                                                                                                                                                                                                   )
                                                                                                                                                                                                   (i32.const 255)
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (i32.const 6)
                                                                                                                                                                                                 )
                                                                                                                                                                                                 (i32.const 100)
                                                                                                                                                                                                 (get_local $9)
                                                                                                                                                                                                )
                                                                                                                                                                                                (get_local $4)
                                                                                                                                                                                               )
                                                                                                                                                                                              )
                                                                                                                                                                                              (set_local $19
                                                                                                                                                                                               (i32.const 52)
                                                                                                                                                                                              )
                                                                                                                                                                                              (br $label$2)
                                                                                                                                                                                             )
                                                                                                                                                                                             (br_if $label$44
                                                                                                                                                                                              (i32.gt_u
                                                                                                                                                                                               (tee_local $9
                                                                                                                                                                                                (i32.add
                                                                                                                                                                                                 (get_local $9)
                                                                                                                                                                                                 (i32.const -12)
                                                                                                                                                                                                )
                                                                                                                                                                                               )
                                                                                                                                                                                               (i32.const 25)
                                                                                                                                                                                              )
                                                                                                                                                                                             )
                                                                                                                                                                                             (set_local $19
                                                                                                                                                                                              (i32.const 53)
                                                                                                                                                                                             )
                                                                                                                                                                                             (br $label$2)
                                                                                                                                                                                            )
                                                                                                                                                                                            (block $label$220
                                                                                                                                                                                             (br_table $label$43 $label$220 $label$42 $label$41 $label$40 $label$220 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$39 $label$43 $label$220 $label$42 $label$41 $label$40 $label$220 $label$43
                                                                                                                                                                                              (get_local $9)
                                                                                                                                                                                             )
                                                                                                                                                                                            )
                                                                                                                                                                                            (set_local $19
                                                                                                                                                                                             (i32.const 60)
                                                                                                                                                                                            )
                                                                                                                                                                                            (br $label$2)
                                                                                                                                                                                           )
                                                                                                                                                                                           (i32.store8
                                                                                                                                                                                            (get_local $3)
                                                                                                                                                                                            (get_local $10)
                                                                                                                                                                                           )
                                                                                                                                                                                           (br_if $label$67
                                                                                                                                                                                            (i32.eqz
                                                                                                                                                                                             (get_local $10)
                                                                                                                                                                                            )
                                                                                                                                                                                           )
                                                                                                                                                                                           (br $label$68)
                                                                                                                                                                                          )
                                                                                                                                                                                          (set_local $9
                                                                                                                                                                                           (get_local $1)
                                                                                                                                                                                          )
                                                                                                                                                                                          (br_if $label$28
                                                                                                                                                                                           (i32.eq
                                                                                                                                                                                            (get_local $13)
                                                                                                                                                                                            (get_local $1)
                                                                                                                                                                                           )
                                                                                                                                                                                          )
                                                                                                                                                                                          (set_local $19
                                                                                                                                                                                           (i32.const 62)
                                                                                                                                                                                          )
                                                                                                                                                                                          (br $label$2)
                                                                                                                                                                                         )
                                                                                                                                                                                         (br_if $label$27
                                                                                                                                                                                          (i32.le_u
                                                                                                                                                                                           (get_local $13)
                                                                                                                                                                                           (get_local $1)
                                                                                                                                                                                          )
                                                                                                                                                                                         )
                                                                                                                                                                                         (set_local $19
                                                                                                                                                                                          (i32.const 70)
                                                                                                                                                                                         )
                                                                                                                                                                                         (br $label$2)
                                                                                                                                                                                        )
                                                                                                                                                                                        (set_local $9
                                                                                                                                                                                         (i32.add
                                                                                                                                                                                          (get_local $16)
                                                                                                                                                                                          (i32.const 1)
                                                                                                                                                                                         )
                                                                                                                                                                                        )
                                                                                                                                                                                        (br_if $label$25
                                                                                                                                                                                         (i32.eq
                                                                                                                                                                                          (get_local $12)
                                                                                                                                                                                          (get_local $2)
                                                                                                                                                                                         )
                                                                                                                                                                                        )
                                                                                                                                                                                        (br $label$24)
                                                                                                                                                                                       )
                                                                                                                                                                                       (i32.store8
                                                                                                                                                                                        (get_local $3)
                                                                                                                                                                                        (get_local $11)
                                                                                                                                                                                       )
                                                                                                                                                                                       (br_if $label$69
                                                                                                                                                                                        (i32.eqz
                                                                                                                                                                                         (get_local $11)
                                                                                                                                                                                        )
                                                                                                                                                                                       )
                                                                                                                                                                                       (br $label$70)
                                                                                                                                                                                      )
                                                                                                                                                                                      (br_if $label$35
                                                                                                                                                                                       (i32.eqz
                                                                                                                                                                                        (i32.and
                                                                                                                                                                                         (get_local $15)
                                                                                                                                                                                         (i32.const 255)
                                                                                                                                                                                        )
                                                                                                                                                                                       )
                                                                                                                                                                                      )
                                                                                                                                                                                      (set_local $19
                                                                                                                                                                                       (i32.const 57)
                                                                                                                                                                                      )
                                                                                                                                                                                      (br $label$2)
                                                                                                                                                                                     )
                                                                                                                                                                                     (i32.store8
                                                                                                                                                                                      (get_local $3)
                                                                                                                                                                                      (i32.const 0)
                                                                                                                                                                                     )
                                                                                                                                                                                     (br $label$38)
                                                                                                                                                                                    )
                                                                                                                                                                                    (set_local $9
                                                                                                                                                                                     (i32.add
                                                                                                                                                                                      (get_local $16)
                                                                                                                                                                                      (i32.const -1)
                                                                                                                                                                                     )
                                                                                                                                                                                    )
                                                                                                                                                                                    (set_local $19
                                                                                                                                                                                     (i32.const 64)
                                                                                                                                                                                    )
                                                                                                                                                                                    (br $label$2)
                                                                                                                                                                                   )
                                                                                                                                                                                   (br_if $label$26
                                                                                                                                                                                    (i32.ne
                                                                                                                                                                                     (get_local $12)
                                                                                                                                                                                     (get_local $2)
                                                                                                                                                                                    )
                                                                                                                                                                                   )
                                                                                                                                                                                   (set_local $19
                                                                                                                                                                                    (i32.const 69)
                                                                                                                                                                                   )
                                                                                                                                                                                   (br $label$2)
                                                                                                                                                                                  )
                                                                                                                                                                                  (set_local $16
                                                                                                                                                                                   (get_local $9)
                                                                                                                                                                                  )
                                                                                                                                                                                  (set_local $17
                                                                                                                                                                                   (get_local $2)
                                                                                                                                                                                  )
                                                                                                                                                                                  (br $label$37)
                                                                                                                                                                                 )
                                                                                                                                                                                 (br_if $label$23
                                                                                                                                                                                  (i32.le_u
                                                                                                                                                                                   (get_local $12)
                                                                                                                                                                                   (get_local $2)
                                                                                                                                                                                  )
                                                                                                                                                                                 )
                                                                                                                                                                                 (set_local $19
                                                                                                                                                                                  (i32.const 68)
                                                                                                                                                                                 )
                                                                                                                                                                                 (br $label$2)
                                                                                                                                                                                )
                                                                                                                                                                                (set_local $17
                                                                                                                                                                                 (i32.add
                                                                                                                                                                                  (get_local $17)
                                                                                                                                                                                  (i32.const 1)
                                                                                                                                                                                 )
                                                                                                                                                                                )
                                                                                                                                                                                (br $label$22)
                                                                                                                                                                               )
                                                                                                                                                                               (set_local $17
                                                                                                                                                                                (i32.add
                                                                                                                                                                                 (get_local $17)
                                                                                                                                                                                 (i32.const -1)
                                                                                                                                                                                )
                                                                                                                                                                               )
                                                                                                                                                                               (set_local $19
                                                                                                                                                                                (i32.const 67)
                                                                                                                                                                               )
                                                                                                                                                                               (br $label$2)
                                                                                                                                                                              )
                                                                                                                                                                              (set_local $16
                                                                                                                                                                               (get_local $9)
                                                                                                                                                                              )
                                                                                                                                                                              (br $label$36)
                                                                                                                                                                             )
                                                                                                                                                                             (i32.store8
                                                                                                                                                                              (get_local $3)
                                                                                                                                                                              (i32.eqz
                                                                                                                                                                               (tee_local $9
                                                                                                                                                                                (i32.and
                                                                                                                                                                                 (get_local $15)
                                                                                                                                                                                 (i32.const 255)
                                                                                                                                                                                )
                                                                                                                                                                               )
                                                                                                                                                                              )
                                                                                                                                                                             )
                                                                                                                                                                             (br_if $label$66
                                                                                                                                                                              (i32.eqz
                                                                                                                                                                               (get_local $9)
                                                                                                                                                                              )
                                                                                                                                                                             )
                                                                                                                                                                             (set_local $19
                                                                                                                                                                              (i32.const 55)
                                                                                                                                                                             )
                                                                                                                                                                             (br $label$2)
                                                                                                                                                                            )
                                                                                                                                                                            (br_if $label$91
                                                                                                                                                                             (i32.lt_u
                                                                                                                                                                              (i32.and
                                                                                                                                                                               (tee_local $15
                                                                                                                                                                                (i32.add
                                                                                                                                                                                 (get_local $15)
                                                                                                                                                                                 (i32.const 1)
                                                                                                                                                                                )
                                                                                                                                                                               )
                                                                                                                                                                               (i32.const 255)
                                                                                                                                                                              )
                                                                                                                                                                              (i32.const 7)
                                                                                                                                                                             )
                                                                                                                                                                            )
                                                                                                                                                                            (br $label$90)
                                                                                                                                                                           )
                                                                                                                                                                           (set_local $15
                                                                                                                                                                            (i32.const 0)
                                                                                                                                                                           )
                                                                                                                                                                           (set_local $19
                                                                                                                                                                            (i32.const 0)
                                                                                                                                                                           )
                                                                                                                                                                           (br $label$2)
                                                                                                                                                                          )
                                                                                                                                                                          (br_if $label$110
                                                                                                                                                                           (i32.gt_u
                                                                                                                                                                            (i32.and
                                                                                                                                                                             (i32.or
                                                                                                                                                                              (get_local $17)
                                                                                                                                                                              (get_local $16)
                                                                                                                                                                             )
                                                                                                                                                                             (i32.const 255)
                                                                                                                                                                            )
                                                                                                                                                                            (i32.const 7)
                                                                                                                                                                           )
                                                                                                                                                                          )
                                                                                                                                                                          (set_local $19
                                                                                                                                                                           (i32.const 1)
                                                                                                                                                                          )
                                                                                                                                                                          (br $label$2)
                                                                                                                                                                         )
                                                                                                                                                                         (br_if $label$108
                                                                                                                                                                          (i32.eqz
                                                                                                                                                                           (tee_local $9
                                                                                                                                                                            (i32.load8_u
                                                                                                                                                                             (i32.add
                                                                                                                                                                              (i32.add
                                                                                                                                                                               (get_local $0)
                                                                                                                                                                               (i32.shl
                                                                                                                                                                                (tee_local $13
                                                                                                                                                                                 (i32.and
                                                                                                                                                                                  (get_local $16)
                                                                                                                                                                                  (i32.const 255)
                                                                                                                                                                                 )
                                                                                                                                                                                )
                                                                                                                                                                                (i32.const 3)
                                                                                                                                                                               )
                                                                                                                                                                              )
                                                                                                                                                                              (tee_local $12
                                                                                                                                                                               (i32.and
                                                                                                                                                                                (get_local $17)
                                                                                                                                                                                (i32.const 255)
                                                                                                                                                                               )
                                                                                                                                                                              )
                                                                                                                                                                             )
                                                                                                                                                                            )
                                                                                                                                                                           )
                                                                                                                                                                          )
                                                                                                                                                                         )
                                                                                                                                                                         (set_local $19
                                                                                                                                                                          (i32.const 2)
                                                                                                                                                                         )
                                                                                                                                                                         (br $label$2)
                                                                                                                                                                        )
                                                                                                                                                                        (br_if $label$107
                                                                                                                                                                         (i32.eq
                                                                                                                                                                          (select
                                                                                                                                                                           (i32.gt_u
                                                                                                                                                                            (i32.and
                                                                                                                                                                             (i32.add
                                                                                                                                                                              (get_local $9)
                                                                                                                                                                              (i32.const -11)
                                                                                                                                                                             )
                                                                                                                                                                             (i32.const 255)
                                                                                                                                                                            )
                                                                                                                                                                            (i32.const 6)
                                                                                                                                                                           )
                                                                                                                                                                           (i32.const 100)
                                                                                                                                                                           (get_local $9)
                                                                                                                                                                          )
                                                                                                                                                                          (get_local $4)
                                                                                                                                                                         )
                                                                                                                                                                        )
                                                                                                                                                                        (set_local $19
                                                                                                                                                                         (i32.const 3)
                                                                                                                                                                        )
                                                                                                                                                                        (br $label$2)
                                                                                                                                                                       )
                                                                                                                                                                       (br_if $label$106
                                                                                                                                                                        (i32.gt_u
                                                                                                                                                                         (tee_local $9
                                                                                                                                                                          (i32.add
                                                                                                                                                                           (get_local $9)
                                                                                                                                                                           (i32.const -12)
                                                                                                                                                                          )
                                                                                                                                                                         )
                                                                                                                                                                         (i32.const 25)
                                                                                                                                                                        )
                                                                                                                                                                       )
                                                                                                                                                                       (set_local $19
                                                                                                                                                                        (i32.const 4)
                                                                                                                                                                       )
                                                                                                                                                                       (br $label$2)
                                                                                                                                                                      )
                                                                                                                                                                      (block $label$221
                                                                                                                                                                       (br_table $label$105 $label$221 $label$104 $label$103 $label$103 $label$221 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$102 $label$105 $label$221 $label$104 $label$103 $label$103 $label$221 $label$105
                                                                                                                                                                        (get_local $9)
                                                                                                                                                                       )
                                                                                                                                                                      )
                                                                                                                                                                      (set_local $19
                                                                                                                                                                       (i32.const 96)
                                                                                                                                                                      )
                                                                                                                                                                      (br $label$2)
                                                                                                                                                                     )
                                                                                                                                                                     (i32.store8
                                                                                                                                                                      (get_local $3)
                                                                                                                                                                      (get_local $10)
                                                                                                                                                                     )
                                                                                                                                                                     (br_if $label$98
                                                                                                                                                                      (i32.eqz
                                                                                                                                                                       (get_local $10)
                                                                                                                                                                      )
                                                                                                                                                                     )
                                                                                                                                                                     (br $label$99)
                                                                                                                                                                    )
                                                                                                                                                                    (set_local $9
                                                                                                                                                                     (get_local $1)
                                                                                                                                                                    )
                                                                                                                                                                    (br_if $label$8
                                                                                                                                                                     (i32.eq
                                                                                                                                                                      (get_local $13)
                                                                                                                                                                      (get_local $1)
                                                                                                                                                                     )
                                                                                                                                                                    )
                                                                                                                                                                    (set_local $19
                                                                                                                                                                     (i32.const 98)
                                                                                                                                                                    )
                                                                                                                                                                    (br $label$2)
                                                                                                                                                                   )
                                                                                                                                                                   (br_if $label$7
                                                                                                                                                                    (i32.le_u
                                                                                                                                                                     (get_local $13)
                                                                                                                                                                     (get_local $1)
                                                                                                                                                                    )
                                                                                                                                                                   )
                                                                                                                                                                   (set_local $19
                                                                                                                                                                    (i32.const 105)
                                                                                                                                                                   )
                                                                                                                                                                   (br $label$2)
                                                                                                                                                                  )
                                                                                                                                                                  (set_local $9
                                                                                                                                                                   (i32.add
                                                                                                                                                                    (get_local $16)
                                                                                                                                                                    (i32.const 1)
                                                                                                                                                                   )
                                                                                                                                                                  )
                                                                                                                                                                  (br_if $label$5
                                                                                                                                                                   (i32.eq
                                                                                                                                                                    (get_local $12)
                                                                                                                                                                    (get_local $2)
                                                                                                                                                                   )
                                                                                                                                                                  )
                                                                                                                                                                  (br $label$4)
                                                                                                                                                                 )
                                                                                                                                                                 (i32.store8
                                                                                                                                                                  (get_local $3)
                                                                                                                                                                  (i32.const 0)
                                                                                                                                                                 )
                                                                                                                                                                 (br $label$97)
                                                                                                                                                                )
                                                                                                                                                                (i32.store8
                                                                                                                                                                 (get_local $3)
                                                                                                                                                                 (get_local $11)
                                                                                                                                                                )
                                                                                                                                                                (br_if $label$100
                                                                                                                                                                 (i32.eqz
                                                                                                                                                                  (get_local $11)
                                                                                                                                                                 )
                                                                                                                                                                )
                                                                                                                                                                (br $label$101)
                                                                                                                                                               )
                                                                                                                                                               (set_local $9
                                                                                                                                                                (i32.add
                                                                                                                                                                 (get_local $16)
                                                                                                                                                                 (i32.const -1)
                                                                                                                                                                )
                                                                                                                                                               )
                                                                                                                                                               (set_local $19
                                                                                                                                                                (i32.const 100)
                                                                                                                                                               )
                                                                                                                                                               (br $label$2)
                                                                                                                                                              )
                                                                                                                                                              (br_if $label$6
                                                                                                                                                               (i32.ne
                                                                                                                                                                (get_local $12)
                                                                                                                                                                (get_local $2)
                                                                                                                                                               )
                                                                                                                                                              )
                                                                                                                                                              (set_local $19
                                                                                                                                                               (i32.const 104)
                                                                                                                                                              )
                                                                                                                                                              (br $label$2)
                                                                                                                                                             )
                                                                                                                                                             (set_local $16
                                                                                                                                                              (get_local $9)
                                                                                                                                                             )
                                                                                                                                                             (set_local $17
                                                                                                                                                              (get_local $2)
                                                                                                                                                             )
                                                                                                                                                             (br $label$93)
                                                                                                                                                            )
                                                                                                                                                            (br_if $label$3
                                                                                                                                                             (i32.le_u
                                                                                                                                                              (get_local $12)
                                                                                                                                                              (get_local $2)
                                                                                                                                                             )
                                                                                                                                                            )
                                                                                                                                                            (set_local $19
                                                                                                                                                             (i32.const 103)
                                                                                                                                                            )
                                                                                                                                                            (br $label$2)
                                                                                                                                                           )
                                                                                                                                                           (set_local $17
                                                                                                                                                            (i32.add
                                                                                                                                                             (get_local $17)
                                                                                                                                                             (i32.const 1)
                                                                                                                                                            )
                                                                                                                                                           )
                                                                                                                                                           (set_local $16
                                                                                                                                                            (get_local $9)
                                                                                                                                                           )
                                                                                                                                                           (br $label$94)
                                                                                                                                                          )
                                                                                                                                                          (set_local $17
                                                                                                                                                           (i32.add
                                                                                                                                                            (get_local $17)
                                                                                                                                                            (i32.const -1)
                                                                                                                                                           )
                                                                                                                                                          )
                                                                                                                                                          (set_local $16
                                                                                                                                                           (get_local $9)
                                                                                                                                                          )
                                                                                                                                                          (br $label$95)
                                                                                                                                                         )
                                                                                                                                                         (i32.store8
                                                                                                                                                          (get_local $3)
                                                                                                                                                          (i32.eqz
                                                                                                                                                           (tee_local $9
                                                                                                                                                            (i32.and
                                                                                                                                                             (get_local $15)
                                                                                                                                                             (i32.const 255)
                                                                                                                                                            )
                                                                                                                                                           )
                                                                                                                                                          )
                                                                                                                                                         )
                                                                                                                                                         (br_if $label$96
                                                                                                                                                          (i32.eqz
                                                                                                                                                           (get_local $9)
                                                                                                                                                          )
                                                                                                                                                         )
                                                                                                                                                         (set_local $19
                                                                                                                                                          (i32.const 6)
                                                                                                                                                         )
                                                                                                                                                         (br $label$2)
                                                                                                                                                        )
                                                                                                                                                        (br_if $label$109
                                                                                                                                                         (i32.lt_u
                                                                                                                                                          (i32.and
                                                                                                                                                           (tee_local $15
                                                                                                                                                            (i32.add
                                                                                                                                                             (get_local $15)
                                                                                                                                                             (i32.const 1)
                                                                                                                                                            )
                                                                                                                                                           )
                                                                                                                                                           (i32.const 255)
                                                                                                                                                          )
                                                                                                                                                          (i32.const 7)
                                                                                                                                                         )
                                                                                                                                                        )
                                                                                                                                                        (set_local $19
                                                                                                                                                         (i32.const 7)
                                                                                                                                                        )
                                                                                                                                                        (br $label$2)
                                                                                                                                                       )
                                                                                                                                                       (br_if $label$85
                                                                                                                                                        (i32.le_u
                                                                                                                                                         (tee_local $14
                                                                                                                                                          (i32.add
                                                                                                                                                           (get_local $14)
                                                                                                                                                           (i32.const 1)
                                                                                                                                                          )
                                                                                                                                                         )
                                                                                                                                                         (i32.const 7)
                                                                                                                                                        )
                                                                                                                                                       )
                                                                                                                                                       (set_local $19
                                                                                                                                                        (i32.const 8)
                                                                                                                                                       )
                                                                                                                                                       (br $label$2)
                                                                                                                                                      )
                                                                                                                                                      (br_if $label$84
                                                                                                                                                       (i32.lt_u
                                                                                                                                                        (get_local $1)
                                                                                                                                                        (i32.const 2)
                                                                                                                                                       )
                                                                                                                                                      )
                                                                                                                                                      (set_local $19
                                                                                                                                                       (i32.const 36)
                                                                                                                                                      )
                                                                                                                                                      (br $label$2)
                                                                                                                                                     )
                                                                                                                                                     (br_if $label$52
                                                                                                                                                      (i32.eq
                                                                                                                                                       (tee_local $16
                                                                                                                                                        (i32.load8_u
                                                                                                                                                         (i32.add
                                                                                                                                                          (i32.add
                                                                                                                                                           (get_local $0)
                                                                                                                                                           (i32.shl
                                                                                                                                                            (tee_local $17
                                                                                                                                                             (i32.add
                                                                                                                                                              (get_local $1)
                                                                                                                                                              (i32.const -2)
                                                                                                                                                             )
                                                                                                                                                            )
                                                                                                                                                            (i32.const 3)
                                                                                                                                                           )
                                                                                                                                                          )
                                                                                                                                                          (get_local $7)
                                                                                                                                                         )
                                                                                                                                                        )
                                                                                                                                                       )
                                                                                                                                                       (i32.const 35)
                                                                                                                                                      )
                                                                                                                                                     )
                                                                                                                                                     (set_local $19
                                                                                                                                                      (i32.const 37)
                                                                                                                                                     )
                                                                                                                                                     (br $label$2)
                                                                                                                                                    )
                                                                                                                                                    (br_if $label$51
                                                                                                                                                     (i32.ne
                                                                                                                                                      (get_local $16)
                                                                                                                                                      (i32.const 15)
                                                                                                                                                     )
                                                                                                                                                    )
                                                                                                                                                    (set_local $19
                                                                                                                                                     (i32.const 43)
                                                                                                                                                    )
                                                                                                                                                    (br $label$2)
                                                                                                                                                   )
                                                                                                                                                   (br_if $label$50
                                                                                                                                                    (i32.ne
                                                                                                                                                     (i32.xor
                                                                                                                                                      (i32.gt_u
                                                                                                                                                       (i32.and
                                                                                                                                                        (i32.add
                                                                                                                                                         (get_local $16)
                                                                                                                                                         (i32.const -11)
                                                                                                                                                        )
                                                                                                                                                        (i32.const 255)
                                                                                                                                                       )
                                                                                                                                                       (i32.const 6)
                                                                                                                                                      )
                                                                                                                                                      (get_local $4)
                                                                                                                                                     )
                                                                                                                                                     (i32.const 1)
                                                                                                                                                    )
                                                                                                                                                   )
                                                                                                                                                   (set_local $19
                                                                                                                                                    (i32.const 44)
                                                                                                                                                   )
                                                                                                                                                   (br $label$2)
                                                                                                                                                  )
                                                                                                                                                  (i32.store8
                                                                                                                                                   (get_local $3)
                                                                                                                                                   (i32.const 1)
                                                                                                                                                  )
                                                                                                                                                  (return)
                                                                                                                                                 )
                                                                                                                                                 (i32.store8
                                                                                                                                                  (get_local $3)
                                                                                                                                                  (i32.const 1)
                                                                                                                                                 )
                                                                                                                                                 (return)
                                                                                                                                                )
                                                                                                                                                (br_if $label$49
                                                                                                                                                 (i32.eq
                                                                                                                                                  (tee_local $16
                                                                                                                                                   (i32.load8_u
                                                                                                                                                    (i32.add
                                                                                                                                                     (i32.add
                                                                                                                                                      (get_local $0)
                                                                                                                                                      (i32.shl
                                                                                                                                                       (get_local $17)
                                                                                                                                                       (i32.const 3)
                                                                                                                                                      )
                                                                                                                                                     )
                                                                                                                                                     (get_local $8)
                                                                                                                                                    )
                                                                                                                                                   )
                                                                                                                                                  )
                                                                                                                                                  (i32.const 35)
                                                                                                                                                 )
                                                                                                                                                )
                                                                                                                                                (set_local $19
                                                                                                                                                 (i32.const 39)
                                                                                                                                                )
                                                                                                                                                (br $label$2)
                                                                                                                                               )
                                                                                                                                               (br_if $label$48
                                                                                                                                                (i32.ne
                                                                                                                                                 (get_local $16)
                                                                                                                                                 (i32.const 15)
                                                                                                                                                )
                                                                                                                                               )
                                                                                                                                               (set_local $19
                                                                                                                                                (i32.const 41)
                                                                                                                                               )
                                                                                                                                               (br $label$2)
                                                                                                                                              )
                                                                                                                                              (br_if $label$47
                                                                                                                                               (i32.ne
                                                                                                                                                (i32.xor
                                                                                                                                                 (i32.gt_u
                                                                                                                                                  (i32.and
                                                                                                                                                   (i32.add
                                                                                                                                                    (get_local $16)
                                                                                                                                                    (i32.const -11)
                                                                                                                                                   )
                                                                                                                                                   (i32.const 255)
                                                                                                                                                  )
                                                                                                                                                  (i32.const 6)
                                                                                                                                                 )
                                                                                                                                                 (get_local $4)
                                                                                                                                                )
                                                                                                                                                (i32.const 1)
                                                                                                                                               )
                                                                                                                                              )
                                                                                                                                              (set_local $19
                                                                                                                                               (i32.const 42)
                                                                                                                                              )
                                                                                                                                              (br $label$2)
                                                                                                                                             )
                                                                                                                                             (i32.store8
                                                                                                                                              (get_local $3)
                                                                                                                                              (i32.const 1)
                                                                                                                                             )
                                                                                                                                             (return)
                                                                                                                                            )
                                                                                                                                            (br_if $label$83
                                                                                                                                             (i32.gt_u
                                                                                                                                              (get_local $1)
                                                                                                                                              (i32.const 5)
                                                                                                                                             )
                                                                                                                                            )
                                                                                                                                            (set_local $19
                                                                                                                                             (i32.const 9)
                                                                                                                                            )
                                                                                                                                            (br $label$2)
                                                                                                                                           )
                                                                                                                                           (br_if $label$82
                                                                                                                                            (i32.eq
                                                                                                                                             (tee_local $16
                                                                                                                                              (i32.load8_u
                                                                                                                                               (i32.add
                                                                                                                                                (i32.add
                                                                                                                                                 (get_local $0)
                                                                                                                                                 (i32.shl
                                                                                                                                                  (tee_local $17
                                                                                                                                                   (i32.add
                                                                                                                                                    (get_local $1)
                                                                                                                                                    (i32.const 2)
                                                                                                                                                   )
                                                                                                                                                  )
                                                                                                                                                  (i32.const 3)
                                                                                                                                                 )
                                                                                                                                                )
                                                                                                                                                (get_local $7)
                                                                                                                                               )
                                                                                                                                              )
                                                                                                                                             )
                                                                                                                                             (i32.const 35)
                                                                                                                                            )
                                                                                                                                           )
                                                                                                                                           (set_local $19
                                                                                                                                            (i32.const 10)
                                                                                                                                           )
                                                                                                                                           (br $label$2)
                                                                                                                                          )
                                                                                                                                          (br_if $label$81
                                                                                                                                           (i32.ne
                                                                                                                                            (get_local $16)
                                                                                                                                            (i32.const 15)
                                                                                                                                           )
                                                                                                                                          )
                                                                                                                                          (set_local $19
                                                                                                                                           (i32.const 34)
                                                                                                                                          )
                                                                                                                                          (br $label$2)
                                                                                                                                         )
                                                                                                                                         (br_if $label$80
                                                                                                                                          (i32.ne
                                                                                                                                           (i32.xor
                                                                                                                                            (i32.gt_u
                                                                                                                                             (i32.and
                                                                                                                                              (i32.add
                                                                                                                                               (get_local $16)
                                                                                                                                               (i32.const -11)
                                                                                                                                              )
                                                                                                                                              (i32.const 255)
                                                                                                                                             )
                                                                                                                                             (i32.const 6)
                                                                                                                                            )
                                                                                                                                            (get_local $4)
                                                                                                                                           )
                                                                                                                                           (i32.const 1)
                                                                                                                                          )
                                                                                                                                         )
                                                                                                                                         (set_local $19
                                                                                                                                          (i32.const 35)
                                                                                                                                         )
                                                                                                                                         (br $label$2)
                                                                                                                                        )
                                                                                                                                        (i32.store8
                                                                                                                                         (get_local $3)
                                                                                                                                         (i32.const 1)
                                                                                                                                        )
                                                                                                                                        (return)
                                                                                                                                       )
                                                                                                                                       (br_if $label$79
                                                                                                                                        (i32.eq
                                                                                                                                         (tee_local $16
                                                                                                                                          (i32.load8_u
                                                                                                                                           (i32.add
                                                                                                                                            (i32.add
                                                                                                                                             (get_local $0)
                                                                                                                                             (i32.shl
                                                                                                                                              (get_local $17)
                                                                                                                                              (i32.const 3)
                                                                                                                                             )
                                                                                                                                            )
                                                                                                                                            (get_local $8)
                                                                                                                                           )
                                                                                                                                          )
                                                                                                                                         )
                                                                                                                                         (i32.const 35)
                                                                                                                                        )
                                                                                                                                       )
                                                                                                                                       (set_local $19
                                                                                                                                        (i32.const 12)
                                                                                                                                       )
                                                                                                                                       (br $label$2)
                                                                                                                                      )
                                                                                                                                      (br_if $label$78
                                                                                                                                       (i32.ne
                                                                                                                                        (get_local $16)
                                                                                                                                        (i32.const 15)
                                                                                                                                       )
                                                                                                                                      )
                                                                                                                                      (set_local $19
                                                                                                                                       (i32.const 32)
                                                                                                                                      )
                                                                                                                                      (br $label$2)
                                                                                                                                     )
                                                                                                                                     (br_if $label$77
                                                                                                                                      (i32.ne
                                                                                                                                       (i32.xor
                                                                                                                                        (i32.gt_u
                                                                                                                                         (i32.and
                                                                                                                                          (i32.add
                                                                                                                                           (get_local $16)
                                                                                                                                           (i32.const -11)
                                                                                                                                          )
                                                                                                                                          (i32.const 255)
                                                                                                                                         )
                                                                                                                                         (i32.const 6)
                                                                                                                                        )
                                                                                                                                        (get_local $4)
                                                                                                                                       )
                                                                                                                                       (i32.const 1)
                                                                                                                                      )
                                                                                                                                     )
                                                                                                                                     (set_local $19
                                                                                                                                      (i32.const 33)
                                                                                                                                     )
                                                                                                                                     (br $label$2)
                                                                                                                                    )
                                                                                                                                    (i32.store8
                                                                                                                                     (get_local $3)
                                                                                                                                     (i32.const 1)
                                                                                                                                    )
                                                                                                                                    (return)
                                                                                                                                   )
                                                                                                                                   (br_if $label$76
                                                                                                                                    (i32.gt_u
                                                                                                                                     (get_local $2)
                                                                                                                                     (i32.const 5)
                                                                                                                                    )
                                                                                                                                   )
                                                                                                                                   (set_local $19
                                                                                                                                    (i32.const 23)
                                                                                                                                   )
                                                                                                                                   (br $label$2)
                                                                                                                                  )
                                                                                                                                  (br_if $label$58
                                                                                                                                   (i32.eq
                                                                                                                                    (tee_local $16
                                                                                                                                     (i32.load8_u
                                                                                                                                      (i32.add
                                                                                                                                       (i32.add
                                                                                                                                        (get_local $0)
                                                                                                                                        (i32.shl
                                                                                                                                         (get_local $5)
                                                                                                                                         (i32.const 3)
                                                                                                                                        )
                                                                                                                                       )
                                                                                                                                       (tee_local $17
                                                                                                                                        (i32.add
                                                                                                                                         (get_local $2)
                                                                                                                                         (i32.const 2)
                                                                                                                                        )
                                                                                                                                       )
                                                                                                                                      )
                                                                                                                                     )
                                                                                                                                    )
                                                                                                                                    (i32.const 35)
                                                                                                                                   )
                                                                                                                                  )
                                                                                                                                  (set_local $19
                                                                                                                                   (i32.const 24)
                                                                                                                                  )
                                                                                                                                  (br $label$2)
                                                                                                                                 )
                                                                                                                                 (br_if $label$57
                                                                                                                                  (i32.ne
                                                                                                                                   (get_local $16)
                                                                                                                                   (i32.const 15)
                                                                                                                                  )
                                                                                                                                 )
                                                                                                                                 (set_local $19
                                                                                                                                  (i32.const 30)
                                                                                                                                 )
                                                                                                                                 (br $label$2)
                                                                                                                                )
                                                                                                                                (br_if $label$56
                                                                                                                                 (i32.ne
                                                                                                                                  (i32.xor
                                                                                                                                   (i32.gt_u
                                                                                                                                    (i32.and
                                                                                                                                     (i32.add
                                                                                                                                      (get_local $16)
                                                                                                                                      (i32.const -11)
                                                                                                                                     )
                                                                                                                                     (i32.const 255)
                                                                                                                                    )
                                                                                                                                    (i32.const 6)
                                                                                                                                   )
                                                                                                                                   (get_local $4)
                                                                                                                                  )
                                                                                                                                  (i32.const 1)
                                                                                                                                 )
                                                                                                                                )
                                                                                                                                (set_local $19
                                                                                                                                 (i32.const 31)
                                                                                                                                )
                                                                                                                                (br $label$2)
                                                                                                                               )
                                                                                                                               (i32.store8
                                                                                                                                (get_local $3)
                                                                                                                                (i32.const 1)
                                                                                                                               )
                                                                                                                               (return)
                                                                                                                              )
                                                                                                                              (br_if $label$55
                                                                                                                               (i32.eq
                                                                                                                                (tee_local $16
                                                                                                                                 (i32.load8_u
                                                                                                                                  (i32.add
                                                                                                                                   (i32.add
                                                                                                                                    (get_local $0)
                                                                                                                                    (i32.shl
                                                                                                                                     (get_local $6)
                                                                                                                                     (i32.const 3)
                                                                                                                                    )
                                                                                                                                   )
                                                                                                                                   (get_local $17)
                                                                                                                                  )
                                                                                                                                 )
                                                                                                                                )
                                                                                                                                (i32.const 35)
                                                                                                                               )
                                                                                                                              )
                                                                                                                              (set_local $19
                                                                                                                               (i32.const 26)
                                                                                                                              )
                                                                                                                              (br $label$2)
                                                                                                                             )
                                                                                                                             (br_if $label$54
                                                                                                                              (i32.ne
                                                                                                                               (get_local $16)
                                                                                                                               (i32.const 15)
                                                                                                                              )
                                                                                                                             )
                                                                                                                             (set_local $19
                                                                                                                              (i32.const 28)
                                                                                                                             )
                                                                                                                             (br $label$2)
                                                                                                                            )
                                                                                                                            (br_if $label$53
                                                                                                                             (i32.ne
                                                                                                                              (i32.xor
                                                                                                                               (i32.gt_u
                                                                                                                                (i32.and
                                                                                                                                 (i32.add
                                                                                                                                  (get_local $16)
                                                                                                                                  (i32.const -11)
                                                                                                                                 )
                                                                                                                                 (i32.const 255)
                                                                                                                                )
                                                                                                                                (i32.const 6)
                                                                                                                               )
                                                                                                                               (get_local $4)
                                                                                                                              )
                                                                                                                              (i32.const 1)
                                                                                                                             )
                                                                                                                            )
                                                                                                                            (set_local $19
                                                                                                                             (i32.const 29)
                                                                                                                            )
                                                                                                                            (br $label$2)
                                                                                                                           )
                                                                                                                           (i32.store8
                                                                                                                            (get_local $3)
                                                                                                                            (i32.const 1)
                                                                                                                           )
                                                                                                                           (return)
                                                                                                                          )
                                                                                                                          (br_if $label$75
                                                                                                                           (i32.lt_u
                                                                                                                            (get_local $2)
                                                                                                                            (i32.const 2)
                                                                                                                           )
                                                                                                                          )
                                                                                                                          (set_local $19
                                                                                                                           (i32.const 14)
                                                                                                                          )
                                                                                                                          (br $label$2)
                                                                                                                         )
                                                                                                                         (br_if $label$74
                                                                                                                          (i32.eq
                                                                                                                           (tee_local $16
                                                                                                                            (i32.load8_u
                                                                                                                             (i32.add
                                                                                                                              (i32.add
                                                                                                                               (get_local $0)
                                                                                                                               (i32.shl
                                                                                                                                (get_local $5)
                                                                                                                                (i32.const 3)
                                                                                                                               )
                                                                                                                              )
                                                                                                                              (tee_local $17
                                                                                                                               (i32.add
                                                                                                                                (get_local $2)
                                                                                                                                (i32.const -2)
                                                                                                                               )
                                                                                                                              )
                                                                                                                             )
                                                                                                                            )
                                                                                                                           )
                                                                                                                           (i32.const 35)
                                                                                                                          )
                                                                                                                         )
                                                                                                                         (set_local $19
                                                                                                                          (i32.const 15)
                                                                                                                         )
                                                                                                                         (br $label$2)
                                                                                                                        )
                                                                                                                        (br_if $label$73
                                                                                                                         (i32.ne
                                                                                                                          (get_local $16)
                                                                                                                          (i32.const 15)
                                                                                                                         )
                                                                                                                        )
                                                                                                                        (set_local $19
                                                                                                                         (i32.const 21)
                                                                                                                        )
                                                                                                                        (br $label$2)
                                                                                                                       )
                                                                                                                       (br_if $label$72
                                                                                                                        (i32.ne
                                                                                                                         (i32.xor
                                                                                                                          (i32.gt_u
                                                                                                                           (i32.and
                                                                                                                            (i32.add
                                                                                                                             (get_local $16)
                                                                                                                             (i32.const -11)
                                                                                                                            )
                                                                                                                            (i32.const 255)
                                                                                                                           )
                                                                                                                           (i32.const 6)
                                                                                                                          )
                                                                                                                          (get_local $4)
                                                                                                                         )
                                                                                                                         (i32.const 1)
                                                                                                                        )
                                                                                                                       )
                                                                                                                       (set_local $19
                                                                                                                        (i32.const 22)
                                                                                                                       )
                                                                                                                       (br $label$2)
                                                                                                                      )
                                                                                                                      (i32.store8
                                                                                                                       (get_local $3)
                                                                                                                       (i32.const 1)
                                                                                                                      )
                                                                                                                      (return)
                                                                                                                     )
                                                                                                                     (br_if $label$71
                                                                                                                      (i32.eq
                                                                                                                       (tee_local $16
                                                                                                                        (i32.load8_u
                                                                                                                         (i32.add
                                                                                                                          (i32.add
                                                                                                                           (get_local $0)
                                                                                                                           (i32.shl
                                                                                                                            (get_local $6)
                                                                                                                            (i32.const 3)
                                                                                                                           )
                                                                                                                          )
                                                                                                                          (get_local $17)
                                                                                                                         )
                                                                                                                        )
                                                                                                                       )
                                                                                                                       (i32.const 35)
                                                                                                                      )
                                                                                                                     )
                                                                                                                     (set_local $19
                                                                                                                      (i32.const 17)
                                                                                                                     )
                                                                                                                     (br $label$2)
                                                                                                                    )
                                                                                                                    (br_if $label$60
                                                                                                                     (i32.ne
                                                                                                                      (get_local $16)
                                                                                                                      (i32.const 15)
                                                                                                                     )
                                                                                                                    )
                                                                                                                    (set_local $19
                                                                                                                     (i32.const 19)
                                                                                                                    )
                                                                                                                    (br $label$2)
                                                                                                                   )
                                                                                                                   (br_if $label$59
                                                                                                                    (i32.ne
                                                                                                                     (i32.xor
                                                                                                                      (i32.gt_u
                                                                                                                       (i32.and
                                                                                                                        (i32.add
                                                                                                                         (get_local $16)
                                                                                                                         (i32.const -11)
                                                                                                                        )
                                                                                                                        (i32.const 255)
                                                                                                                       )
                                                                                                                       (i32.const 6)
                                                                                                                      )
                                                                                                                      (get_local $4)
                                                                                                                     )
                                                                                                                     (i32.const 1)
                                                                                                                    )
                                                                                                                   )
                                                                                                                   (set_local $19
                                                                                                                    (i32.const 20)
                                                                                                                   )
                                                                                                                   (br $label$2)
                                                                                                                  )
                                                                                                                  (i32.store8
                                                                                                                   (get_local $3)
                                                                                                                   (i32.const 1)
                                                                                                                  )
                                                                                                                  (set_local $19
                                                                                                                   (i32.const 18)
                                                                                                                  )
                                                                                                                  (br $label$2)
                                                                                                                 )
                                                                                                                 (return)
                                                                                                                )
                                                                                                                (set_local $19
                                                                                                                 (i32.const 46)
                                                                                                                )
                                                                                                                (br $label$2)
                                                                                                               )
                                                                                                               (set_local $19
                                                                                                                (i32.const 7)
                                                                                                               )
                                                                                                               (br $label$2)
                                                                                                              )
                                                                                                              (set_local $19
                                                                                                               (i32.const 7)
                                                                                                              )
                                                                                                              (br $label$2)
                                                                                                             )
                                                                                                             (set_local $19
                                                                                                              (i32.const 0)
                                                                                                             )
                                                                                                             (br $label$2)
                                                                                                            )
                                                                                                            (set_local $19
                                                                                                             (i32.const 97)
                                                                                                            )
                                                                                                            (br $label$2)
                                                                                                           )
                                                                                                           (set_local $19
                                                                                                            (i32.const 7)
                                                                                                           )
                                                                                                           (br $label$2)
                                                                                                          )
                                                                                                          (set_local $19
                                                                                                           (i32.const 5)
                                                                                                          )
                                                                                                          (br $label$2)
                                                                                                         )
                                                                                                         (set_local $19
                                                                                                          (i32.const 58)
                                                                                                         )
                                                                                                         (br $label$2)
                                                                                                        )
                                                                                                        (set_local $19
                                                                                                         (i32.const 95)
                                                                                                        )
                                                                                                        (br $label$2)
                                                                                                       )
                                                                                                       (set_local $19
                                                                                                        (i32.const 94)
                                                                                                       )
                                                                                                       (br $label$2)
                                                                                                      )
                                                                                                      (set_local $19
                                                                                                       (i32.const 5)
                                                                                                      )
                                                                                                      (br $label$2)
                                                                                                     )
                                                                                                     (set_local $19
                                                                                                      (i32.const 18)
                                                                                                     )
                                                                                                     (br $label$2)
                                                                                                    )
                                                                                                    (set_local $19
                                                                                                     (i32.const 6)
                                                                                                    )
                                                                                                    (br $label$2)
                                                                                                   )
                                                                                                   (set_local $19
                                                                                                    (i32.const 18)
                                                                                                   )
                                                                                                   (br $label$2)
                                                                                                  )
                                                                                                  (set_local $19
                                                                                                   (i32.const 6)
                                                                                                  )
                                                                                                  (br $label$2)
                                                                                                 )
                                                                                                 (set_local $19
                                                                                                  (i32.const 6)
                                                                                                 )
                                                                                                 (br $label$2)
                                                                                                )
                                                                                                (set_local $19
                                                                                                 (i32.const 18)
                                                                                                )
                                                                                                (br $label$2)
                                                                                               )
                                                                                               (set_local $19
                                                                                                (i32.const 6)
                                                                                               )
                                                                                               (br $label$2)
                                                                                              )
                                                                                              (set_local $19
                                                                                               (i32.const 6)
                                                                                              )
                                                                                              (br $label$2)
                                                                                             )
                                                                                             (set_local $19
                                                                                              (i32.const 6)
                                                                                             )
                                                                                             (br $label$2)
                                                                                            )
                                                                                            (set_local $19
                                                                                             (i32.const 7)
                                                                                            )
                                                                                            (br $label$2)
                                                                                           )
                                                                                           (set_local $19
                                                                                            (i32.const 49)
                                                                                           )
                                                                                           (br $label$2)
                                                                                          )
                                                                                          (set_local $19
                                                                                           (i32.const 7)
                                                                                          )
                                                                                          (br $label$2)
                                                                                         )
                                                                                         (set_local $19
                                                                                          (i32.const 7)
                                                                                         )
                                                                                         (br $label$2)
                                                                                        )
                                                                                        (set_local $19
                                                                                         (i32.const 7)
                                                                                        )
                                                                                        (br $label$2)
                                                                                       )
                                                                                       (set_local $19
                                                                                        (i32.const 72)
                                                                                       )
                                                                                       (br $label$2)
                                                                                      )
                                                                                      (set_local $19
                                                                                       (i32.const 7)
                                                                                      )
                                                                                      (br $label$2)
                                                                                     )
                                                                                     (set_local $19
                                                                                      (i32.const 45)
                                                                                     )
                                                                                     (br $label$2)
                                                                                    )
                                                                                    (set_local $19
                                                                                     (i32.const 9)
                                                                                    )
                                                                                    (br $label$2)
                                                                                   )
                                                                                   (set_local $19
                                                                                    (i32.const 13)
                                                                                   )
                                                                                   (br $label$2)
                                                                                  )
                                                                                  (set_local $19
                                                                                   (i32.const 34)
                                                                                  )
                                                                                  (br $label$2)
                                                                                 )
                                                                                 (set_local $19
                                                                                  (i32.const 11)
                                                                                 )
                                                                                 (br $label$2)
                                                                                )
                                                                                (set_local $19
                                                                                 (i32.const 11)
                                                                                )
                                                                                (br $label$2)
                                                                               )
                                                                               (set_local $19
                                                                                (i32.const 32)
                                                                               )
                                                                               (br $label$2)
                                                                              )
                                                                              (set_local $19
                                                                               (i32.const 13)
                                                                              )
                                                                              (br $label$2)
                                                                             )
                                                                             (set_local $19
                                                                              (i32.const 13)
                                                                             )
                                                                             (br $label$2)
                                                                            )
                                                                            (set_local $19
                                                                             (i32.const 14)
                                                                            )
                                                                            (br $label$2)
                                                                           )
                                                                           (set_local $19
                                                                            (i32.const 18)
                                                                           )
                                                                           (br $label$2)
                                                                          )
                                                                          (set_local $19
                                                                           (i32.const 21)
                                                                          )
                                                                          (br $label$2)
                                                                         )
                                                                         (set_local $19
                                                                          (i32.const 16)
                                                                         )
                                                                         (br $label$2)
                                                                        )
                                                                        (set_local $19
                                                                         (i32.const 16)
                                                                        )
                                                                        (br $label$2)
                                                                       )
                                                                       (set_local $19
                                                                        (i32.const 19)
                                                                       )
                                                                       (br $label$2)
                                                                      )
                                                                      (set_local $19
                                                                       (i32.const 18)
                                                                      )
                                                                      (br $label$2)
                                                                     )
                                                                     (set_local $19
                                                                      (i32.const 55)
                                                                     )
                                                                     (br $label$2)
                                                                    )
                                                                    (set_local $19
                                                                     (i32.const 18)
                                                                    )
                                                                    (br $label$2)
                                                                   )
                                                                   (set_local $19
                                                                    (i32.const 55)
                                                                   )
                                                                   (br $label$2)
                                                                  )
                                                                  (set_local $19
                                                                   (i32.const 18)
                                                                  )
                                                                  (br $label$2)
                                                                 )
                                                                 (set_local $19
                                                                  (i32.const 18)
                                                                 )
                                                                 (br $label$2)
                                                                )
                                                                (set_local $19
                                                                 (i32.const 78)
                                                                )
                                                                (br $label$2)
                                                               )
                                                               (set_local $19
                                                                (i32.const 18)
                                                               )
                                                               (br $label$2)
                                                              )
                                                              (set_local $19
                                                               (i32.const 78)
                                                              )
                                                              (br $label$2)
                                                             )
                                                             (set_local $19
                                                              (i32.const 18)
                                                             )
                                                             (br $label$2)
                                                            )
                                                            (set_local $19
                                                             (i32.const 18)
                                                            )
                                                            (br $label$2)
                                                           )
                                                           (set_local $19
                                                            (i32.const 18)
                                                           )
                                                           (br $label$2)
                                                          )
                                                          (set_local $19
                                                           (i32.const 30)
                                                          )
                                                          (br $label$2)
                                                         )
                                                         (set_local $19
                                                          (i32.const 25)
                                                         )
                                                         (br $label$2)
                                                        )
                                                        (set_local $19
                                                         (i32.const 25)
                                                        )
                                                        (br $label$2)
                                                       )
                                                       (set_local $19
                                                        (i32.const 28)
                                                       )
                                                       (br $label$2)
                                                      )
                                                      (set_local $19
                                                       (i32.const 27)
                                                      )
                                                      (br $label$2)
                                                     )
                                                     (set_local $19
                                                      (i32.const 27)
                                                     )
                                                     (br $label$2)
                                                    )
                                                    (set_local $19
                                                     (i32.const 43)
                                                    )
                                                    (br $label$2)
                                                   )
                                                   (set_local $19
                                                    (i32.const 38)
                                                   )
                                                   (br $label$2)
                                                  )
                                                  (set_local $19
                                                   (i32.const 38)
                                                  )
                                                  (br $label$2)
                                                 )
                                                 (set_local $19
                                                  (i32.const 41)
                                                 )
                                                 (br $label$2)
                                                )
                                                (set_local $19
                                                 (i32.const 40)
                                                )
                                                (br $label$2)
                                               )
                                               (set_local $19
                                                (i32.const 40)
                                               )
                                               (br $label$2)
                                              )
                                              (set_local $19
                                               (i32.const 47)
                                              )
                                              (br $label$2)
                                             )
                                             (set_local $19
                                              (i32.const 61)
                                             )
                                             (br $label$2)
                                            )
                                            (set_local $19
                                             (i32.const 54)
                                            )
                                            (br $label$2)
                                           )
                                           (set_local $19
                                            (i32.const 58)
                                           )
                                           (br $label$2)
                                          )
                                          (set_local $19
                                           (i32.const 59)
                                          )
                                          (br $label$2)
                                         )
                                         (set_local $19
                                          (i32.const 57)
                                         )
                                         (br $label$2)
                                        )
                                        (set_local $19
                                         (i32.const 56)
                                        )
                                        (br $label$2)
                                       )
                                       (set_local $19
                                        (i32.const 54)
                                       )
                                       (br $label$2)
                                      )
                                      (set_local $19
                                       (i32.const 55)
                                      )
                                      (br $label$2)
                                     )
                                     (set_local $19
                                      (i32.const 55)
                                     )
                                     (br $label$2)
                                    )
                                    (set_local $19
                                     (i32.const 55)
                                    )
                                    (br $label$2)
                                   )
                                   (set_local $19
                                    (i32.const 58)
                                   )
                                   (br $label$2)
                                  )
                                  (set_local $19
                                   (i32.const 58)
                                  )
                                  (br $label$2)
                                 )
                                 (set_local $19
                                  (i32.const 82)
                                 )
                                 (br $label$2)
                                )
                                (set_local $19
                                 (i32.const 80)
                                )
                                (br $label$2)
                               )
                               (set_local $19
                                (i32.const 79)
                               )
                               (br $label$2)
                              )
                              (set_local $19
                               (i32.const 77)
                              )
                              (br $label$2)
                             )
                             (set_local $19
                              (i32.const 58)
                             )
                             (br $label$2)
                            )
                            (set_local $19
                             (i32.const 64)
                            )
                            (br $label$2)
                           )
                           (set_local $19
                            (i32.const 63)
                           )
                           (br $label$2)
                          )
                          (set_local $19
                           (i32.const 65)
                          )
                          (br $label$2)
                         )
                         (set_local $19
                          (i32.const 69)
                         )
                         (br $label$2)
                        )
                        (set_local $19
                         (i32.const 65)
                        )
                        (br $label$2)
                       )
                       (set_local $19
                        (i32.const 66)
                       )
                       (br $label$2)
                      )
                      (set_local $19
                       (i32.const 67)
                      )
                      (br $label$2)
                     )
                     (set_local $19
                      (i32.const 84)
                     )
                     (br $label$2)
                    )
                    (set_local $19
                     (i32.const 77)
                    )
                    (br $label$2)
                   )
                   (set_local $19
                    (i32.const 78)
                   )
                   (br $label$2)
                  )
                  (set_local $19
                   (i32.const 78)
                  )
                  (br $label$2)
                 )
                 (set_local $19
                  (i32.const 78)
                 )
                 (br $label$2)
                )
                (set_local $19
                 (i32.const 80)
                )
                (br $label$2)
               )
               (set_local $19
                (i32.const 87)
               )
               (br $label$2)
              )
              (set_local $19
               (i32.const 86)
              )
              (br $label$2)
             )
             (set_local $19
              (i32.const 88)
             )
             (br $label$2)
            )
            (set_local $19
             (i32.const 92)
            )
            (br $label$2)
           )
           (set_local $19
            (i32.const 88)
           )
           (br $label$2)
          )
          (set_local $19
           (i32.const 89)
          )
          (br $label$2)
         )
         (set_local $19
          (i32.const 90)
         )
         (br $label$2)
        )
        (set_local $19
         (i32.const 100)
        )
        (br $label$2)
       )
       (set_local $19
        (i32.const 99)
       )
       (br $label$2)
      )
      (set_local $19
       (i32.const 101)
      )
      (br $label$2)
     )
     (set_local $19
      (i32.const 104)
     )
     (br $label$2)
    )
    (set_local $19
     (i32.const 101)
    )
    (br $label$2)
   )
   (set_local $19
    (i32.const 102)
   )
   (br $label$2)
  )
 )
 (func $_Z11acceptmatch19Acceptmatch_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load align=1
     (get_local $0)
    )
   )
  )
  (i64.store offset=32
   (get_local $3)
   (tee_local $2
    (i64.load offset=8 align=1
     (get_local $0)
    )
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $1)
     (i64.const 4851938105189466112)
     (i64.const -4995154566124142592)
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
     (i32.const 30)
    )
    (i32.const 30)
   )
   (i32.const 16)
  )
  (call $assert
   (i32.eqz
    (i32.load8_u offset=57
     (get_local $3)
    )
   )
   (i32.const 80)
  )
  (i64.store
   (get_local $3)
   (get_local $1)
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $2)
     (i64.const 4851938105189466112)
     (i64.const -4995154566124142592)
     (get_local $3)
     (i32.const 30)
    )
    (i32.const 30)
   )
   (i32.const 16)
  )
  (call $assert
   (i32.eqz
    (i32.load8_u offset=25
     (get_local $3)
    )
   )
   (i32.const 80)
  )
  (i32.store8 offset=57
   (get_local $3)
   (i32.const 1)
  )
  (i32.store offset=58 align=2
   (get_local $3)
   (tee_local $0
    (call $now)
   )
  )
  (i32.store8 offset=25
   (get_local $3)
   (i32.const 1)
  )
  (i32.store offset=26 align=2
   (get_local $3)
   (get_local $0)
  )
  (call $assert
   (i32.and
    (i32.ne
     (call $update_i64
      (get_local $1)
      (i64.const -4995154566124142592)
      (i32.add
       (get_local $3)
       (i32.const 32)
      )
      (i32.const 30)
     )
     (i32.const 0)
    )
    (i32.ne
     (call $update_i64
      (get_local $2)
      (i64.const -4995154566354305024)
      (get_local $3)
      (i32.const 30)
     )
     (i32.const 0)
    )
   )
   (i32.const 144)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $_Z12declinematch19Acceptmatch_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load align=1
     (get_local $0)
    )
   )
  )
  (i64.store offset=176
   (get_local $3)
   (tee_local $2
    (i64.load offset=8 align=1
     (get_local $0)
    )
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $1)
     (i64.const 4851938105189466112)
     (i64.const -4995154566124142592)
     (i32.add
      (get_local $3)
      (i32.const 176)
     )
     (i32.const 30)
    )
    (i32.const 30)
   )
   (i32.const 16)
  )
  (call $assert
   (i32.eqz
    (i32.load8_u offset=201
     (get_local $3)
    )
   )
   (i32.const 80)
  )
  (i64.store offset=144
   (get_local $3)
   (get_local $1)
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $2)
     (i64.const 4851938105189466112)
     (i64.const -4995154566354305024)
     (i32.add
      (get_local $3)
      (i32.const 144)
     )
     (i32.const 30)
    )
    (i32.const 30)
   )
   (i32.const 16)
  )
  (call $assert
   (i32.eqz
    (i32.load8_u offset=169
     (get_local $3)
    )
   )
   (i32.const 80)
  )
  (i32.store8 offset=201
   (get_local $3)
   (i32.const 2)
  )
  (i32.store8 offset=169
   (get_local $3)
   (i32.const 2)
  )
  (call $assert
   (i32.and
    (i32.ne
     (call $update_i64
      (get_local $1)
      (i64.const -4995154566124142592)
      (i32.add
       (get_local $3)
       (i32.const 176)
      )
      (i32.const 30)
     )
     (i32.const 0)
    )
    (i32.ne
     (call $update_i64
      (get_local $2)
      (i64.const -4995154566354305024)
      (i32.add
       (get_local $3)
       (i32.const 144)
      )
      (i32.const 30)
     )
     (i32.const 0)
    )
   )
   (i32.const 144)
  )
  (i32.store8 offset=60
   (get_local $3)
   (i32.const 64)
  )
  (i32.store8 offset=55
   (get_local $3)
   (i32.const 4)
  )
  (i32.store8 offset=125
   (get_local $3)
   (i32.const 5)
  )
  (i32.store8 offset=139
   (get_local $3)
   (i32.const 4)
  )
  (i64.store
   (get_local $3)
   (i64.load offset=184
    (get_local $3)
   )
  )
  (call $assert
   (i32.ne
    (call $remove_i64
     (get_local $2)
     (i64.const -7948142323357974528)
     (get_local $3)
    )
    (i32.const 0)
   )
   (i32.const 192)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 208)
   )
  )
 )
 (func $_Z11matchmaking19Matchmaking_message (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load align=1
     (get_local $0)
    )
   )
  )
  (i64.store
   (get_local $2)
   (get_local $1)
  )
  (i32.store8 offset=8
   (get_local $2)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (call $load_i64
       (i64.const 4851938105189466112)
       (i64.const 4851938105189466112)
       (i64.const -7948142195306604544)
       (get_local $2)
       (i32.const 9)
      )
      (i32.const 9)
     )
    )
    (drop
     (call $update_i64
      (i64.const 4851938105189466112)
      (i64.const -7948142195306604544)
      (get_local $2)
      (i32.const 9)
     )
    )
    (br $label$0)
   )
   (drop
    (call $store_i64
     (i64.const 4851938105189466112)
     (i64.const -7948142195306604544)
     (get_local $2)
     (i32.const 9)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $_Z8claimwin16Claimwin_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load offset=8 align=1
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=124
   (get_local $3)
   (i32.const 64)
  )
  (i32.store8 offset=119
   (get_local $3)
   (i32.const 4)
  )
  (i32.store8 offset=189
   (get_local $3)
   (i32.const 5)
  )
  (i32.store8 offset=203
   (get_local $3)
   (i32.const 4)
  )
  (i64.store offset=64
   (get_local $3)
   (i64.load align=1
    (get_local $0)
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (tee_local $2
      (i64.load offset=16 align=1
       (get_local $0)
      )
     )
     (i64.const 4851938105189466112)
     (i64.const -7948142323357974528)
     (i32.add
      (get_local $3)
      (i32.const 64)
     )
     (i32.const 144)
    )
    (i32.const 144)
   )
   (i32.const 240)
  )
  (call $assert
   (i32.or
    (i64.eq
     (get_local $1)
     (i64.load offset=80
      (get_local $3)
     )
    )
    (i64.eq
     (get_local $1)
     (i64.load offset=88
      (get_local $3)
     )
    )
   )
   (i32.const 288)
  )
  (call $assert
   (i32.eq
    (i32.load8_u offset=96
     (get_local $3)
    )
    (i32.const 1)
   )
   (i32.const 336)
  )
  (call $assert
   (i32.ge_u
    (call $now)
    (i32.add
     (i32.load offset=199 align=1
      (get_local $3)
     )
     (i32.load offset=195 align=1
      (get_local $3)
     )
    )
   )
   (i32.const 416)
  )
  (i32.store8 offset=96
   (get_local $3)
   (i32.const 3)
  )
  (i64.store offset=32
   (get_local $3)
   (get_local $2)
  )
  (set_local $0
   (call $update_i64
    (i64.load offset=72
     (get_local $3)
    )
    (i64.const -4995154566124142592)
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
    (i32.const 30)
   )
  )
  (i64.store
   (get_local $3)
   (i64.load offset=72
    (get_local $3)
   )
  )
  (call $assert
   (i32.and
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
    (i32.and
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -4995154566354305024)
       (get_local $3)
       (i32.const 30)
      )
      (i32.const 0)
     )
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -7948142323357974528)
       (i32.add
        (get_local $3)
        (i32.const 64)
       )
       (i32.const 144)
      )
      (i32.const 0)
     )
    )
   )
   (i32.const 480)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 208)
   )
  )
 )
 (func $_Z8newmatch16Newmatch_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load align=1
     (get_local $0)
    )
   )
  )
  (i64.store offset=176
   (get_local $8)
   (tee_local $2
    (i64.load offset=9 align=1
     (get_local $0)
    )
   )
  )
  (set_local $7
   (call $load_i64
    (get_local $1)
    (i64.const 4851938105189466112)
    (i64.const -4995154566354305024)
    (i32.add
     (get_local $8)
     (i32.const 176)
    )
    (i32.const 30)
   )
  )
  (call $assert
   (tee_local $6
    (i32.load offset=17 align=1
     (get_local $0)
    )
   )
   (i32.const 544)
  )
  (call $assert
   (i32.ne
    (get_local $7)
    (i32.const 30)
   )
   (i32.const 624)
  )
  (set_local $7
   (call $now)
  )
  (i32.store offset=193 align=1
   (get_local $8)
   (get_local $6)
  )
  (i32.store offset=197 align=1
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=184
   (get_local $8)
   (tee_local $4
    (i64.extend_u/i32
     (get_local $7)
    )
   )
  )
  (i32.store8 offset=192
   (get_local $8)
   (i32.eqz
    (tee_local $7
     (i32.load8_u offset=8
      (get_local $0)
     )
    )
   )
  )
  (i64.store offset=152
   (get_local $8)
   (get_local $4)
  )
  (i64.store offset=144
   (get_local $8)
   (get_local $1)
  )
  (i32.store8 offset=160
   (get_local $8)
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
  )
  (i32.store offset=161 align=1
   (get_local $8)
   (get_local $6)
  )
  (i32.store offset=165 align=1
   (get_local $8)
   (i32.const 0)
  )
  (i32.store8 offset=60
   (get_local $8)
   (i32.const 64)
  )
  (i32.store8 offset=55
   (get_local $8)
   (i32.const 4)
  )
  (i32.store8 offset=125
   (get_local $8)
   (i32.const 5)
  )
  (i32.store8 offset=139
   (get_local $8)
   (i32.const 4)
  )
  (i64.store
   (get_local $8)
   (get_local $4)
  )
  (call $assert
   (i32.ne
    (call $load_i64
     (get_local $1)
     (i64.const 4851938105189466112)
     (i64.const -7948142323357974528)
     (get_local $8)
     (i32.const 144)
    )
    (i32.const 144)
   )
   (i32.const 688)
  )
  (i64.store offset=8
   (get_local $8)
   (get_local $2)
  )
  (i32.store offset=135 align=1
   (get_local $8)
   (get_local $6)
  )
  (i32.store8 offset=32
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.load align=1
    (select
     (get_local $0)
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 9)
      )
     )
     (get_local $7)
    )
   )
  )
  (i64.store offset=24
   (get_local $8)
   (i64.load align=1
    (select
     (get_local $6)
     (get_local $0)
     (get_local $7)
    )
   )
  )
  (i32.store8 offset=33
   (get_local $8)
   (i32.const 2)
  )
  (i64.store offset=34 align=2
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=42 align=2
   (get_local $8)
   (i64.const 0)
  )
  (i32.store offset=50 align=2
   (get_local $8)
   (i32.const 0)
  )
  (i32.store8 offset=54
   (get_local $8)
   (i32.const 10)
  )
  (i32.store8 offset=56
   (get_local $8)
   (i32.const 7)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 57)
   )
   (i32.const 4)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 58)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 59)
   )
   (i32.const 4)
  )
  (set_local $3
   (i32.add
    (get_local $8)
    (i32.const 61)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (loop $label$0
   (i32.store8
    (i32.add
     (get_local $3)
     (get_local $0)
    )
    (i32.load8_u
     (i32.add
      (i32.add
       (i32.shl
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
        (i32.const 3)
       )
       (tee_local $5
        (i32.and
         (get_local $6)
         (i32.const 255)
        )
       )
      )
      (i32.const 896)
     )
    )
   )
   (set_local $6
    (select
     (i32.const 0)
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
     (tee_local $5
      (i32.eq
       (get_local $5)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $5)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i32.ne
     (tee_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 130)
   )
   (i32.const 10)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 141)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 142)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 143)
   )
   (i32.const 0)
  )
  (i32.store offset=126 align=2
   (get_local $8)
   (i32.const 168430090)
  )
  (i32.store8 offset=140
   (get_local $8)
   (i32.const 0)
  )
  (set_local $0
   (call $store_i64
    (get_local $1)
    (i64.const -4995154566354305024)
    (i32.add
     (get_local $8)
     (i32.const 176)
    )
    (i32.const 30)
   )
  )
  (set_local $6
   (call $store_i64
    (get_local $2)
    (i64.const -4995154566124142592)
    (i32.add
     (get_local $8)
     (i32.const 144)
    )
    (i32.const 30)
   )
  )
  (set_local $7
   (call $store_i64
    (get_local $1)
    (i64.const -7948142323357974528)
    (get_local $8)
    (i32.const 144)
   )
  )
  (call $assert
   (i32.and
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
    (i32.ne
     (get_local $6)
     (i32.const 0)
    )
   )
   (i32.const 752)
  )
  (call $assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 800)
  )
  (call $prints
   (i32.const 848)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 208)
   )
  )
 )
 (func $_Z8castling16Castling_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 272)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load offset=9 align=1
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=188
   (get_local $9)
   (i32.const 64)
  )
  (i32.store8 offset=183
   (get_local $9)
   (i32.const 4)
  )
  (i32.store8 offset=253
   (get_local $9)
   (i32.const 5)
  )
  (i32.store8 offset=267
   (get_local $9)
   (i32.const 4)
  )
  (i64.store offset=128
   (get_local $9)
   (i64.load align=1
    (get_local $0)
   )
  )
  (set_local $6
   (call $load_i64
    (tee_local $2
     (i64.load offset=17 align=1
      (get_local $0)
     )
    )
    (i64.const 4851938105189466112)
    (i64.const -7948142323357974528)
    (i32.add
     (get_local $9)
     (i32.const 128)
    )
    (i32.const 144)
   )
  )
  (call $assert
   (i32.eq
    (i32.load8_u offset=160
     (get_local $9)
    )
    (i32.const 1)
   )
   (i32.const 960)
  )
  (call $assert
   (i32.eq
    (get_local $6)
    (i32.const 144)
   )
   (i32.const 1024)
  )
  (call $assert
   (i32.or
    (i64.eq
     (get_local $1)
     (i64.load offset=144
      (get_local $9)
     )
    )
    (i64.eq
     (get_local $1)
     (i64.load offset=152
      (get_local $9)
     )
    )
   )
   (i32.const 1056)
  )
  (call $assert
   (i32.ne
    (tee_local $4
     (i64.ne
      (get_local $1)
      (i64.load offset=144
       (get_local $9)
      )
     )
    )
    (i32.load8_u offset=161
     (get_local $9)
    )
   )
   (i32.const 1088)
  )
  (set_local $3
   (i32.add
    (get_local $9)
    (i32.const 189)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (loop $label$0
   (i32.store8
    (i32.add
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 64)
      )
      (i32.shl
       (i32.and
        (get_local $7)
        (i32.const 255)
       )
       (i32.const 3)
      )
     )
     (tee_local $5
      (i32.and
       (get_local $8)
       (i32.const 255)
      )
     )
    )
    (i32.load8_u
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (set_local $8
    (select
     (i32.const 0)
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
     (tee_local $5
      (i32.eq
       (get_local $5)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $5)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i32.ne
     (tee_local $6
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
  (i32.store8 offset=63
   (get_local $9)
   (i32.const 0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.eqz
          (i32.load8_u offset=8
           (get_local $0)
          )
         )
        )
        (br_if $label$5
         (i32.eqz
          (get_local $4)
         )
        )
        (set_local $7
         (i32.const 0)
        )
        (set_local $6
         (i32.const 0)
        )
        (block $label$7
         (br_if $label$7
          (i32.load8_u
           (i32.add
            (get_local $9)
            (i32.const 271)
           )
          )
         )
         (set_local $6
          (i32.const 0)
         )
         (br_if $label$7
          (i32.load8_u offset=69
           (get_local $9)
          )
         )
         (set_local $6
          (i32.eqz
           (i32.load8_u offset=70
            (get_local $9)
           )
          )
         )
        )
        (call $assert
         (get_local $6)
         (i32.const 1568)
        )
        (call $_Z12detect_checkRA8_A8_hhhRbb
         (i32.add
          (get_local $9)
          (i32.const 64)
         )
         (i32.const 0)
         (i32.const 4)
         (i32.add
          (get_local $9)
          (i32.const 63)
         )
         (i32.const 1)
        )
        (call $assert
         (i32.xor
          (i32.load8_u offset=63
           (get_local $9)
          )
          (i32.const 1)
         )
         (i32.const 1296)
        )
        (call $_Z12detect_checkRA8_A8_hhhRbb
         (i32.add
          (get_local $9)
          (i32.const 64)
         )
         (i32.const 0)
         (i32.const 5)
         (i32.add
          (get_local $9)
          (i32.const 63)
         )
         (i32.const 1)
        )
        (call $_Z12detect_checkRA8_A8_hhhRbb
         (i32.add
          (get_local $9)
          (i32.const 64)
         )
         (i32.const 0)
         (i32.const 6)
         (i32.add
          (get_local $9)
          (i32.const 63)
         )
         (i32.const 1)
        )
        (call $assert
         (i32.xor
          (i32.load8_u offset=63
           (get_local $9)
          )
          (i32.const 1)
         )
         (i32.const 1344)
        )
        (call $_Z12detect_checkRA8_A8_hhhRbb
         (i32.add
          (get_local $9)
          (i32.const 64)
         )
         (i32.const 0)
         (i32.const 7)
         (i32.add
          (get_local $9)
          (i32.const 63)
         )
         (i32.const 1)
        )
        (call $assert
         (i32.xor
          (i32.load8_u offset=63
           (get_local $9)
          )
          (i32.const 1)
         )
         (i32.const 1456)
        )
        (set_local $6
         (i32.const 3)
        )
        (set_local $0
         (i32.const 2)
        )
        (set_local $8
         (i32.const 31)
        )
        (set_local $5
         (i32.const 33)
        )
        (br $label$4)
       )
       (br_if $label$3
        (i32.eqz
         (get_local $4)
        )
       )
       (set_local $6
        (i32.const 0)
       )
       (block $label$8
        (br_if $label$8
         (i32.and
          (i32.or
           (i32.load8_u
            (i32.add
             (get_local $9)
             (i32.const 270)
            )
           )
           (i32.load8_u offset=65
            (get_local $9)
           )
          )
          (i32.const 255)
         )
        )
        (set_local $6
         (i32.const 0)
        )
        (br_if $label$8
         (i32.load8_u offset=66
          (get_local $9)
         )
        )
        (set_local $6
         (i32.eqz
          (i32.load8_u offset=67
           (get_local $9)
          )
         )
        )
       )
       (call $assert
        (get_local $6)
        (i32.const 1728)
       )
       (set_local $5
        (i32.const 1)
       )
       (call $_Z12detect_checkRA8_A8_hhhRbb
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 0)
        (i32.const 4)
        (i32.add
         (get_local $9)
         (i32.const 63)
        )
        (i32.const 1)
       )
       (call $assert
        (i32.xor
         (i32.load8_u offset=63
          (get_local $9)
         )
         (i32.const 1)
        )
        (i32.const 1296)
       )
       (call $_Z12detect_checkRA8_A8_hhhRbb
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 0)
        (i32.const 1)
        (i32.add
         (get_local $9)
         (i32.const 63)
        )
        (i32.const 1)
       )
       (set_local $0
        (i32.const 2)
       )
       (call $_Z12detect_checkRA8_A8_hhhRbb
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 0)
        (i32.const 2)
        (i32.add
         (get_local $9)
         (i32.const 63)
        )
        (i32.const 1)
       )
       (set_local $6
        (i32.const 3)
       )
       (call $_Z12detect_checkRA8_A8_hhhRbb
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 0)
        (i32.const 3)
        (i32.add
         (get_local $9)
         (i32.const 63)
        )
        (i32.const 1)
       )
       (call $assert
        (i32.xor
         (i32.load8_u offset=63
          (get_local $9)
         )
         (i32.const 1)
        )
        (i32.const 1344)
       )
       (call $_Z12detect_checkRA8_A8_hhhRbb
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 0)
        (i32.const 0)
        (i32.add
         (get_local $9)
         (i32.const 63)
        )
        (i32.const 1)
       )
       (call $assert
        (i32.xor
         (i32.load8_u offset=63
          (get_local $9)
         )
         (i32.const 1)
        )
        (i32.const 1456)
       )
       (i32.store8 offset=68
        (get_local $9)
        (i32.const 0)
       )
       (i32.store offset=64
        (get_local $9)
        (i32.const 622788608)
       )
       (set_local $3
        (i32.const 2)
       )
       (br $label$2)
      )
      (set_local $0
       (i32.const 0)
      )
      (set_local $6
       (i32.const 0)
      )
      (block $label$9
       (br_if $label$9
        (i32.load8_u
         (i32.add
          (get_local $9)
          (i32.const 269)
         )
        )
       )
       (set_local $6
        (i32.const 0)
       )
       (br_if $label$9
        (i32.load8_u
         (i32.add
          (get_local $9)
          (i32.const 125)
         )
        )
       )
       (set_local $6
        (i32.eqz
         (i32.load8_u
          (i32.add
           (get_local $9)
           (i32.const 126)
          )
         )
        )
       )
      )
      (call $assert
       (get_local $6)
       (i32.const 1136)
      )
      (set_local $7
       (i32.const 7)
      )
      (call $_Z12detect_checkRA8_A8_hhhRbb
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.const 7)
       (i32.const 4)
       (i32.add
        (get_local $9)
        (i32.const 63)
       )
       (i32.const 0)
      )
      (set_local $6
       (i32.const 1)
      )
      (call $assert
       (i32.xor
        (i32.load8_u offset=63
         (get_local $9)
        )
        (i32.const 1)
       )
       (i32.const 1296)
      )
      (call $_Z12detect_checkRA8_A8_hhhRbb
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.const 7)
       (i32.const 5)
       (i32.add
        (get_local $9)
        (i32.const 63)
       )
       (i32.const 0)
      )
      (call $_Z12detect_checkRA8_A8_hhhRbb
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.const 7)
       (i32.const 6)
       (i32.add
        (get_local $9)
        (i32.const 63)
       )
       (i32.const 0)
      )
      (call $assert
       (i32.xor
        (i32.load8_u offset=63
         (get_local $9)
        )
        (i32.const 1)
       )
       (i32.const 1344)
      )
      (call $_Z12detect_checkRA8_A8_hhhRbb
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.const 7)
       (i32.const 7)
       (i32.add
        (get_local $9)
        (i32.const 63)
       )
       (i32.const 0)
      )
      (call $assert
       (i32.xor
        (i32.load8_u offset=63
         (get_local $9)
        )
        (i32.const 1)
       )
       (i32.const 1456)
      )
      (set_local $8
       (i32.const 11)
      )
      (set_local $5
       (i32.const 13)
      )
     )
     (i32.store8 offset=5
      (tee_local $7
       (i32.add
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.shl
         (get_local $7)
         (i32.const 3)
        )
       )
      )
      (get_local $5)
     )
     (i32.store8 offset=4
      (get_local $7)
      (i32.const 0)
     )
     (i32.store8 offset=6
      (get_local $7)
      (get_local $8)
     )
     (i32.store8 offset=7
      (get_local $7)
      (i32.const 0)
     )
     (set_local $8
      (i32.const 6)
     )
     (set_local $5
      (i32.const 2)
     )
     (set_local $3
      (i32.const 1)
     )
     (br $label$1)
    )
    (set_local $0
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (block $label$10
     (br_if $label$10
      (i32.and
       (i32.or
        (i32.load8_u offset=268
         (get_local $9)
        )
        (i32.load8_u
         (i32.add
          (get_local $9)
          (i32.const 121)
         )
        )
       )
       (i32.const 255)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (br_if $label$10
      (i32.load8_u
       (i32.add
        (get_local $9)
        (i32.const 122)
       )
      )
     )
     (set_local $6
      (i32.eqz
       (i32.load8_u
        (i32.add
         (get_local $9)
         (i32.const 123)
        )
       )
      )
     )
    )
    (call $assert
     (get_local $6)
     (i32.const 1728)
    )
    (call $_Z12detect_checkRA8_A8_hhhRbb
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
     (i32.const 7)
     (i32.const 4)
     (i32.add
      (get_local $9)
      (i32.const 63)
     )
     (i32.const 0)
    )
    (set_local $6
     (i32.const 1)
    )
    (call $assert
     (i32.xor
      (i32.load8_u offset=63
       (get_local $9)
      )
      (i32.const 1)
     )
     (i32.const 1296)
    )
    (call $_Z12detect_checkRA8_A8_hhhRbb
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
     (i32.const 7)
     (i32.const 1)
     (i32.add
      (get_local $9)
      (i32.const 63)
     )
     (i32.const 0)
    )
    (set_local $3
     (i32.const 2)
    )
    (call $_Z12detect_checkRA8_A8_hhhRbb
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
     (i32.const 7)
     (i32.const 2)
     (i32.add
      (get_local $9)
      (i32.const 63)
     )
     (i32.const 0)
    )
    (call $_Z12detect_checkRA8_A8_hhhRbb
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
     (i32.const 7)
     (i32.const 3)
     (i32.add
      (get_local $9)
      (i32.const 63)
     )
     (i32.const 0)
    )
    (call $assert
     (i32.xor
      (i32.load8_u offset=63
       (get_local $9)
      )
      (i32.const 1)
     )
     (i32.const 1344)
    )
    (call $_Z12detect_checkRA8_A8_hhhRbb
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
     (i32.const 7)
     (i32.const 0)
     (i32.add
      (get_local $9)
      (i32.const 63)
     )
     (i32.const 0)
    )
    (call $assert
     (i32.xor
      (i32.load8_u offset=63
       (get_local $9)
      )
      (i32.const 1)
     )
     (i32.const 1456)
    )
    (i32.store8
     (i32.add
      (get_local $9)
      (i32.const 124)
     )
     (i32.const 0)
    )
    (i32.store offset=120
     (get_local $9)
     (i32.const 285933568)
    )
    (set_local $5
     (i32.const 1)
    )
   )
   (set_local $8
    (i32.const 2)
   )
  )
  (i32.store8
   (i32.add
    (tee_local $7
     (i32.add
      (get_local $9)
      (i32.const 268)
     )
    )
    (get_local $0)
   )
   (get_local $3)
  )
  (i32.store8
   (i32.add
    (get_local $9)
    (i32.const 161)
   )
   (get_local $4)
  )
  (i32.store8
   (i32.add
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 128)
     )
     (get_local $6)
    )
    (i32.const 56)
   )
   (get_local $8)
  )
  (i32.store8
   (i32.add
    (get_local $7)
    (get_local $6)
   )
   (get_local $5)
  )
  (i32.store offset=259 align=1
   (get_local $9)
   (call $now)
  )
  (set_local $3
   (i32.add
    (get_local $9)
    (i32.const 189)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (loop $label$11
   (i32.store8
    (i32.add
     (get_local $3)
     (get_local $6)
    )
    (i32.load8_u
     (i32.add
      (i32.add
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.shl
        (i32.and
         (get_local $8)
         (i32.const 255)
        )
        (i32.const 3)
       )
      )
      (tee_local $5
       (i32.and
        (get_local $7)
        (i32.const 255)
       )
      )
     )
    )
   )
   (set_local $7
    (select
     (i32.const 0)
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
     (tee_local $5
      (i32.eq
       (get_local $5)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $5)
     (get_local $8)
    )
   )
   (br_if $label$11
    (i32.ne
     (tee_local $6
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=53 align=1
   (get_local $9)
   (tee_local $6
    (i32.load align=1
     (i32.add
      (get_local $9)
      (i32.const 259)
     )
    )
   )
  )
  (i32.store offset=21 align=1
   (get_local $9)
   (get_local $6)
  )
  (i64.store offset=32
   (get_local $9)
   (get_local $2)
  )
  (set_local $6
   (call $update_i64
    (i64.load offset=136
     (get_local $9)
    )
    (i64.const -4995154566124142592)
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
    (i32.const 30)
   )
  )
  (i64.store
   (get_local $9)
   (i64.load offset=136
    (get_local $9)
   )
  )
  (call $assert
   (i32.and
    (i32.ne
     (get_local $6)
     (i32.const 0)
    )
    (i32.and
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -4995154566354305024)
       (get_local $9)
       (i32.const 30)
      )
      (i32.const 0)
     )
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -7948142323357974528)
       (i32.add
        (get_local $9)
        (i32.const 128)
       )
       (i32.const 144)
      )
      (i32.const 0)
     )
    )
   )
   (i32.const 480)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 272)
   )
  )
 )
 (func $_Z9movepiece12Move_message (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $36
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 272)
    )
   )
  )
  (call $require_auth
   (tee_local $1
    (i64.load offset=26 align=1
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=188
   (get_local $36)
   (i32.const 64)
  )
  (i32.store8 offset=183
   (get_local $36)
   (i32.const 4)
  )
  (i32.store8 offset=253
   (get_local $36)
   (i32.const 5)
  )
  (i32.store8 offset=267
   (get_local $36)
   (i32.const 4)
  )
  (i64.store offset=128
   (get_local $36)
   (i64.load align=1
    (get_local $0)
   )
  )
  (set_local $21
   (call $load_i64
    (tee_local $2
     (i64.load offset=34 align=1
      (get_local $0)
     )
    )
    (i64.const 4851938105189466112)
    (i64.const -7948142323357974528)
    (i32.add
     (get_local $36)
     (i32.const 128)
    )
    (i32.const 144)
   )
  )
  (call $assert
   (i32.eq
    (i32.load8_u offset=160
     (get_local $36)
    )
    (i32.const 1)
   )
   (i32.const 1888)
  )
  (call $assert
   (i32.eq
    (get_local $21)
    (i32.const 144)
   )
   (i32.const 1936)
  )
  (call $assert
   (i32.or
    (i64.eq
     (get_local $1)
     (i64.load offset=144
      (get_local $36)
     )
    )
    (i64.eq
     (get_local $1)
     (i64.load offset=152
      (get_local $36)
     )
    )
   )
   (i32.const 1968)
  )
  (call $assert
   (i32.ne
    (tee_local $4
     (i64.ne
      (get_local $1)
      (tee_local $3
       (i64.load offset=144
        (get_local $36)
       )
      )
     )
    )
    (i32.load8_u offset=161
     (get_local $36)
    )
   )
   (i32.const 2000)
  )
  (set_local $5
   (i32.add
    (get_local $36)
    (i32.const 189)
   )
  )
  (set_local $21
   (i32.const 0)
  )
  (set_local $22
   (i32.const 0)
  )
  (set_local $23
   (i32.const 0)
  )
  (loop $label$0
   (i32.store8
    (i32.add
     (i32.add
      (i32.add
       (get_local $36)
       (i32.const 64)
      )
      (i32.shl
       (i32.and
        (get_local $22)
        (i32.const 255)
       )
       (i32.const 3)
      )
     )
     (tee_local $13
      (i32.and
       (get_local $23)
       (i32.const 255)
      )
     )
    )
    (i32.load8_u
     (i32.add
      (get_local $5)
      (get_local $21)
     )
    )
   )
   (set_local $23
    (select
     (i32.const 0)
     (i32.add
      (get_local $23)
      (i32.const 1)
     )
     (tee_local $13
      (i32.eq
       (get_local $13)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $22
    (i32.add
     (get_local $13)
     (get_local $22)
    )
   )
   (br_if $label$0
    (i32.ne
     (tee_local $21
      (i32.add
       (get_local $21)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
  (call $assert
   (i32.ne
    (tee_local $35
     (i32.load8_u
      (tee_local $8
       (i32.add
        (i32.add
         (i32.add
          (get_local $36)
          (i32.const 64)
         )
         (i32.shl
          (tee_local $6
           (i32.load8_u offset=9
            (get_local $0)
           )
          )
          (i32.const 3)
         )
        )
        (tee_local $7
         (i32.load8_u
          (i32.add
           (get_local $0)
           (i32.const 10)
          )
         )
        )
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 2032)
  )
  (set_local $21
   (select
    (i32.gt_u
     (i32.and
      (tee_local $9
       (i32.add
        (get_local $35)
        (i32.const -11)
       )
      )
      (i32.const 255)
     )
     (i32.const 6)
    )
    (i32.const 100)
    (get_local $35)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (get_local $4)
    )
    (call $assert
     (i32.eqz
      (get_local $21)
     )
     (i32.const 2080)
    )
    (br $label$1)
   )
   (call $assert
    (i32.eq
     (get_local $21)
     (i32.const 1)
    )
    (i32.const 2080)
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.gt_u
      (tee_local $22
       (i32.add
        (get_local $35)
        (i32.const -12)
       )
      )
      (i32.const 25)
     )
    )
    (set_local $25
     (i32.const 0)
    )
    (set_local $29
     (i32.const 7)
    )
    (set_local $24
     (i32.const 1)
    )
    (set_local $28
     (i32.const 7)
    )
    (set_local $21
     (i32.const 7)
    )
    (set_local $26
     (i32.const 0)
    )
    (block $label$5
     (block $label$6
      (block $label$7
       (block $label$8
        (block $label$9
         (block $label$10
          (block $label$11
           (br_table $label$3 $label$11 $label$10 $label$9 $label$8 $label$11 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$4 $label$3 $label$11 $label$10 $label$9 $label$8 $label$11 $label$3
            (get_local $22)
           )
          )
          (set_local $28
           (i32.const 0)
          )
          (block $label$12
           (br_if $label$12
            (i32.gt_u
             (tee_local $21
              (i32.and
               (tee_local $22
                (i32.or
                 (i32.shr_u
                  (i32.and
                   (tee_local $21
                    (i32.add
                     (get_local $35)
                     (i32.const -13)
                    )
                   )
                   (i32.const 252)
                  )
                  (i32.const 2)
                 )
                 (i32.shl
                  (get_local $21)
                  (i32.const 6)
                 )
                )
               )
               (i32.const 255)
              )
             )
             (i32.const 6)
            )
           )
           (set_local $24
            (i32.const 1)
           )
           (set_local $28
            (i32.const 0)
           )
           (br_if $label$12
            (i32.eqz
             (i32.and
              (i32.shr_u
               (i32.const 99)
               (get_local $21)
              )
              (i32.const 1)
             )
            )
           )
           (i32.store8
            (i32.add
             (i32.add
              (i32.add
               (get_local $36)
               (i32.const 128)
              )
              (i32.load
               (i32.add
                (i32.shl
                 (i32.shr_s
                  (i32.shl
                   (get_local $22)
                   (i32.const 24)
                  )
                  (i32.const 24)
                 )
                 (i32.const 2)
                )
                (i32.const 2112)
               )
              )
             )
             (i32.const 140)
            )
            (i32.const 2)
           )
           (set_local $28
            (i32.const 0)
           )
          )
          (set_local $21
           (i32.const 7)
          )
          (br $label$6)
         )
         (set_local $29
          (i32.const 0)
         )
         (set_local $28
          (i32.const 7)
         )
         (br $label$7)
        )
        (set_local $28
         (i32.const 0)
        )
        (set_local $24
         (i32.const 1)
        )
        (set_local $29
         (i32.const 2)
        )
        (set_local $21
         (i32.const 2)
        )
        (set_local $25
         (i32.const 1)
        )
        (br $label$5)
       )
       (set_local $24
        (i32.const 0)
       )
       (set_local $28
        (i32.const 1)
       )
       (set_local $29
        (i32.const 1)
       )
      )
      (set_local $21
       (i32.const 0)
      )
     )
     (set_local $25
      (i32.const 0)
     )
    )
    (set_local $26
     (i32.const 0)
    )
    (br $label$3)
   )
   (set_local $25
    (i32.const 0)
   )
   (i32.store8
    (i32.or
     (tee_local $21
      (i32.add
       (get_local $36)
       (i32.const 268)
      )
     )
     (select
      (i32.const 0)
      (i32.const 2)
      (tee_local $22
       (i32.eq
        (get_local $35)
        (i32.const 11)
       )
      )
     )
    )
    (i32.const 2)
   )
   (set_local $24
    (i32.const 1)
   )
   (i32.store8
    (i32.or
     (get_local $21)
     (select
      (i32.const 1)
      (i32.const 3)
      (get_local $22)
     )
    )
    (i32.const 2)
   )
   (set_local $28
    (i32.const 1)
   )
   (set_local $29
    (i32.const 1)
   )
   (set_local $21
    (i32.const 1)
   )
   (set_local $26
    (i32.const 1)
   )
  )
  (set_local $18
   (i32.and
    (get_local $21)
    (i32.const 255)
   )
  )
  (set_local $19
   (i32.add
    (get_local $36)
    (i32.const 257)
   )
  )
  (set_local $20
   (i32.add
    (get_local $36)
    (i32.const 258)
   )
  )
  (set_local $15
   (i32.add
    (get_local $36)
    (i32.const 255)
   )
  )
  (set_local $16
   (i32.add
    (get_local $36)
    (i32.const 254)
   )
  )
  (set_local $13
   (i32.const 2)
  )
  (set_local $22
   (get_local $7)
  )
  (set_local $21
   (get_local $6)
  )
  (set_local $34
   (i32.const 0)
  )
  (set_local $33
   (i32.const 0)
  )
  (set_local $32
   (i32.const 0)
  )
  (set_local $31
   (i32.const 0)
  )
  (set_local $30
   (i32.const 0)
  )
  (block $label$13
   (block $label$14
    (block $label$15
     (block $label$16
      (loop $label$17
       (set_local $23
        (get_local $21)
       )
       (set_local $10
        (get_local $22)
       )
       (block $label$18
        (block $label$19
         (block $label$20
          (block $label$21
           (block $label$22
            (block $label$23
             (br_if $label$23
              (i32.gt_u
               (tee_local $21
                (i32.load8_u
                 (i32.add
                  (tee_local $5
                   (i32.add
                    (get_local $0)
                    (get_local $13)
                   )
                  )
                  (i32.const 9)
                 )
                )
               )
               (i32.const 7)
              )
             )
             (set_local $12
              (i32.load8_u
               (tee_local $11
                (i32.add
                 (i32.add
                  (i32.add
                   (get_local $36)
                   (i32.const 64)
                  )
                  (i32.shl
                   (get_local $21)
                   (i32.const 3)
                  )
                 )
                 (tee_local $22
                  (i32.load8_u
                   (i32.add
                    (get_local $5)
                    (i32.const 10)
                   )
                  )
                 )
                )
               )
              )
             )
             (call $assert
              (i32.lt_u
               (i32.add
                (i32.sub
                 (i32.const 1)
                 (tee_local $23
                  (i32.and
                   (get_local $23)
                   (i32.const 255)
                  )
                 )
                )
                (get_local $21)
               )
               (i32.const 3)
              )
              (i32.const 2144)
             )
             (call $assert
              (i32.lt_u
               (i32.add
                (get_local $22)
                (i32.sub
                 (i32.const 1)
                 (tee_local $10
                  (i32.and
                   (get_local $10)
                   (i32.const 255)
                  )
                 )
                )
               )
               (i32.const 3)
              )
              (i32.const 2176)
             )
             (block $label$24
              (br_if $label$24
               (tee_local $14
                (i32.ne
                 (get_local $21)
                 (get_local $23)
                )
               )
              )
              (set_local $27
               (i32.ne
                (i32.and
                 (get_local $32)
                 (i32.const 255)
                )
                (i32.const 0)
               )
              )
              (br $label$22)
             )
             (block $label$25
              (block $label$26
               (block $label$27
                (block $label$28
                 (block $label$29
                  (block $label$30
                   (br_if $label$30
                    (i32.ne
                     (get_local $22)
                     (get_local $10)
                    )
                   )
                   (set_local $27
                    (i32.ne
                     (tee_local $17
                      (i32.and
                       (get_local $32)
                       (i32.const 255)
                      )
                     )
                     (i32.const 0)
                    )
                   )
                   (br_if $label$22
                    (get_local $17)
                   )
                   (br_if $label$22
                    (i32.eq
                     (get_local $21)
                     (get_local $23)
                    )
                   )
                   (block $label$31
                    (br_if $label$31
                     (i32.eqz
                      (tee_local $32
                       (i32.and
                        (get_local $30)
                        (i32.const 255)
                       )
                      )
                     )
                    )
                    (br_if $label$31
                     (i32.eqz
                      (get_local $25)
                     )
                    )
                    (br_if $label$31
                     (i32.and
                      (get_local $31)
                      (i32.const 255)
                     )
                    )
                    (call $assert
                     (i32.eq
                      (get_local $32)
                      (i32.const 2)
                     )
                     (i32.const 2432)
                    )
                   )
                   (br_if $label$28
                    (get_local $24)
                   )
                   (call $assert
                    (i32.eqz
                     (i32.and
                      (get_local $12)
                      (i32.const 255)
                     )
                    )
                    (i32.const 2496)
                   )
                   (set_local $32
                    (i32.sub
                     (get_local $21)
                     (get_local $23)
                    )
                   )
                   (br_if $label$29
                    (get_local $4)
                   )
                   (call $assert
                    (i32.shr_u
                     (get_local $32)
                     (i32.const 31)
                    )
                    (i32.const 2208)
                   )
                   (set_local $29
                    (select
                     (i32.const 2)
                     (get_local $29)
                     (i32.eq
                      (get_local $23)
                      (i32.const 6)
                     )
                    )
                   )
                   (set_local $28
                    (i32.const 0)
                   )
                   (br $label$28)
                  )
                  (br_if $label$25
                   (get_local $24)
                  )
                  (set_local $27
                   (i32.sub
                    (get_local $21)
                    (get_local $23)
                   )
                  )
                  (block $label$32
                   (block $label$33
                    (br_if $label$33
                     (get_local $4)
                    )
                    (call $assert
                     (i32.shr_u
                      (get_local $27)
                      (i32.const 31)
                     )
                     (i32.const 2208)
                    )
                    (br_if $label$27
                     (i32.eqz
                      (i32.and
                       (get_local $12)
                       (i32.const 255)
                      )
                     )
                    )
                    (call $assert
                     (i32.gt_u
                      (i32.and
                       (i32.add
                        (get_local $12)
                        (i32.const -11)
                       )
                       (i32.const 255)
                      )
                      (i32.const 6)
                     )
                     (i32.const 2256)
                    )
                    (br $label$32)
                   )
                   (call $assert
                    (i32.gt_s
                     (get_local $27)
                     (i32.const 0)
                    )
                    (i32.const 2208)
                   )
                   (br_if $label$26
                    (i32.eqz
                     (i32.and
                      (get_local $12)
                      (i32.const 255)
                     )
                    )
                   )
                   (call $assert
                    (i32.lt_u
                     (i32.and
                      (i32.add
                       (get_local $12)
                       (i32.const -11)
                      )
                      (i32.const 255)
                     )
                     (i32.const 7)
                    )
                    (i32.const 2256)
                   )
                  )
                  (set_local $29
                   (i32.const 0)
                  )
                  (br $label$25)
                 )
                 (set_local $28
                  (i32.const 0)
                 )
                 (call $assert
                  (i32.gt_s
                   (get_local $32)
                   (i32.const 0)
                  )
                  (i32.const 2208)
                 )
                 (set_local $29
                  (select
                   (i32.const 2)
                   (get_local $29)
                   (i32.eq
                    (get_local $23)
                    (i32.const 1)
                   )
                  )
                 )
                )
                (call $assert
                 (i32.ge_u
                  (i32.and
                   (get_local $29)
                   (i32.const 255)
                  )
                  (i32.and
                   (tee_local $31
                    (i32.add
                     (get_local $31)
                     (i32.const 1)
                    )
                   )
                   (i32.const 255)
                  )
                 )
                 (i32.const 2576)
                )
                (set_local $33
                 (i32.add
                  (get_local $33)
                  (i32.const 1)
                 )
                )
                (set_local $32
                 (i32.const 0)
                )
                (br_if $label$20
                 (get_local $25)
                )
                (br $label$19)
               )
               (set_local $29
                (i32.const 0)
               )
               (set_local $27
                (i32.const 0)
               )
               (block $label$34
                (br_if $label$34
                 (i32.ne
                  (i32.load8_u
                   (get_local $15)
                  )
                  (i32.const 1)
                 )
                )
                (set_local $27
                 (i32.const 0)
                )
                (br_if $label$34
                 (i32.ne
                  (i32.and
                   (i32.load8_u
                    (get_local $19)
                   )
                   (i32.const 255)
                  )
                  (i32.const 3)
                 )
                )
                (set_local $27
                 (i32.const 0)
                )
                (br_if $label$34
                 (i32.ne
                  (i32.and
                   (i32.load8_u
                    (get_local $16)
                   )
                   (i32.const 255)
                  )
                  (i32.const 36)
                 )
                )
                (set_local $27
                 (i32.const 0)
                )
                (br_if $label$34
                 (i32.ne
                  (get_local $21)
                  (i32.const 2)
                 )
                )
                (set_local $27
                 (i32.eq
                  (get_local $22)
                  (i32.load8_u
                   (get_local $20)
                  )
                 )
                )
               )
               (call $assert
                (get_local $27)
                (i32.const 2256)
               )
               (set_local $34
                (i32.load8_u
                 (i32.add
                  (i32.add
                   (i32.add
                    (get_local $36)
                    (i32.const 64)
                   )
                   (i32.shl
                    (i32.load8_u
                     (get_local $19)
                    )
                    (i32.const 3)
                   )
                  )
                  (i32.load8_u
                   (get_local $20)
                  )
                 )
                )
               )
               (br $label$25)
              )
              (set_local $29
               (i32.const 0)
              )
              (set_local $27
               (i32.const 0)
              )
              (block $label$35
               (br_if $label$35
                (i32.ne
                 (i32.load8_u
                  (get_local $15)
                 )
                 (i32.const 6)
                )
               )
               (set_local $27
                (i32.const 0)
               )
               (br_if $label$35
                (i32.ne
                 (i32.and
                  (i32.load8_u
                   (get_local $19)
                  )
                  (i32.const 255)
                 )
                 (i32.const 4)
                )
               )
               (set_local $27
                (i32.const 0)
               )
               (br_if $label$35
                (i32.ne
                 (i32.and
                  (i32.load8_u
                   (get_local $16)
                  )
                  (i32.const 255)
                 )
                 (i32.const 16)
                )
               )
               (set_local $27
                (i32.const 0)
               )
               (br_if $label$35
                (i32.ne
                 (get_local $21)
                 (i32.const 5)
                )
               )
               (set_local $27
                (i32.eq
                 (get_local $22)
                 (i32.load8_u
                  (get_local $20)
                 )
                )
               )
              )
              (call $assert
               (get_local $27)
               (i32.const 2256)
              )
              (set_local $34
               (i32.load8_u
                (i32.add
                 (i32.add
                  (i32.add
                   (get_local $36)
                   (i32.const 64)
                  )
                  (i32.shl
                   (i32.load8_u
                    (get_local $19)
                   )
                   (i32.const 3)
                  )
                 )
                 (i32.load8_u
                  (get_local $20)
                 )
                )
               )
              )
             )
             (call $assert
              (i32.ge_u
               (i32.and
                (get_local $28)
                (i32.const 255)
               )
               (i32.and
                (tee_local $32
                 (i32.add
                  (get_local $32)
                  (i32.const 1)
                 )
                )
                (i32.const 255)
               )
              )
              (i32.const 2368)
             )
             (set_local $33
              (i32.add
               (get_local $33)
               (i32.const 1)
              )
             )
             (br $label$21)
            )
            (set_local $22
             (get_local $10)
            )
            (br_if $label$14
             (i32.eqz
              (get_local $24)
             )
            )
            (br $label$13)
           )
           (br_if $label$21
            (get_local $27)
           )
           (br_if $label$21
            (i32.eq
             (get_local $22)
             (get_local $10)
            )
           )
           (set_local $32
            (i32.const 0)
           )
           (br_if $label$21
            (get_local $14)
           )
           (block $label$36
            (br_if $label$36
             (i32.eqz
              (get_local $25)
             )
            )
            (br_if $label$36
             (i32.and
              (get_local $30)
              (i32.const 255)
             )
            )
            (br_if $label$36
             (i32.eqz
              (tee_local $27
               (i32.and
                (get_local $31)
                (i32.const 255)
               )
              )
             )
            )
            (call $assert
             (i32.eq
              (get_local $27)
              (i32.const 2)
             )
             (i32.const 2640)
            )
           )
           (call $assert
            (i32.ge_u
             (get_local $18)
             (i32.and
              (tee_local $30
               (i32.add
                (get_local $30)
                (i32.const 1)
               )
              )
              (i32.const 255)
             )
            )
            (i32.const 2688)
           )
           (set_local $33
            (i32.add
             (get_local $33)
             (i32.const 1)
            )
           )
           (br_if $label$20
            (get_local $25)
           )
           (br $label$19)
          )
          (br_if $label$19
           (i32.eqz
            (get_local $25)
           )
          )
         )
         (br_if $label$18
          (i32.lt_u
           (i32.and
            (get_local $33)
            (i32.const 255)
           )
           (i32.const 3)
          )
         )
        )
        (block $label$37
         (br_if $label$37
          (i32.eqz
           (i32.and
            (get_local $12)
            (i32.const 255)
           )
          )
         )
         (br_if $label$16
          (i32.eqz
           (i32.xor
            (i64.eq
             (get_local $3)
             (get_local $1)
            )
            (i32.gt_u
             (i32.and
              (i32.add
               (get_local $12)
               (i32.const -11)
              )
              (i32.const 255)
             )
             (i32.const 6)
            )
           )
          )
         )
         (call $assert
          (i32.const 0)
          (i32.const 2768)
         )
         (br $label$18)
        )
        (block $label$38
         (br_if $label$38
          (i32.eqz
           (i32.and
            (get_local $34)
            (i32.const 255)
           )
          )
         )
         (i32.store8
          (i32.add
           (i32.add
            (i32.add
             (get_local $36)
             (i32.const 64)
            )
            (i32.shl
             (i32.load8_u
              (get_local $19)
             )
             (i32.const 3)
            )
           )
           (i32.load8_u
            (get_local $20)
           )
          )
          (i32.const 0)
         )
        )
        (i32.store8
         (get_local $11)
         (get_local $35)
        )
        (br_if $label$18
         (get_local $25)
        )
        (i32.store8
         (i32.add
          (i32.add
           (i32.add
            (get_local $36)
            (i32.const 64)
           )
           (i32.shl
            (i32.load8_u
             (i32.add
              (get_local $5)
              (i32.const 7)
             )
            )
            (i32.const 3)
           )
          )
          (i32.load8_u
           (i32.add
            (get_local $5)
            (i32.const 8)
           )
          )
         )
         (i32.const 0)
        )
       )
       (set_local $23
        (get_local $21)
       )
       (br_if $label$17
        (i32.lt_u
         (tee_local $13
          (i32.and
           (i32.add
            (get_local $13)
            (i32.const 2)
           )
           (i32.const 255)
          )
         )
         (i32.const 17)
        )
       )
       (br $label$15)
      )
     )
     (i32.store8
      (i32.add
       (i32.add
        (i32.add
         (get_local $36)
         (i32.const 64)
        )
        (i32.shl
         (get_local $23)
         (i32.const 3)
        )
       )
       (get_local $10)
      )
      (i32.const 0)
     )
     (i32.store8
      (get_local $11)
      (get_local $35)
     )
     (set_local $23
      (get_local $21)
     )
    )
    (br_if $label$13
     (get_local $24)
    )
   )
   (block $label$39
    (br_if $label$39
     (i32.eq
      (tee_local $13
       (i32.and
        (get_local $23)
        (i32.const 255)
       )
      )
      (i32.const 7)
     )
    )
    (br_if $label$13
     (get_local $13)
    )
   )
   (set_local $35
    (select
     (get_local $35)
     (get_local $21)
     (i32.xor
      (i32.gt_u
       (i32.and
        (get_local $9)
        (i32.const 255)
       )
       (i32.const 6)
      )
      (i32.gt_u
       (i32.and
        (i32.add
         (get_local $21)
         (i32.const -11)
        )
        (i32.const 255)
       )
       (i32.const 6)
      )
     )
    )
   )
  )
  (i32.store8
   (get_local $8)
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 254)
   )
   (get_local $35)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 255)
   )
   (get_local $6)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 256)
   )
   (get_local $7)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 257)
   )
   (get_local $23)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 258)
   )
   (get_local $22)
  )
  (i32.store8 offset=63
   (get_local $36)
   (i32.const 0)
  )
  (block $label$40
   (block $label$41
    (block $label$42
     (block $label$43
      (block $label$44
       (block $label$45
        (br_if $label$45
         (get_local $4)
        )
        (i64.store offset=162 align=2
         (get_local $36)
         (i64.add
          (i64.load offset=162 align=2
           (get_local $36)
          )
          (i64.const 1)
         )
        )
        (br_if $label$44
         (i32.eqz
          (get_local $26)
         )
        )
        (i32.store8
         (i32.add
          (get_local $36)
          (i32.const 185)
         )
         (get_local $22)
        )
        (i32.store8
         (i32.add
          (get_local $36)
          (i32.const 184)
         )
         (get_local $23)
        )
        (br $label$43)
       )
       (i64.store offset=170 align=2
        (get_local $36)
        (i64.add
         (i64.load offset=170 align=2
          (get_local $36)
         )
         (i64.const 1)
        )
       )
       (br_if $label$42
        (i32.eqz
         (get_local $26)
        )
       )
       (i32.store8
        (i32.add
         (get_local $36)
         (i32.const 187)
        )
        (get_local $22)
       )
       (i32.store8
        (i32.add
         (get_local $36)
         (i32.const 186)
        )
        (get_local $23)
       )
       (br $label$41)
      )
      (set_local $22
       (i32.load8_u
        (i32.add
         (get_local $36)
         (i32.const 185)
        )
       )
      )
      (set_local $23
       (i32.load8_u
        (i32.add
         (get_local $36)
         (i32.const 184)
        )
       )
      )
     )
     (call $_Z12detect_checkRA8_A8_hhhRbb
      (i32.add
       (get_local $36)
       (i32.const 64)
      )
      (i32.and
       (get_local $23)
       (i32.const 255)
      )
      (i32.and
       (get_local $22)
       (i32.const 255)
      )
      (i32.add
       (get_local $36)
       (i32.const 63)
      )
      (i32.const 0)
     )
     (br $label$40)
    )
    (set_local $22
     (i32.load8_u
      (i32.add
       (get_local $36)
       (i32.const 187)
      )
     )
    )
    (set_local $23
     (i32.load8_u
      (i32.add
       (get_local $36)
       (i32.const 186)
      )
     )
    )
   )
   (call $_Z12detect_checkRA8_A8_hhhRbb
    (i32.add
     (get_local $36)
     (i32.const 64)
    )
    (i32.and
     (get_local $23)
     (i32.const 255)
    )
    (i32.and
     (get_local $22)
     (i32.const 255)
    )
    (i32.add
     (get_local $36)
     (i32.const 63)
    )
    (i32.const 1)
   )
  )
  (call $assert
   (i32.xor
    (i32.load8_u offset=63
     (get_local $36)
    )
    (i32.const 1)
   )
   (i32.const 2816)
  )
  (i32.store8
   (i32.add
    (get_local $36)
    (i32.const 161)
   )
   (get_local $4)
  )
  (i32.store offset=259 align=1
   (get_local $36)
   (call $now)
  )
  (set_local $5
   (i32.add
    (get_local $36)
    (i32.const 189)
   )
  )
  (set_local $21
   (i32.const 0)
  )
  (set_local $22
   (i32.const 0)
  )
  (set_local $23
   (i32.const 0)
  )
  (loop $label$46
   (i32.store8
    (i32.add
     (get_local $5)
     (get_local $21)
    )
    (i32.load8_u
     (i32.add
      (i32.add
       (i32.add
        (get_local $36)
        (i32.const 64)
       )
       (i32.shl
        (i32.and
         (get_local $22)
         (i32.const 255)
        )
        (i32.const 3)
       )
      )
      (tee_local $13
       (i32.and
        (get_local $23)
        (i32.const 255)
       )
      )
     )
    )
   )
   (set_local $23
    (select
     (i32.const 0)
     (i32.add
      (get_local $23)
      (i32.const 1)
     )
     (tee_local $13
      (i32.eq
       (get_local $13)
       (i32.const 7)
      )
     )
    )
   )
   (set_local $22
    (i32.add
     (get_local $13)
     (get_local $22)
    )
   )
   (br_if $label$46
    (i32.ne
     (tee_local $21
      (i32.add
       (get_local $21)
       (i32.const 1)
      )
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=53 align=1
   (get_local $36)
   (tee_local $21
    (i32.load align=1
     (i32.add
      (get_local $36)
      (i32.const 259)
     )
    )
   )
  )
  (i32.store offset=21 align=1
   (get_local $36)
   (get_local $21)
  )
  (i64.store offset=32
   (get_local $36)
   (get_local $2)
  )
  (set_local $21
   (call $update_i64
    (i64.load offset=136
     (get_local $36)
    )
    (i64.const -4995154566124142592)
    (i32.add
     (get_local $36)
     (i32.const 32)
    )
    (i32.const 30)
   )
  )
  (i64.store
   (get_local $36)
   (i64.load offset=136
    (get_local $36)
   )
  )
  (call $assert
   (i32.and
    (i32.ne
     (get_local $21)
     (i32.const 0)
    )
    (i32.and
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -4995154566354305024)
       (get_local $36)
       (i32.const 30)
      )
      (i32.const 0)
     )
     (i32.ne
      (call $update_i64
       (get_local $2)
       (i64.const -7948142323357974528)
       (i32.add
        (get_local $36)
        (i32.const 128)
       )
       (i32.const 144)
      )
      (i32.const 0)
     )
    )
   )
   (i32.const 480)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $36)
    (i32.const 272)
   )
  )
 )
 (func $init
 )
 (func $apply (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 352)
    )
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 2880)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 4)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $0)
    )
   )
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (block $label$13
          (block $label$14
           (br_if $label$14
            (i64.le_s
             (get_local $1)
             (i64.const 3607571207530617343)
            )
           )
           (br_if $label$13
            (i64.gt_s
             (get_local $1)
             (i64.const 4921565167889678335)
            )
           )
           (br_if $label$12
            (i64.eq
             (get_local $1)
             (i64.const 3607571207530617344)
            )
           )
           (br_if $label$8
            (i64.ne
             (get_local $1)
             (i64.const 4733732609786380288)
            )
           )
           (call $assert
            (i32.gt_u
             (call $read_message
              (i32.add
               (get_local $8)
               (i32.const 200)
              )
              (i32.const 25)
             )
             (i32.const 24)
            )
            (i32.const 2896)
           )
           (i32.store8
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 108)
             )
             (i32.const 24)
            )
            (i32.load8_u
             (i32.add
              (i32.add
               (get_local $8)
               (i32.const 200)
              )
              (i32.const 24)
             )
            )
           )
           (i64.store align=4
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 108)
             )
             (i32.const 16)
            )
            (i64.load
             (i32.add
              (i32.add
               (get_local $8)
               (i32.const 200)
              )
              (i32.const 16)
             )
            )
           )
           (i64.store align=4
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 108)
             )
             (i32.const 8)
            )
            (i64.load
             (i32.add
              (i32.add
               (get_local $8)
               (i32.const 200)
              )
              (i32.const 8)
             )
            )
           )
           (i64.store offset=108 align=4
            (get_local $8)
            (i64.load offset=200
             (get_local $8)
            )
           )
           (call $_Z8castling16Castling_message
            (i32.add
             (get_local $8)
             (i32.const 108)
            )
           )
           (br $label$6)
          )
          (br_if $label$11
           (i64.eq
            (get_local $1)
            (i64.const -7948142195306604544)
           )
          )
          (br_if $label$10
           (i64.eq
            (get_local $1)
            (i64.const -7694775200557039616)
           )
          )
          (br_if $label$8
           (i64.ne
            (get_local $1)
            (i64.const -7297762804260405248)
           )
          )
          (call $assert
           (i32.gt_u
            (call $read_message
             (i32.add
              (get_local $8)
              (i32.const 312)
             )
             (i32.const 21)
            )
            (i32.const 20)
           )
           (i32.const 2896)
          )
          (i32.store8
           (i32.add
            (i32.add
             (get_local $8)
             (i32.const 8)
            )
            (i32.const 20)
           )
           (i32.load8_u
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 312)
             )
             (i32.const 20)
            )
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $8)
             (i32.const 8)
            )
            (i32.const 16)
           )
           (i32.load
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 312)
             )
             (i32.const 16)
            )
           )
          )
          (i64.store align=4
           (i32.add
            (i32.add
             (get_local $8)
             (i32.const 8)
            )
            (i32.const 8)
           )
           (i64.load
            (i32.add
             (i32.add
              (get_local $8)
              (i32.const 312)
             )
             (i32.const 8)
            )
           )
          )
          (i64.store offset=8 align=4
           (get_local $8)
           (i64.load offset=312
            (get_local $8)
           )
          )
          (call $_Z8newmatch16Newmatch_message
           (i32.add
            (get_local $8)
            (i32.const 8)
           )
          )
          (br $label$6)
         )
         (br_if $label$9
          (i64.eq
           (get_local $1)
           (i64.const 4921565167889678336)
          )
         )
         (br_if $label$8
          (i64.ne
           (get_local $1)
           (i64.const 5373101451288924368)
          )
         )
         (call $assert
          (i32.gt_u
           (call $read_message
            (i32.add
             (get_local $8)
             (i32.const 280)
            )
            (i32.const 16)
           )
           (i32.const 15)
          )
          (i32.const 2896)
         )
         (i64.store align=4
          (i32.add
           (i32.add
            (get_local $8)
            (i32.const 48)
           )
           (i32.const 8)
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $8)
             (i32.const 280)
            )
            (i32.const 8)
           )
          )
         )
         (i64.store offset=48 align=4
          (get_local $8)
          (i64.load offset=280
           (get_local $8)
          )
         )
         (call $_Z12declinematch19Acceptmatch_message
          (i32.add
           (get_local $8)
           (i32.const 48)
          )
         )
         (br $label$6)
        )
        (call $assert
         (i32.gt_u
          (call $read_message
           (i32.add
            (get_local $8)
            (i32.const 296)
           )
           (i32.const 16)
          )
          (i32.const 15)
         )
         (i32.const 2896)
        )
        (i64.store align=4
         (i32.add
          (i32.add
           (get_local $8)
           (i32.const 32)
          )
          (i32.const 8)
         )
         (i64.load
          (i32.add
           (i32.add
            (get_local $8)
            (i32.const 296)
           )
           (i32.const 8)
          )
         )
        )
        (i64.store offset=32 align=4
         (get_local $8)
         (i64.load offset=296
          (get_local $8)
         )
        )
        (call $_Z11acceptmatch19Acceptmatch_message
         (i32.add
          (get_local $8)
          (i32.const 32)
         )
        )
        (br $label$6)
       )
       (call $assert
        (i32.gt_u
         (call $read_message
          (i32.add
           (get_local $8)
           (i32.const 160)
          )
          (i32.const 9)
         )
         (i32.const 8)
        )
        (i32.const 2896)
       )
       (set_local $3
        (i32.load8_u offset=168
         (get_local $8)
        )
       )
       (call $require_auth
        (tee_local $5
         (i64.load offset=160
          (get_local $8)
         )
        )
       )
       (i32.store8 offset=344
        (get_local $8)
        (get_local $3)
       )
       (i64.store offset=336
        (get_local $8)
        (get_local $5)
       )
       (br_if $label$7
        (i32.ne
         (call $load_i64
          (i64.const 4851938105189466112)
          (i64.const 4851938105189466112)
          (i64.const -7948142195306604544)
          (i32.add
           (get_local $8)
           (i32.const 336)
          )
          (i32.const 9)
         )
         (i32.const 9)
        )
       )
       (drop
        (call $update_i64
         (i64.const 4851938105189466112)
         (i64.const -7948142195306604544)
         (i32.add
          (get_local $8)
          (i32.const 336)
         )
         (i32.const 9)
        )
       )
       (br $label$6)
      )
      (i32.store8 offset=240
       (get_local $8)
       (i32.const 17)
      )
      (call $assert
       (i32.gt_u
        (call $read_message
         (i32.add
          (get_local $8)
          (i32.const 232)
         )
         (i32.const 42)
        )
        (i32.const 41)
       )
       (i32.const 2896)
      )
      (drop
       (call $memcpy
        (i32.add
         (get_local $8)
         (i32.const 66)
        )
        (i32.add
         (get_local $8)
         (i32.const 232)
        )
        (i32.const 42)
       )
      )
      (call $_Z9movepiece12Move_message
       (i32.add
        (get_local $8)
        (i32.const 66)
       )
      )
      (br $label$6)
     )
     (call $assert
      (i32.gt_u
       (call $read_message
        (i32.add
         (get_local $8)
         (i32.const 176)
        )
        (i32.const 24)
       )
       (i32.const 23)
      )
      (i32.const 2896)
     )
     (i64.store align=4
      (i32.add
       (i32.add
        (get_local $8)
        (i32.const 136)
       )
       (i32.const 16)
      )
      (i64.load
       (i32.add
        (i32.add
         (get_local $8)
         (i32.const 176)
        )
        (i32.const 16)
       )
      )
     )
     (i64.store align=4
      (i32.add
       (i32.add
        (get_local $8)
        (i32.const 136)
       )
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (i32.add
         (get_local $8)
         (i32.const 176)
        )
        (i32.const 8)
       )
      )
     )
     (i64.store offset=136 align=4
      (get_local $8)
      (i64.load offset=176
       (get_local $8)
      )
     )
     (call $_Z8claimwin16Claimwin_message
      (i32.add
       (get_local $8)
       (i32.const 136)
      )
     )
     (br $label$6)
    )
    (call $assert
     (i32.const 0)
     (i32.const 2928)
    )
    (br $label$6)
   )
   (drop
    (call $store_i64
     (i64.const 4851938105189466112)
     (i64.const -7948142195306604544)
     (i32.add
      (get_local $8)
      (i32.const 336)
     )
     (i32.const 9)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 352)
   )
  )
 )
)

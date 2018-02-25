function summon_piece!(cur_player::AbstractPlayer)
  isempty(cur_player.bag.pieces) && fill_bag!(cur_player.bag)

  cur_piece = shift!(cur_player.bag.pieces)

  cur_piece.i = cur_player.grid.rows
  cur_piece.j = cur_player.grid.cols / 2

  isodd(cur_piece.width) && ( cur_piece.i += 1 )

  cur_player.piece = cur_piece
  cur_piece.owner = cur_player
end

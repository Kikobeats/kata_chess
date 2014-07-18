require_relative 'chess_piece'

class ChessPawn < ChessPiece

  def movement(orig, dest)

    orig_letter = orig[0]
    orig_line   = orig[1].to_i
    dist_letter = dest[0]
    dist_line   = dest[1].to_i

    case orig_line
      when 2
        legal? ((diff(orig_line, dist_line, 1) || diff(orig_line, dist_line, 2)) && lateral_mov(orig_letter, dist_letter))
      when 1
        legal? (false)
      else
        legal? (diff(orig_line, dist_line, 1) && lateral_mov(orig_letter, dist_letter))
      end
  end

end
class ChessPiece

  def initialize(color)
    @color = color
  end

  def movement
  end

  def diff(orig, dist, distance)
    dist - orig == distance
  end

  def lateral_mov(orig, dist)
    orig == dist
  end

  def legal?(type)
    if type then 'LEGAL' else 'ILLEGAL' end
  end


end
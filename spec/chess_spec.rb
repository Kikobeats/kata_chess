require_relative '../lib/chess_pawn'

ORIGIN = ['a1', 'a2', 'b1', 'b2', 'c1', 'c2', 'd1',
          'd2', 'e1', 'e2', 'f1', 'f2', 'g1', 'g2',
          'h1', 'h2' ]

describe "The movement" do

  it "legal movement for the White Pound to a2 to a3 can go foward one square" do
    expect(ChessPawn.new('white').movement('a2', 'a3')).to eql('LEGAL')
  end

  it "legal movement for the White Pound to a2 to a1, a wP can't go backward" do
    expect(ChessPawn.new('white').movement('a2', 'a1')).to eql('ILLEGAL')
  end

  it "illegal movement if White Pound make a lateral movement" do
    expect(ChessPawn.new('white').movement('a2', 'f3')).to eql('ILLEGAL')
  end

  it "legal movement for the White Pound to a2 to a4" do
    expect(ChessPawn.new('white').movement('a2', 'a4')).to eql('LEGAL')
  end

  it "illegal movement for the White Pound to a3 to a5" do
    expect(ChessPawn.new('white').movement('a3', 'a5')).to eql('ILLEGAL')
  end

  it "illegal movement for the White Pound to a1 to a2" do
    expect(ChessPawn.new('white').movement('a1', 'a2')).to eql('ILLEGAL')
  end

end

class Bottles

  def song
    verses(99,0)
  end
  def verses(hi, lo)
    song = ""
    hi.downto(lo) do |n|
      song += verse(n) + "\n"
    end
    song[0...-1]
  end

  def verse(n)
    case n
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{n} bottles of beer on the wall, " +
      "#{n} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{n-1} bottles of beer on the wall.\n"
    end
  end
end
class Bottles
  def verse(n)
    if n == 0
      return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif n == 1
      return %Q{#{n} bottle of beer on the wall, #{n} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n}
    elsif n == 2
      return %Q{#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n}
    else
      return %Q{#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n-1} bottles of beer on the wall.\n}
    end
  end

  def verses(max, min)
    (max.downto(min)).to_a.map { |n| verse(n) }.join("\n")
  end
  def song
    verses(99, 0)
  end
end

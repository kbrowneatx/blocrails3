class Integer
  def in_words
    ones = ["one","two","three","four","five","six","seven","eight","nine"]
  	teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
		tens = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
    
    if self < 10
      ones[self - 1]
    elsif self < 20
      teens[self - 10]
    elsif self < 100
      x = (self / 10).floor
      y = self % 10
      if y == 0
        tens[x - 2]
      else
        tens[x - 2] + " " + ones[y - 1]
      end
    elsif self < 1000
      w = (self / 100).floor
      r = self - (w * 100) 
      if r == 0
        ones[w - 1] + " hundred"
      else
        ones[w - 1] + " hundred " + r.in_words
      end
    elsif self < 1000000
      w = (self / 1000).floor
      r = self - (w * 1000) 
      if r == 0
        w.in_words + " thousand"
      else
        w.in_words + " thousand " + r.in_words
      end
    elsif self < 1000000000
      w = (self / 1000000).floor
      r = self - (w * 1000000) 
      if r == 0
        w.in_words + " million"
      else
        w.in_words + " million " + r.in_words
      end
    elsif self < 1000000000000
      w = (self / 1000000000).floor
      r = self - (w * 1000000000) 
      if r == 0
        w.in_words + " billion"
      else
        w.in_words + " billion " + r.in_words
      end
    elsif self == 1000000000000
      "one trillion"
    end
end
end

class Alouette

  def self.lines_for_verse(verse_num)
    lines = [
      "Et la tête!",
      "Et le bec!",
      "Et les yeux!",
      "Et le cou!",
      "Et les ailes!",
      "Et les pattes!",
      "Et la queue!",
      "Et le dos!"
    ]
    return lines[0..verse_num].reverse
  end

  def self.verse(verse_num)
    lines1 = "Je te plumerai" + self.lines_for_verse(verse_num).reverse[verse_num][2..-2] + ".\n"
    lines2 = ""
    Alouette.lines_for_verse(verse_num).each do |line|
       lines2 += (line + "\n") * 2
     end
    refrain2 = "Alouette!\nAlouette!\nA-a-a-ah"

    (lines1 * 2) + lines2 + refrain2
  end

  # Alouette#sing will build the entire song, formatted as in alouette_lyrics.txt. There should be a blank line between verses and refrains. The value returned should return a string.
  def self.sing
      #
      #   refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
      #   song = ""
      #   7.times do |i|
      #     song << refrain + "\n\n"
      #     song << verse(i) + "\n\n"
      #   end
      #   song << refrain
      #   return song
      # end


    refrain1 = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    song = refrain1
    (0..7).each do |num|
      song += "\n\n" + Alouette.verse(num) + "\n\n" + refrain1
    end

    return song
  end

end

# puts "lines for verse: #{Alouette.lines_for_verse(2)}"
# puts "verses:\n#{Alouette.verse(7)}"
puts Alouette.sing

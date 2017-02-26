
class Alouette

  # Alouette#lines_for_verse will do the work of generating all those Et <part>! lines for a given verse. It should return an array of strings, without repeats.
  # Note that verses are 0-indexed.
  # array[0] "et la tete"
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

  # Alouette#verse will build the requested verse. It should return a string. For example, if you were to call verse(2), it would return
  def self.verse
  end

  # Alouette#sing will build the entire song, formatted as in alouette_lyrics.txt. There should be a blank line between verses and refrains. The value returned should return a string.
  def self.sing
  end

end

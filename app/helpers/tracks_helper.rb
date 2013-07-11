module TracksHelper

  def ugly_lyrics(lyrics)
    lyrics = lyrics.split("\n")
    music_note = "&#9835;"
    lyrics.map! do |line|
      music_note + " " + line.strip
    end
    lyrics = lyrics.join("\n")
  end
end

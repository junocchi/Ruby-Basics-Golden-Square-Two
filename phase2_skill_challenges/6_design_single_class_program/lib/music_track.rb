class MusicTrack
  def initialize 
    @music_track = []
  end

  def add(music)
    @music_track << music
  end

  def list
    return @music_track
  end

end
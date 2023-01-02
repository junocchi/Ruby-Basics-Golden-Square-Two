require "music_track"

RSpec.describe MusicTrack do
  context "given no music" do
    it "has an empty list" do
      music_track = MusicTrack.new
      expect(music_track.list).to eq []
    end
  end

  context "given music" do
    it "returns a list of music" do
      music_track = MusicTrack.new
      music_track.add("Beautiful Day")
      expect(music_track.list).to eq ["Beautiful Day"]
    end
  end

  context "given more music" do
    it "returns a list of all music" do
      music_track = MusicTrack.new
      music_track.add("Beautiful Day")
      music_track.add("Yellow")
      expect(music_track.list).to eq ["Beautiful Day", "Yellow"]
    end
  end
end
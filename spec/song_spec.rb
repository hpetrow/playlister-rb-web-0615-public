describe "Song" do

  let(:artist) { Artist.new }
  let(:song) { Song.new }
  let(:genre) { Genre.new.tap { |genre| genre.name = "rap" } }

  it "can initialize a song" do
     expect(song).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song.name = 'Jump'
    expect(song.name).to eq('Jump')
  end

  it "can have a genre" do

    song.genre = genre
    expect(song.genre).to eq(genre)
  end

  it "has an artist" do
    artist.add_song song
    expect(song.artist).to eq(artist)
  end
end

describe "authors model", type: :model do
  it 'should have a first and last name a well as a homepage string' do
    author = Author.new(params[:"Rosa", "Schluepfer", "meineschluepfer.com"])
    expect(author.first_name).to eq("Rosa")
    expect(author.last_name).to eq("Schluepfer")
    expect(author.homepage).to eq("meineschluepfer.com")
  end
end
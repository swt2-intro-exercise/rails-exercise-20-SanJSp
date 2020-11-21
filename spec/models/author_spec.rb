
require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'should have a first and last name a well as a homepage string' do
    author = Author.new(first_name:'Rosa', last_name:'Schluepfer', homepage:'meineschluepfer.com')
    expect(author.first_name).to eq("Rosa")
    expect(author.last_name).to eq("Schluepfer")
    expect(author.homepage).to eq("meineschluepfer.com")
  end

  it 'should have a method returning the full name of the author' do
    author = Author.new(first_name:'Rosa', last_name:'Schluepfer', homepage:'meineschluepfer.com')
    expect(author.name).to eq("Rosa Schluepfer")
  end

  it 'should have a method to delete an author' do
    @author = Author.new(first_name:'Rosa', last_name:'Schluepfer', homepage:'meineschluepfer.com')
    @author.destroy
    #expect { @author.destroy}.to change(Author, :count).by(-1)
    expect { @author.reload }.to raise_error ActiveRecord::RecordNotFound
  end
end

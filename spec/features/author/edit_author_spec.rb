require 'rails_helper'

describe "Edit author page" do
  it 'should be written to the database if changes to an author have been made' do
    @author = Author.new(first_name:'Rosa', last_name:'Schluepfer', homepage:'meineschluepfer.com')
    @author.update(first_name:"Lila")
    @author.reload
    expect(@author.first_name).to eq('Lila')
  end
 end
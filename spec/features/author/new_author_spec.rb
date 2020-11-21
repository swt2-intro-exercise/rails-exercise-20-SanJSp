require 'rails_helper'

describe "New author page", type: :feature do

 it "should render without error" do
   visit new_author_path
 end
 it 'should have a first name, last name and homepage input field' do
   visit new_author_path
   expect(page).to have_field('author[first_name]')
   expect(page).to have_field('author[last_name]')
   expect(page).to have_field('author[homepage]')
 end

 it 'should not be possible to create author without lastname' do
   @author = Author.new(first_name:'Rosa',last_name: nil, homepage:'meineschluepfer.com')
   expect(@author).to_not be_valid
 end

 it 'should show error when lastname is not filled and submit is clicked' do
   visit new_author_path
   author = Author.create({"first_name" => "Alan", "homepage" => "http://wikipedia.org/Alan_Turing"})
   expect(author.errors.full_messages.each).to include("Last name can't be blank")
 end

end
require 'rails_helper'

describe "Listing of authors", type: :feature do
  it 'should link to the site to create new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it 'should have a table heading Name' do
    visit authors_path
    expect(page).to have_text("Name")
  end

  it 'should have a table heading Homepage' do
    visit authors_path
    expect(page).to have_text("Homepage")

  end

end
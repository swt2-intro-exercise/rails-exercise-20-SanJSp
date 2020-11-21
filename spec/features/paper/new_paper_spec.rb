require 'rails_helper'

describe "New paper page", type: :feature do
  it 'should not be possible to create a paper without a title' do
    @paper = Paper.new(venue:"HPI", year:2020)
    expect(@paper).to_not be_valid
  end
end
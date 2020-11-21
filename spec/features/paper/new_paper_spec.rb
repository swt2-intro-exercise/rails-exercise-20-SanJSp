require 'rails_helper'

describe "New paper page", type: :feature do
  it 'should not be possible to create a paper without a title' do
    @paper = Paper.new(venue:"HPI", year:2020)
    expect(@paper).to_not be_valid
  end

  it 'should not be possible to create a paper without a venue' do
    @paper = Paper.new(title:"Introduction to Deep Learning", year:2020)
    expect(@paper).to_not be_valid
  end
end
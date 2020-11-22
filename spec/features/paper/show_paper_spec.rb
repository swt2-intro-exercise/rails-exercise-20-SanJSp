require 'rails_helper'

describe "Show paper page", type: :feature do
  it 'should exist a show page for author' do
    @alans_paper = FactoryBot.create :paper
    visit paper_path(@alans_paper)
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(page).to have_text("Mind 49: 433-460")
    expect(page).to have_text(1950)
  end

  it 'should have name of author displayed' do
    @paper = FactoryBot.create :paper
    expect(@paper.authors[0].name).to eq("Alan Turing")
  end
end
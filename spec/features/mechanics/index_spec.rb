require 'rails_helper'

RSpec.describe 'mechanics index page' do
  it "shows all mechanics with their names and years of experience" do
    m1 = Mechanic.create(name: "Mike", experience: 2)
    m2 = Mechanic.create(name: "Sherry", experience: 5)

    visit '/mechanics'

    expect(page).to have_content("All Mechanics")

    expect(page).to have_content("#{m1.name} - #{m1.experience} years of experience")
    expect(page).to have_content("#{m2.name} - #{m2.experience} years of experience")
  end
end

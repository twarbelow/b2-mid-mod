require 'rails_helper'

RSpec.describe 'show page' do
  it 'shows name, experience, names of rides they work on, usable form to add to workload' do
    m = Mechanic.create(name: "Penny", experience: 6)
    p = Park.create(name: "Fun time loops", price: 10.00)
    r1 = p.rides.create(name: "Big Bad Betty", thrill_rating: 8)
    r2 = p.rides.create(name: "Loop-d-Swoop-d-Loop", thrill_rating: 5)
    r3 = p.rides.create(name: "Little Woah", thrill_rating: 10)

    m.rides << [r1, r2]

    visit "/mechanics/#{m.id}"
    expect(page).to have_content("Mechanic: #{m.name}")
    expect(page).to have_content("Years of experience: #{m.experience}")
    expect(page).to have_content("#{r1.name}")
    expect(page).to have_content("#{r2.name}")
    expect(page).to have_content("Add a ride to workload:")
    fill_in :ride_id, with: "#{r3.id}"
    click_button "Submit"
    expect(page).to have_content("#{r3.name}")

  end
end

# Story 3
# As a user,
# When I go to a mechanics show page
# I see their name, years of experience, and names of all rides they’re working on
# And I also see a form to add a ride to their workload
# When I fill in that field with an id of an existing ride and hit submit
# I’m taken back to that mechanics show page
# And I see the name of that newly added ride on this mechanics show page
# Ex:
# Mechanic: Kara Smith
# Years of Experience: 11
# Current rides they’re working on:
# The Frog Hopper
# Fahrenheit
# The Kiss Raise
# Add a ride to workload:
# _pretent_this_is_a_textfield_
#                       Submit

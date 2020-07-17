require 'rails_helper'

RSpec.describe 'show page' do
  it "shows name and price of park, names of rides at park, average thrill rating of rides at park" do
    park = Park.create(name: "Roller Coaster Realm", price: 50.00)
    r1 = park.rides.create(name: "Big Bad Betty", thrill_rating: 8)
    r2 = park.rides.create(name: "Loop-d-Swoop-d-Loop", thrill_rating: 5)
    r3 = park.rides.create(name: "Little Woah", thrill_rating: 10)

    visit "parks/#{park.id}"
    save_and_open_page
    expect(page).to have_content("#{park.name}")
    expect(page).to have_content("Admission: $#{park.price}")

    expect(page).to have_content("#{r1.name}")
    expect(page).to have_content("#{r3.name}")
    expect(page).to have_content("#{r2.name}")
    expect(page).to have_content("Average Thrill Rating of Rides: 7.7/10")
  end
end

# notes
# figure out how to get decimal to 2 places, or change price to string in db

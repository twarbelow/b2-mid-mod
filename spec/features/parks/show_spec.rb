require 'rails_helper'

RSpec.describe 'show page' do
  it "shows name and price of park, names of rides at park, average thrill rating of rides at park" do
    park = Park.create(name: "Roller Coaster Realm", admission: 50.00)
    r1 = Ride.create(name: "Big Bad Betty", rating: 8)
    r2 = Ride.create(name: "Loop-d-Swoop-d-Loop", rating: 5)
    r3 = Ride.create(name: "Little Woah", rating: 10)

    visit "parks/#{park.id}"

    expect(page).to have_content("#{park.name}")
    expect(page).to have_content("Admission: $#{park.admission}")

    expect(page).to have_content("1. #{r1.name}")
    expect(page).to have_content("2. #{r3.name}")
    expect(page).to have_content("3. #{r2.name}")
    expect(page).to have_content("Average Thrill Rating of Rides: 7.6/10")
  end
end



Story 2
As a visitor,
When I visit an amusement park’s show page
I see the name and price of admissions for that amusement park
names of all the rides isted in alphabetical order
And I see the average thrill rating of this amusement park’s rides
Ex: Hershey Park
   Admissions: $50.00

   Rides:
          1. Lightning Racer
          2. Storm Runner
          3. The Great Bear
   Average Thrill Rating of Rides: 7.8/10

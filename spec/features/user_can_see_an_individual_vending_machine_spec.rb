require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    snack = dons.snacks.create(name: "Twix", price: 1, machine: dons)
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machine_snacks.create(location: "Don's Mixed Drinks", snack: snack)

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
    expect(page).to have_content("Twix")
  end
end

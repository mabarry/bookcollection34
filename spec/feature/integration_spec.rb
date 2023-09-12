# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[name]", with: 'harry potter'
    fill_in "book[author]", with: 'JK Rowling'
    fill_in "book[published_date]", with: '2023-09-05'
    fill_in "book[price]", with: '19'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')# Check for a successful flash notice when the title is valid
  end

  scenario 'blank title' do
    visit new_book_path
    click_on 'Create Book'

    expect(page).to have_content("Cannot create book. Please fill in all forms.") # Check for an error flash notice when the title is blank
  end

  scenario 'blank author' do
    visit new_book_path
    click_on 'Create Book'

    expect(page).to have_content("Cannot create book. Please fill in all forms.") # Check for an error flash notice when the title is blank
  end

  scenario 'blank date' do
    visit new_book_path
    click_on 'Create Book'

    expect(page).to have_content("Cannot create book. Please fill in all forms.") # Check for an error flash notice when the title is blank
  end

  scenario 'blank price' do
    visit new_book_path
    click_on 'Create Book'

    expect(page).to have_content("Cannot create book. Please fill in all forms.") # Check for an error flash notice when the title is blank
  end
end

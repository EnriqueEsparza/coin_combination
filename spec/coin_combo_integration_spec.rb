require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin combination', {:type => :feature}) do
  it('returns change with the least amount of coins') do
    visit('/')
    fill_in('coin_slot', :with => 0.50)
    click_button('Send')
    expect(page).to have_content(2.0)
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('coin combination', {:type =>feature}) do
  it('returns change with the least amount of coins') do
    visit('/')
    fill_in('coin_slot', :with => '.25')
    click_button('Send')
    expect(page).to have_content('1 quarter')
  end
end

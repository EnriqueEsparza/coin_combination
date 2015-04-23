require ('rspec')
require ('pry')
require ('coin_combination')

describe('coin_combination') do
  it('divides change by 25 cents') do
    expect(('.50').change()).to(eq("2 quarters"))
  end
end

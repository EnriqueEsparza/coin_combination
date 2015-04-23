require ('rspec')
require ('pry')
require ('coin_combination')

describe('coin_combination') do
  it('divides change by 25 cents') do
    expect((0.50).change()).to(eq(2.0))
  end
end

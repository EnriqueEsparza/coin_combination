require ('sinatra')
require ('sinatra/reloader')
require ('./lib/coin_combination')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change_result') do
 @coin_results = params.fetch('coin_slot').change()
  erb(:change_result)
end

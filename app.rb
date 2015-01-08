require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')

get('/') do
  erb(:index)
end

get('/answer') do
  @phrase = params.fetch('phrase').find_and_replace(params.fetch('word1'), params.fetch('word2'))
  erb(:answer)
end

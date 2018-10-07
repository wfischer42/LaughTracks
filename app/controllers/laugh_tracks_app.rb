class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    comedians = Comedian.all
    # comedians_and_specials = comedians.inject({}) do |hash, comedian|
    #   hash[comedian] = comedian.specials
    #   hash
    # end

    erb :comedians, locals: {comedians: comedians}
  end

  get '/' do
    redirect :comedians
  end
end

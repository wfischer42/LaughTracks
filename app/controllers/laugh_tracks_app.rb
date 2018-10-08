class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    today = Date.today.to_time.to_i
    range = (-1627840800..today)
    if params[:age]
      age = params[:age].to_i
      high = today - (age * 31557600)
      low = today - ((age + 1) * 31557600)
      range = (low..high)
    end
    comedians = Comedian.where(birthday_timestamp: range)
    comedians_specials = comedians.joins(:specials)

    stats = { avg_age: comedians_specials.average_age,
              avg_runtime: comedians_specials.average(:run_time),
              total_specials: comedians_specials.count,
              locations: comedians_specials.distinct.pluck(:birth_location) }

    stats[:avg_runtime] = stats[:avg_runtime].to_i if stats[:avg_runtime]
    erb :comedians, locals: {comedians: comedians, stats: stats}
  end

  get '/comedians/new' do
    erb :new_comedian
  end

  post '/comedians/new' do
    comedian = params["comedian"]
    bday = Date.parse(comedian["birthday"]).to_time.to_i
    Comedian.create(name: comedian["name"],
                    birthday_timestamp: bday,
                    birth_location: comedian["birth_location"],
                    thumb_path: comedian["image_url"])
    redirect :comedians
  end

  get '/' do
    redirect :comedians
  end
end

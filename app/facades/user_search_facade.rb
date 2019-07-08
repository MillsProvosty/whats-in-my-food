class UserSearchFacade

def food_count
  binding.pry
end



private
  def conn
    Faraday.new(:url => 'https://developer.nrel.gov/api') do |f|
      req.headers['X-API-KEY']= ENV["DATA_GOV_API_KEY"]
      f.adapter  Faraday.default_adapter
    end
    response = conn.get('https://developer.nrel.gov/api/alt-fuel-stations/v1.json?limit=1&api_key=ENV["DATA_GOV_API_KEY"]')
  end


end

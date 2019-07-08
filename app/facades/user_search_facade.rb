class UserSearchFacade
  def initialize(food)
    @food = food
    @connection = Faraday.new(:url => 'https://developer.nrel.gov/api') do |f|
        f.headers['X-API-KEY']= ENV["DATA_GOV_API_KEY"]
        f.adapter  Faraday.default_adapter
    end
  end

  def food_count
    fetch_data
  end


  private


  def fetch_data(uri_path)
    response = @connection.get do |req|
      req.url uri_path
    end
    JSON.parse(response.body, symbolize_names: true)
  end


end

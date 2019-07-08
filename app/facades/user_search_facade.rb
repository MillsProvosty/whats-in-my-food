class UserSearchFacade
  def initialize(food)
    @food = food
    @connection = Faraday.new(:url => 'https://developer.nrel.gov/api') do |f|
        req.headers['X-API-KEY']= ENV["DATA_GOV_API_KEY"]
        f.adapter  Faraday.default_adapter
    end
  end

  def get_url
    @connection.get('https://www.data.gov/food/')
  end

  def retreive_data
    get_url
  end





  private


  def get_data
    response = conn.get do |req|
      binding.pry
    end
  end


end

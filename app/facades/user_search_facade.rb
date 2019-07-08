class UserSearchFacade
  def initialize
    @connection = Faraday.new(:url => 'https://developer.nrel.gov/api') do |f|
        f.headers['X-API-KEY']= ENV["DATA_GOV_API_KEY"]
        f.adapter  Faraday.default_adapter
    end
  end

  def food_count
    fetch_data
  end


  private

  def fetch_data
    response = @connection.get("https://developer.nrel.gov/api/")
    binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end


end

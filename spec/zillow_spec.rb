describe 'gets information from Zillow with valid user and property ids' do
  before(:all) do
    @conn = Faraday.new(url: 'http://www.zillow.com/webservice/GetZestimate.htm?zws-id=X1-ZWz18lei0ah05n_517ck&zpid=48749425') do |faraday|
      faraday.request :json
      faraday.response :json, content_type: /\bjson$/
      faraday.adapter Faraday.default_adapter
    end
  end

  context '' do
    before(:all) do
      @response = @conn.get
    end

    it 'responds with a 200 Success' do
      expect(@response.status).to eq 200
    end
  end
end



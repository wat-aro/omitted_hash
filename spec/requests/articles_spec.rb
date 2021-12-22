RSpec.describe '/articles', type: :request do
  describe 'POST /articles' do
    it '201 を返す' do
      post '/articles'
      expect(response).to have_http_status(:ok)
    end
  end
end

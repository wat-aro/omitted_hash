# frozen_string_literal: true

RSpec.describe '/articles', type: :request do
  describe 'POST /articles' do
    before do
      create(:user)
    end

    it '201 を返す' do
      post '/articles', params: { article: { title: 'タイトル', body: 'ほんぶん', extra_params: '余分なパラメータ' } }
      expect(response).to have_http_status(:created)
    end

    it 'article が作られる' do
      expect {
        post '/articles', params: { article: { title: 'タイトル', body: 'ほんぶん', extra_params: '余分なパラメータ' } }
      }.to change(Article, :count).by(1)
    end
  end
end

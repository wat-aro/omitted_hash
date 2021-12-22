# frozen_string_literal: true

class ArticlesController < ApplicationController
  def create
    case article_params.to_h
    in { title:, body: }
      Article.create!(user: current_user, title:, body:)
    end

    head :created
  end

  private

  def article_params = params.require(:article).permit(:title, :body, :extra_params)
end

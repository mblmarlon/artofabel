class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @products = Product.where({ category: "Homepage"}).order(created_at: :desc)
  end

  def still
    @products = Product.where({ category: "Still"}).order(created_at: :desc)
  end

  def fashion
    @products = Product.where({ category: "Fashion"}).order(created_at: :desc)
  end

  def portrait
    @products = Product.where({ category: "Portrait"}).order(created_at: :desc)
  end

end

class HomeController < ApplicationController
  def index
    @featured_post = Article.featured
    @recent_posts = Article.five_last_published
  end

  # def art
  # end

  # def business
  # end

  def biology
    @recent_post = Article.where(department_id: 1, published: true).last
    @posts = Article.where(department_id: 1, published: true).reverse - [@recent_post]
  end

  def chemistry
    @recent_post = Article.where(department_id: 2, published: true).last
    @posts = Article.where(department_id: 2, published: true).reverse - [@recent_post]
  end

  # def computer_science
  # end

  # def classics
  # end

  # def drama
  # end

  def economics
    @recent_post = Article.where(department_id: 3, published: true).last
    @posts = Article.where(department_id: 3, published: true).reverse - [@recent_post]
  end

  # def education
  # end

  # def english
  # end

  # def history
  # end

  # def human_sciences
  # end

  def mathematics
    @recent_post = Article.where(department_id: 4, published: true).last
    @posts = Article.where(department_id: 4, published: true).reverse - [@recent_post]
  end

  # def ministry
  # end

  # def modern_languages
  # end

  def physics
    @recent_post = Article.where(department_id: 5, published: true).last
    @posts = Article.where(department_id: 5, published: true).reverse - [@recent_post]
  end

  # def politics
  # end

  def psychology
    @recent_post = Article.where(department_id: 6, published: true).last
    @posts = Article.where(department_id: 6, published: true).reverse - [@recent_post]
  end

  # def philosophy
  # end

  # def theology
  # end
end

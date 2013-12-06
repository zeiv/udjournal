class HomeController < ApplicationController
  def index
    @featured_post = Article.featured
    @recent_post = Article.last_published
  end

  # def art
  # end

  # def business
  # end

  def biology
  end

  def chemistry
  end

  # def computer_science
  # end

  # def classics
  # end

  # def drama
  # end

  def economics
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
  end

  # def ministry
  # end

  # def modern_languages
  # end

  def physics
  end

  # def politics
  # end

  def psychology
  end

  # def philosophy
  # end

  # def theology
  # end
end

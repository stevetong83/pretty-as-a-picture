class PagesController < ApplicationController

  def home

  end

  def about
    @content = Page.where(page: "about").first
  end
end

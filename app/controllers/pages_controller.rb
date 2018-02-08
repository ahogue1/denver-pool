class PagesController < ApplicationController

  def home
  end

  def contact
    @contact = Contact.new
  end

  def about
  end
end

class HomePagesController < ApplicationController
  # GET /home_pages
  # GET /home_pages.xml
  def index
    @home_pages = HomePage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @home_pages }
    end
  end

end

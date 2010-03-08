class ServicesPagesController < ApplicationController
  # GET /services_pages
  # GET /services_pages.xml
  def index
    @services_pages = ServicesPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services_pages }
    end
  end

end

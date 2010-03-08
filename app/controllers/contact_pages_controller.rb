class ContactPagesController < ApplicationController
  # GET /contact_pages
  # GET /contact_pages.xml
  def index
    @contact_pages = ContactPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_pages }
    end
  end

end

class AboutUsController < ApplicationController
  # GET /about_us
  # GET /about_us.xml
  def index
    @about_us = AboutU.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @about_us }
    end
  end

end

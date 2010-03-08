class CreditsController < ApplicationController
  # GET /credits
  # GET /credits.xml
  def index
    @credits = Credit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @credits }
    end
  end

end

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

  # GET /about_us/1
  # GET /about_us/1.xml
  def show
    @about_u = AboutU.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @about_u }
    end
  end

  # GET /about_us/new
  # GET /about_us/new.xml
  def new
    @about_u = AboutU.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @about_u }
    end
  end

  # GET /about_us/1/edit
  def edit
    @about_u = AboutU.find(params[:id])
  end

  # POST /about_us
  # POST /about_us.xml
  def create
    @about_u = AboutU.new(params[:about_u])

    respond_to do |format|
      if @about_u.save
        flash[:notice] = 'AboutU was successfully created.'
        format.html { redirect_to(@about_u) }
        format.xml  { render :xml => @about_u, :status => :created, :location => @about_u }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @about_u.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /about_us/1
  # PUT /about_us/1.xml
  def update
    @about_u = AboutU.find(params[:id])

    respond_to do |format|
      if @about_u.update_attributes(params[:about_u])
        flash[:notice] = 'AboutU was successfully updated.'
        format.html { redirect_to(@about_u) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @about_u.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /about_us/1
  # DELETE /about_us/1.xml
  def destroy
    @about_u = AboutU.find(params[:id])
    @about_u.destroy

    respond_to do |format|
      format.html { redirect_to(about_us_url) }
      format.xml  { head :ok }
    end
  end
end

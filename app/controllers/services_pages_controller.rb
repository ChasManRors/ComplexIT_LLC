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

  # GET /services_pages/1
  # GET /services_pages/1.xml
  def show
    @services_page = ServicesPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @services_page }
    end
  end

  # GET /services_pages/new
  # GET /services_pages/new.xml
  def new
    @services_page = ServicesPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @services_page }
    end
  end

  # GET /services_pages/1/edit
  def edit
    @services_page = ServicesPage.find(params[:id])
  end

  # POST /services_pages
  # POST /services_pages.xml
  def create
    @services_page = ServicesPage.new(params[:services_page])

    respond_to do |format|
      if @services_page.save
        flash[:notice] = 'ServicesPage was successfully created.'
        format.html { redirect_to(@services_page) }
        format.xml  { render :xml => @services_page, :status => :created, :location => @services_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @services_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services_pages/1
  # PUT /services_pages/1.xml
  def update
    @services_page = ServicesPage.find(params[:id])

    respond_to do |format|
      if @services_page.update_attributes(params[:services_page])
        flash[:notice] = 'ServicesPage was successfully updated.'
        format.html { redirect_to(@services_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @services_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services_pages/1
  # DELETE /services_pages/1.xml
  def destroy
    @services_page = ServicesPage.find(params[:id])
    @services_page.destroy

    respond_to do |format|
      format.html { redirect_to(services_pages_url) }
      format.xml  { head :ok }
    end
  end
end

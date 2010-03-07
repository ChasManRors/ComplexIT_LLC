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

  # GET /contact_pages/1
  # GET /contact_pages/1.xml
  def show
    @contact_page = ContactPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_page }
    end
  end

  # GET /contact_pages/new
  # GET /contact_pages/new.xml
  def new
    @contact_page = ContactPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact_page }
    end
  end

  # GET /contact_pages/1/edit
  def edit
    @contact_page = ContactPage.find(params[:id])
  end

  # POST /contact_pages
  # POST /contact_pages.xml
  def create
    @contact_page = ContactPage.new(params[:contact_page])

    respond_to do |format|
      if @contact_page.save
        flash[:notice] = 'ContactPage was successfully created.'
        format.html { redirect_to(@contact_page) }
        format.xml  { render :xml => @contact_page, :status => :created, :location => @contact_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contact_pages/1
  # PUT /contact_pages/1.xml
  def update
    @contact_page = ContactPage.find(params[:id])

    respond_to do |format|
      if @contact_page.update_attributes(params[:contact_page])
        flash[:notice] = 'ContactPage was successfully updated.'
        format.html { redirect_to(@contact_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_pages/1
  # DELETE /contact_pages/1.xml
  def destroy
    @contact_page = ContactPage.find(params[:id])
    @contact_page.destroy

    respond_to do |format|
      format.html { redirect_to(contact_pages_url) }
      format.xml  { head :ok }
    end
  end
end

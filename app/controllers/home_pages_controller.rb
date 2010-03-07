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

  # GET /home_pages/1
  # GET /home_pages/1.xml
  def show
    @home_page = HomePage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @home_page }
    end
  end

  # GET /home_pages/new
  # GET /home_pages/new.xml
  def new
    @home_page = HomePage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @home_page }
    end
  end

  # GET /home_pages/1/edit
  def edit
    @home_page = HomePage.find(params[:id])
  end

  # POST /home_pages
  # POST /home_pages.xml
  def create
    @home_page = HomePage.new(params[:home_page])

    respond_to do |format|
      if @home_page.save
        flash[:notice] = 'HomePage was successfully created.'
        format.html { redirect_to(@home_page) }
        format.xml  { render :xml => @home_page, :status => :created, :location => @home_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @home_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /home_pages/1
  # PUT /home_pages/1.xml
  def update
    @home_page = HomePage.find(params[:id])

    respond_to do |format|
      if @home_page.update_attributes(params[:home_page])
        flash[:notice] = 'HomePage was successfully updated.'
        format.html { redirect_to(@home_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @home_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /home_pages/1
  # DELETE /home_pages/1.xml
  def destroy
    @home_page = HomePage.find(params[:id])
    @home_page.destroy

    respond_to do |format|
      format.html { redirect_to(home_pages_url) }
      format.xml  { head :ok }
    end
  end
end

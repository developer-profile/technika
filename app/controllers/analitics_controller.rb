class AnaliticsController < ApplicationController
  # GET /analitics
  # GET /analitics.json
  def index
    @analitics = Analitic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @analitics }
    end
  end

  # GET /analitics/1
  # GET /analitics/1.json
  def show
    @analitic = Analitic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @analitic }
    end
  end

  # GET /analitics/new
  # GET /analitics/new.json
  def new
    @analitic = Analitic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @analitic }
    end
  end

  # GET /analitics/1/edit
  def edit
    @analitic = Analitic.find(params[:id])
  end

  # POST /analitics
  # POST /analitics.json
  def create
    @analitic = Analitic.new(params[:analitic])

    respond_to do |format|
      if @analitic.save
        format.html { redirect_to @analitic, notice: 'Analitic was successfully created.' }
        format.json { render json: @analitic, status: :created, location: @analitic }
      else
        format.html { render action: "new" }
        format.json { render json: @analitic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /analitics/1
  # PUT /analitics/1.json
  def update
    @analitic = Analitic.find(params[:id])

    respond_to do |format|
      if @analitic.update_attributes(params[:analitic])
        format.html { redirect_to @analitic, notice: 'Analitic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @analitic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analitics/1
  # DELETE /analitics/1.json
  def destroy
    @analitic = Analitic.find(params[:id])
    @analitic.destroy

    respond_to do |format|
      format.html { redirect_to analitics_url }
      format.json { head :no_content }
    end
  end
end

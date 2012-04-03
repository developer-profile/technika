class LogisticsController < ApplicationController
  # GET /logistics
  # GET /logistics.json
  def index
    @logistics = Logistic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logistics }
    end
  end

  # GET /logistics/1
  # GET /logistics/1.json
  def show
    @logistic = Logistic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @logistic }
    end
  end

  # GET /logistics/new
  # GET /logistics/new.json
  def new
    @logistic = Logistic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @logistic }
    end
  end

  # GET /logistics/1/edit
  def edit
    @logistic = Logistic.find(params[:id])
  end

  # POST /logistics
  # POST /logistics.json
  def create
    @logistic = Logistic.new(params[:logistic])

    respond_to do |format|
      if @logistic.save
        format.html { redirect_to @logistic, notice: 'Logistic was successfully created.' }
        format.json { render json: @logistic, status: :created, location: @logistic }
      else
        format.html { render action: "new" }
        format.json { render json: @logistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /logistics/1
  # PUT /logistics/1.json
  def update
    @logistic = Logistic.find(params[:id])

    respond_to do |format|
      if @logistic.update_attributes(params[:logistic])
        format.html { redirect_to @logistic, notice: 'Logistic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @logistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logistics/1
  # DELETE /logistics/1.json
  def destroy
    @logistic = Logistic.find(params[:id])
    @logistic.destroy

    respond_to do |format|
      format.html { redirect_to logistics_url }
      format.json { head :no_content }
    end
  end
end

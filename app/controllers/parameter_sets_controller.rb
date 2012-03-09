class ParameterSetsController < ApplicationController
  # GET /seeds
  # GET /seeds.json
  def index
    @parameter_sets = ParameterSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parameter_sets }
    end
  end

  # GET /seeds/1
  # GET /seeds/1.json
  def show
    @parameter_set = ParameterSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parameter_set }
    end
  end

  # GET /seeds/new
  # GET /seeds/new.json
  def new
    @parameter_set = ParameterSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parameter_set }
    end
  end

  # GET /seeds/1/edit
  def edit
    @parameter_set = ParameterSet.find(params[:id])
  end

  # POST /seeds
  # POST /seeds.json
  def create
    @parameter_set = ParameterSet.new(params[:parameter_set])

    respond_to do |format|
      if @parameter_set.save
        format.html { redirect_to @parameter_set, notice: 'Parameter Set was successfully created.' }
        format.json { render json: @parameter_set, status: :created, location: @parameter_set }
      else
        format.html { render action: "new" }
        format.json { render json: @parameter_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seeds/1
  # PUT /seeds/1.json
  def update
    @parameter_set = ParameterSet.find(params[:id])

    respond_to do |format|
      if @parameter_set.update_attributes(params[:parameter_set])
        format.html { redirect_to @parameter_set, notice: 'Seed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parameter_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seeds/1
  # DELETE /seeds/1.json
  def destroy
    @parameter_set = ParameterSet.find(params[:id])
    @parameter_set.destroy

    respond_to do |format|
      format.html { redirect_to parameter_sets_url }
      format.json { head :no_content }
    end
  end
end

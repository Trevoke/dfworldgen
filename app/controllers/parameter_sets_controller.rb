class ParameterSetsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :edit]

  def index
    @parameter_sets = ParameterSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parameter_sets }
    end
  end

  def show
    @parameter_set = ParameterSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parameter_set }
    end
  end

  def new
    @parameter_set = ParameterSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parameter_set }
    end
  end

  def edit
    @parameter_set = ParameterSet.find(params[:id])
    if @parameter_set.user_id != current_user.id
      flash[:alert] = "You're not allowed to edit this!"
      redirect_to @parameter_set
    end
  end

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

  def destroy
    @parameter_set = ParameterSet.find(params[:id])
    @parameter_set.destroy

    respond_to do |format|
      format.html { redirect_to parameter_sets_url }
      format.json { head :no_content }
    end
  end
end

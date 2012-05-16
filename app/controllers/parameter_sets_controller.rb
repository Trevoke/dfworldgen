class ParameterSetsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :tag_cloud
  respond_to :html

  def index
    @parameter_sets = ParameterSet.order('created_at DESC')
    respond_with @parameter_sets
  end

  def show
    @parameter_set = ParameterSet.find(params[:id])
    respond_with @parameter_set
  end

  def new
    @parameter_set = ParameterSet.new
    respond_with @parameter_set
  end

  def edit
    @parameter_set = ParameterSet.find(params[:id])
    if @parameter_set.user_id != current_user.id
      flash[:alert] = "You're not allowed to edit this!"
      redirect_to @parameter_set
    end
  end

  def create
    image_hash = Image.upload params[:parameter_set].delete(:image)

    @parameter_set = ParameterSet.new(params[:parameter_set])
    @parameter_set.user = current_user
    @parameter_set.image = image_hash
    if @parameter_set.save
      redirect_to @parameter_set, notice: 'Parameter Set was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @parameter_set = ParameterSet.find(params[:id])

    if @parameter_set.update_attributes(params[:parameter_set])
      redirect_to @parameter_set, notice: 'Seed was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @parameter_set = ParameterSet.find(params[:id])
    @parameter_set.destroy

    redirect_to parameter_sets_url
  end

  def vote_up
    pset = ParameterSet.find params[:id]
    current_user.vote_for pset
    render nothing: true
  end

  def vote_down
    pset = ParameterSet.find params[:id]
    current_user.vote_against pset
    render nothing: true
  end

 def tag_cloud
    @tags = ParameterSet.tag_counts_on(:tags)
 end

  def show_tags
    @parameter_sets = ParameterSet.tagged_with(params[:id])
    render :index
  end

end

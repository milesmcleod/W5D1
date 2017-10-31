class GoalsController < ApplicationController

  before_action :require_logged_in

  def index
    @goals = current_user.goals
    render :index
  end

  def show
    @goal = Goal.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to user_url(@goal.user)
    else
      flash[:errors] = @goal.errors.full_messages
      render :new
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = current_user.goals.find_by(id: params[:id])
    if @goal.update_attributes(goal_params)
      redirect_to(goals_url)
    else
      flash[:errors] = @goal.errors.full_messages
      render :edit
    end
  end

  def destroy
    @goal = current_user.goals.find(params[:id])
    @goal.destroy if @goal
    redirect_to goals_url
  end

  def goal_params
    params.require(:goal).permit(:body, :private)
  end
end

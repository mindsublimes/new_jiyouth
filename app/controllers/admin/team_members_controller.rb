class Admin::TeamMembersController < ApplicationController
  before_action :find_params, only: [:edit, :update, :show, :destroy]

	 def index
    @team_members = TeamMember.all
  end

  def new
    @team_member = TeamMember.new
  end

  def create
    @team_member = TeamMember.create(team_mem_params)
    if @team_member.save!
      redirect_to admin_team_members_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @team_member.update(team_mem_params)
    redirect_to admin_team_members_path
  end

  def show
  end

  def destroy
    @team_member.destroy
    redirect_to admin_team_members_path
  end

  private

  def team_mem_params
    params.require(:team_member).permit(:name, :image)
  end

  def find_params
    @team_member = TeamMember.find(params[:id])
  end
end

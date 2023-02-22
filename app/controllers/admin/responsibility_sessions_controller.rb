class Admin::ResponsibilitySessionsController < Admin::BaseController
	
	before_action :find_params, only: [:edit, :update, :show, :destroy]
	
	def index
    @responsibility_sessions = ResponsibilitySession.all
  end

  def new
    @responsibility_session = ResponsibilitySession.new
  end

  def create
    @responsibility_session = ResponsibilitySession.create(responsibilty_session_params)
    if @responsibility_session.save!
      redirect_to admin_responsibility_sessions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @responsibility_session.update(responsibilty_session_params)
    redirect_to admin_responsibility_sessions_path
  end

  def show
  end

  def destroy
    @responsibility_session.destroy
    redirect_to admin_responsibility_sessions_path
  end

  private

  def responsibilty_session_params
    params.require(:responsibility_session).permit(:year, :start_date, :end_date, :team_member_id, :responsibility_id)
  end

  def find_params
    @responsibility_session = ResponsibilitySession.find(params[:id])
  end

end

class AgendasController < ApplicationController
  before_action :set_agenda, only: [:show, :edit, :update, :destroy]

  def index
    @agendas = Agenda.all
  end

  def new
    @team = Team.friendly.find(params[:team_id])
    @agenda = Agenda.new
  end

  def create
    @agenda = current_user.agendas.build(title: params[:title])
    @agenda.team = Team.friendly.find(params[:team_id])
    current_user.keep_team_id = @agenda.team.id
    if current_user.save && @agenda.save
      redirect_to dashboard_url, notice: I18n.t('views.messages.create_agenda') 
    else
      render :new
    end
  end

  def destroy
    @team = Team.find_by(id: @agenda.team_id)
    @owner_id = @team.owner_id
    @assigns = @team.assigns
    @user_emails = @assigns.each {|a| a.user.email}
    if @agenda.user_id == current_user.id || @owner_id == current_user.id
      @agenda.destroy
      AgendaMailer.agenda_mail(@agenda, @user_emails).deliver
      redirect_to dashboard_url, notice: I18n.t('views.messages.delete_agenda') 
    else
      redirect_to dashboard_url
    end
  end

  private

  def set_agenda
    @agenda = Agenda.find(params[:id])
  end

  def agenda_params
    params.fetch(:agenda, {}).permit %i[title description]
  end
end

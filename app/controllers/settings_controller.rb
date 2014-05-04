class SettingsController < ApplicationController
  def index
    @require_approval = Settings.require_approval
  end

  def edit
    Settings.require_approval = !params[:require_approval].blank?
    redirect_to settings_path
  end
end
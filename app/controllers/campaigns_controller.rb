class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    if current_user?
      @campaign = Campaign.new(params.require(:campaign).permit(:title, :description, :amount_raised))
      @campaign["user_id"] = current_user["id"]
      @campaign.amount_raised = 0
      @campaign.save
      if @campaign.persisted?
        redirect_to campaigns_path
      else
        render 'new'
      end
    else
      redirect_to new_user_session_path
    end
  end
  
end

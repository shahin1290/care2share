class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(params.require(:campaign).permit(:title, :description, :amount_raised))
    @campaign.amount_raised = 0
    if @campaign.save
      redirect_to campaigns_path
    else
      render 'new'
    end
  end
  
end

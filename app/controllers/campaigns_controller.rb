class CampaignsController < ApplicationController

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    if user_signed_in?
      @campaign = Campaign.new
    else 
      authenticate_user!
    end
  end

  def create
      @campaign = Campaign.new(params.require(:campaign).permit(:title, :description, :amount_raised))
      @campaign['user_id'] = current_user['id']
      @campaign.amount_raised = 0
      @campaign.save
      if @campaign.persisted?
        redirect_to campaigns_path
      else
        render 'new'
      end
  end
end
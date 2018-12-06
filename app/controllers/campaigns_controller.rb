class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end
  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def edit
    @campaign = Campaign.find(params[:id])
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

  def update
    @campaign = Campaign.find(params[:id])
   
    if @campaign.update(params.require(:campaign).permit(:title, :description, :amount_raised))
      redirect_to @campaign
    else
      render 'edit'
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
 
    redirect_to campaigns_path
  end
  
end

class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def admin
    @campaigns = Campaign.where(user: current_user).order('created_at DESC')
  end

  def index
    @campaigns = Campaign.all
  end

  def show
   
  end
  def edit

  end

  def new
    if user_signed_in?
      @campaign = Campaign.new
    else 
      authenticate_user!
    end
  end

  def create
      @campaign = Campaign.new(campaign_params)
      @campaign['user_id'] = current_user['id']
      @campaign.amount_raised = 0
      @campaign.save
      if @campaign.persisted?
        redirect_to campaigns_path
      else
        render 'new'
      end
  end

  def update
    if @campaign.update(campaign_params)
      redirect_to @campaign, notice: 'campaign was successfully updated.' 
    else
      render 'edit' 
    end
  end

  def destroy
    @campaign.destroy
      redirect_to campaigns_url, notice: 'campaign was successfully deleted.' 
  end


  private

    def set_campaign
      @campaign = campaign.find(params[:id])
    end

    def campaign_params
      params.require(:campaign).permit(:title, :description, :amount_raised)
    end
end
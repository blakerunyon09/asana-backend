class CardsController < ApplicationController
  def index
    @cards = Card.all
    render json: @cards, status: :accepted
  end
  def show
    @card = Card.find(params[:id])
    render json: @card, include: :user, status: :accepted
  end
  def create
    @card = Card.create(name: params[:name], description: params[:description], user_id: params[:user_id])
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
  def update
    @card = Card.find(params[:id])
    @card.update(name: params[:name], description: params[:description], user_id: params[:user_id])
    render json: @card, status: :accepted
  end
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
end

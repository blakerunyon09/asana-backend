class CardsController < ApplicationController
  def index
    @cards = Card.all
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
  def show
    @card = Card.find(params[:id])
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
  def create
    @card = Card.create(name: params[:name], description: params[:description], user_id: params[:user_id])
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
  def update
    @card = Card.find(params[:id])
    @card.update(name: params[:name], description: params[:description], user_id: params[:user_id])
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to "https://gallant-poitras-e8ca8f.netlify.app"
  end
end

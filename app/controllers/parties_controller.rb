class PartiesController < ApplicationController
  before_action :find_party, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @parties = Party.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @parties = Party.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(parties_params)

    if @party.save
      redirect_to @party
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @party.update(parties_params)
      redirect_to @party
    else
      render "Edit"
    end
  end

  def destroy
    @party.destroy
    redirect_to root_path
  end

  private

  def parties_params
    params.require(:party).permit(:title, :description, :company, :category_id)
  end

  def find_party
    @party = Party.find(params[:id])
  end
end

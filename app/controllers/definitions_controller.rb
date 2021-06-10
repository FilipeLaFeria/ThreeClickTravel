class DefinitionsController < ApplicationController
  before_action :set_definition, only: %i[show edit update destroy]

  def show
  end

  def new
    @definition = Definition.new
  end

  def create
    @definition = Definition.new(definition_params)
    @definition.user = current_user
    if @definition.save
      redirect_to root_path, notice: 'Definition was successfully added'
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @definition.update(definition_params)
      redirect_to destinations_path, notice: 'Definition was successfully updated'
    else
      render "pages/home", notice: '#{}'
    end

  end

  def destroy
    @definition.destroy
    redirect_to root_path, notice: 'Definition was successfully destroyed'
  end

  private

  def set_definition
    @definition = Definition.find(params[:id])
  end

  def definition_params
    params.require(:definition).permit(:username, :first_name, :last_name, :date, :budget)
  end
end

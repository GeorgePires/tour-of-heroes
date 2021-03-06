class HerosController < ApplicationController
  # ? Solic senha de usuario e criando senha de acesso no master.key
  # ! Run EDITOR="code --wait" bin/rails credentials:edit

  http_basic_authenticate_with name: Rails.application.credentials.authenticate[:name],
                               password: Rails.application.credentials.authenticate[:password],
                               except: %i[index show]

  before_action :set_hero, only: %i[show edit update destroy]

  def index
    @heros = Hero.all
  end

  def show; end

  def new
    @hero = Hero.new
  end

  def edit; end

  def create
    @hero = Hero.new(hero_params)
    respond_to do |format|
      if @hero.save
        format.html { redirect_to @hero, notice: 'Hero was successfully created.' }
        format.json { render :show, status: :created, location: @hero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /heros/1 or /heros/1.json
  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.html { redirect_to @hero, notice: 'Hero was successfully updated.' }
        format.json { render :show, status: :ok, location: @hero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE 
  def destroy
    @hero.destroy
    respond_to do |format|
      format.html { redirect_to heros_url, notice: 'Hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
 # Use callbacks para compartilhar configurações ou restrições comuns entre as ações.
  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name)
  end
end

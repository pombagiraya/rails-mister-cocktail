class CocktailsController < ApplicationController
    def index
    @cocktails = Cocktail.all
    @search = params['search']
    if @search.present?
      @name = @search['cocktail_name']
      @cocktails = Cocktail.where('name ILIKE ?', "%#{@name}%")
    end
  end
end

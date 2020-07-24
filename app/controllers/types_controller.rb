class TypesController < ApplicationController
    def index
      @tags = ActsAsTaggableOn::Tag.all
    end
  
    def show
      @type =  ActsAsTaggableOn::Tag.find(params[:id])
      @organizations = Organization.tagged_with(@type.name)
    end
end
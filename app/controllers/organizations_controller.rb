class OrganizationsController < ApplicationController
    def index
        @organization = Organization.all
    end

    def new 
        @organization = Organization.new
    end

    def edit
        @organization = Organization.find(params[:id])
    end

    def create
        @organization = Organization.new(organization_params)

        if @organization.save
            redirect_to @organization
        else
            render 'new'
        end
    end

    def show
        @organization = Organization.find(params[:id])
    end

    def update
        @organization = Organization.find(params[:id])

        if @organization.update(organization_params)
            redirect_to @organization
        else
            render 'edit'
        end
    end

    def destroy
        @organization = Organization.find(params[:id])
        @organization.destroy
        
        redirect_to organizations_path
    end

    private 
        def organization_params
            params.require(:organization).permit(:name, :description, :size)
        end
end

class JobListingsController < ApplicationController
    def index
        job_listings=Job_listing.all
        render json: job_listings
    end
    def create
        job_listing = Job_listing.create(job_listing_params)
        render json: job_listing, status: :created
    end

    private 
    def job_listing_params
        params.permit(:job_title, :category, :description, :qualification, :deadline)
    end

end

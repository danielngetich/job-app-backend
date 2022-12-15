class JobListingsController < ApplicationController
    def index
        job_listings=Job_listing.all
        render json: job_listing, status: :ok
    end
    def create
        job_listing = Job_listing.create(job_listing_params)
        render json: job_listing, status: :created
    end
    def update
        job_listing = Job_listing.find_by(id:params[:id])
          if job_listing
                job_listing.update(job_listing_params)
                render json: job_listing, status: :acepted
            else
                render json: {error: "Job_listing not found"}, status: :not_found
             end
     end

    def destroy
        job_listing = Job_listing.find_by(id:params[:id])
          if job_listing
                    job_listing.destroy
                    head :no_content
            else
                render json: {error: "Job_listing not found"}, status: :not_found
            end
                             
                
      end
            

    private 
    def job_listing_params
        params.permit(:job_title, :category, :description, :qualification, :deadline)
    end

end

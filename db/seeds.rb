puts "start seeding"
 job_listings = Job_listing.create([
    {job_title: "Senior Program Officer", category: "", description: "", qualification: "", deadline:""},
    {job_title: "", category: "", description: "", qualification: "", deadline:""},
    {job_title: "", category: "", description: "", qualification: "", deadline:""}
 ])
puts "done seeding"
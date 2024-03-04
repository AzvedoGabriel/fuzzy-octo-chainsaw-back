class CreateBatchMoviesJob < ApplicationJob

  def perform(*args)
    # Do something later
    Movies::CreateBatchMoviesService.call(hash_data: args.first, target_class: args.second, user_id: args.last)
  end
end

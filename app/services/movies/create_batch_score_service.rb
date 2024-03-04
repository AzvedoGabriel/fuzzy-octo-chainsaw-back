class Movies::CreateBatchScoreService
  def initialize(**args)
    @hash_data = args[:hash_data]
    @target_class = args[:target_class]
    @user_id = args[:user_id]
  end

  def self.call(**args)
    new(**args).call
  end

  def call
    run
  end

  private

  def run
    user = User.find(@user_id)
    user.user_movies.joins(:movie).where("movies.title = ?", @hash_data[:title]).update(score: @hash_data[:score])
  end
end

class Movies::CreateBatchMoviesService
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
    object = @target_class.create(@hash_data)
    user = User.find(@user_id)
    user.movies << object
    puts 'Arquivo carregado com sucesso'
  end
end


class CleanerWorker
  include Sidekiq::Worker

  def perform
    Diary.where("expiration::date < ?", DateTime.now).destroy_all
  end
end

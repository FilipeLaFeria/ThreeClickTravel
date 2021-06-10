class Definition < ApplicationRecord
  after_commit :destination_fill
  belongs_to :user
  validates :budget, :start_date, :end_date, :travellers, presence: true

  private

  def destination_fill
    DestinationsfillJob.perform_now(self.price, self.start_date)
  end
end

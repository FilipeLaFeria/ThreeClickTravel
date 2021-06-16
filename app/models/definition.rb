class Definition < ApplicationRecord
  belongs_to :user
  validates :budget, :start_date, :end_date, :travellers, presence: true
  after_create :destination_fill

  private

  def destination_fill
    DestinationsfillJob.perform_now(budget, start_date, end_date)
  end
end

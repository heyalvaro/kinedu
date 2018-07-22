class ActivityLog < ApplicationRecord
  belongs_to :baby
  belongs_to :assistant
  belongs_to :activity

  def duration
    (stop_time - start_time)/60 unless stop_time.nil?
  end

  def status
    stop_time.nil? ? "En Progreso" : "Terminada"
  end

end

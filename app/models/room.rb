class Room < ApplicationRecord
  validates :name, :place, :number, presence: true

  # validates :name, length: { minimum: 30, minimum: 1 }
  # validates :place, inclusion: { in: %w[東京 大阪 金沢 福岡 札幌 仙台 名古屋 金沢] }
  # validates :number, numericality: { greater_than: 5, less_than: 30 }
  # validates :name, format: { with: /.+\d{2}/ }
end

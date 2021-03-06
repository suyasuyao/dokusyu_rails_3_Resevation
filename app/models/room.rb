class Room < ApplicationRecord
  validates :name, :place, :number, presence: true
  validates :name, length: { maximum: 30, minimum: 1 }
  validates :place, inclusion: { in: %w[東京 大阪 金沢 福岡 札幌 仙台 名古屋 金沢] }
  validates :number, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 30 }
  validates :name, format: { with: /\A.+#\d{2}\z/, message: '会議室名が正しくありません' }
  validate :number_5multiple_check

  before_validation :formatting_name

  private

  def number_5multiple_check
    errors.add(:number, '収容人数は５の倍数で指定してください') unless number % 5 == 0
  end

  def formatting_name
    self.name = name.strip

    puts name.gsub(/ +/, '_')
    self.name = name.gsub(/ +/, '_')
  end
end

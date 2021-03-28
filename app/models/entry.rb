class Entry < ApplicationRecord
  scope :least_entries, lambda { |scope_date|
                          where('reserved_date <= ? + 7 ', scope_date).where('reserved_date >= ? - 7 ', scope_date)
                        }
  # Ex:- scope :active, -> {where(:active => true)}
end

# &&  reserved_date >= ? - 7    scope_date

class Person < ActiveRecord::Base
  STATUSES = %w(out-of-date current)
  SEVERITIES = %w(none low medium high)

  validates_inclusion_of :severity, in: SEVERITIES
  validates_inclusion_of :status, in: STATUSES
end

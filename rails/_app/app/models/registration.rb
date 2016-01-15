class Registration < ActiveRecord::Base
  belongs_to :event
  HOW_HEARD_OPTIONS = ['Newslettter', 'Twitter', 'Web Search', 'Other']

  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
end

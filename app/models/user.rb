class User < ActiveRecord::Base
  validates_presence_of :full_name, :phone, :email
  validates :phone, presence: true, format: /[+]?([0-9][\s-]?){10,13}/
  validates_format_of :email, with: /@/

  alias_attribute :to_s, :full_name
end

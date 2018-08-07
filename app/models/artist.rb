class Artist < ApplicationRecord
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :preserve_files => true
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :user
  has_many :projects
  has_many :events
end

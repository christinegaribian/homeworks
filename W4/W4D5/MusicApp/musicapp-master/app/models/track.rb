# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  album_id   :integer          not null
#  lyrics     :text
#  is_bonus   :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  validates :name, :album_id, presence: true

  belongs_to :album

  has_one :band,
    through: :album,
    source: :band

  has_many :notes
end

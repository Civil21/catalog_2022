# == Schema Information
#
# Table name: makers
#
#  id               :bigint           not null, primary key
#  name             :string
#  description      :text
#  meta_title       :string
#  meta_description :string
#  keywords         :string
#  products_count   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Maker < ApplicationRecord
  has_many :products
  validates :name, uniqueness: true
end

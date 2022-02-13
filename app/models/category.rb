# == Schema Information
#
# Table name: categories
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
class Category < ApplicationRecord
  has_many :products
  validates :name, uniqueness: true

  scope :not_blank, ->{where.not(products_count: 0)}
end

# == Schema Information
#
# Table name: products
#
#  id               :bigint           not null, primary key
#  name             :string
#  description      :text
#  meta_title       :string
#  meta_description :string
#  keywords         :string
#  price            :bigint
#  category_id      :integer
#  maker_id         :integer
#  available        :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Product < ApplicationRecord
  belongs_to :maker
  belongs_to :category

  has_one_attached :image
  has_many_attached :images

  scope :availables, -> {where(available: true)}
  scope :unavailables, -> {where(available: false)}
end

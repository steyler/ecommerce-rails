# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text
#  stock       :integer          default(0)
#  price       :decimal(, )
#  sku         :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
    validates :price, numericality: {greater_than_or_equal_to: 0}
    has_and_belongs_to_many :categories
    has_many :order_items
    has_many :orders, through: :order_items

    
end

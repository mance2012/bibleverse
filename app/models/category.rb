class Category < ActiveRecord::Base
	has_many :categorizations
	has_many :images, through: :categorizations


	extend ActsAsTree::TreeView
	acts_as_tree order: "name"
end

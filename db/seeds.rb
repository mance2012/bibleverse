# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Image.destroy_all()
# Imagefile.destroy_all()
Category.destroy_all()

root = Category.create(name: "root")
cate1 = root.children.create(name: "Backgrouds")
cate2 = root.children.create(name: "Clip Art")

cate1.children.create("name" => "Photography")
cate1.children.create("name" => "Illustration")
cate1.children.create("name" => "Painting")


p "Create the Category!!"


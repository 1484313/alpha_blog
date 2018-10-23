require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
	def setup
		@category = Category.create(name: "sports")
		@category2 = Category.create(name: "programinig")
	end

	test "should show categories listing" do
		get_categories_path
		assert_template 'categories/index'
		assert_select ""
	end

end
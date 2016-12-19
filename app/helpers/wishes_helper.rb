module WishesHelper

	def wish_page_class(index)
	  if index.zero?
	    "item active"
	  else
	  	"item"
	  end
	end

	def wish_pagination_class(index)
	  if index.zero?
	    "active"
	  else
	  	""
	  end
	end

	def wish_page_slice_count(wish_page)
		if wish_page.count >= 9
			3
		elsif wish_page.count <= 3
			1
		else
			2
		end
	end

end
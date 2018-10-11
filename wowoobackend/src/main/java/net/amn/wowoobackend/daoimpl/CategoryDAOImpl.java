package net.amn.wowoobackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import net.amn.wowoobackend.dao.CategoryDAO;
import net.amn.wowoobackend.dto.Category;

public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	static {
		
		Category category = new Category();
		
		//adding first category
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is some description for television");
		category.setImageURL("first_image.png");
		
		categories.add(category);
		
		//add second category
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is some description for mobile");
		category.setImageURL("second_image.png");
		
		categories.add(category);
		
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

}

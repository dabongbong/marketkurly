package com.kurly.marketkurly.model.product;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.domain.ProductDetail;
import com.kurly.marketkurly.domain.ProductHashtag;
import com.kurly.marketkurly.domain.Subcategory;
import com.kurly.marketkurly.exception.ProductException;
import com.kurly.marketkurly.model.subcategory.SubcategoryDAO;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ProductDetailDAO productDetailDAO;
	@Autowired
	private ProductHashtagDAO productHashtagDAO;
	@Autowired
	private SubcategoryDAO subcategoryDAO;

	@Override
	public List selectAll() {
		return productDAO.selectAll();
	}
	@Override
	public List selectByCategory(int category_id) {
		List<Subcategory>subcategoryList = subcategoryDAO.selectAllByCategoryId(category_id);
		List<Product>productList=new ArrayList<Product>();
		for(Subcategory obj : subcategoryList) {
			productList.addAll(productDAO.selectByCategory(obj.getSubcategory_id()));
		}
		return productList;
	}

	@Override
	public Product select(int product_id) {
		return productDAO.select(product_id);
	}

	@Override
	public void insert(Product product) throws ProductException{
		productDAO.insert(product);
		System.out.println("서비스에서 프로덕트"+product);
		
		for(ProductDetail detail : product.getProduct_detail_list()) {
		detail.setProduct_id(product.getProduct_id());
		productDetailDAO.insert(detail);
		//System.out.println("디테일 : " + detail);
		}
		for(ProductHashtag hashtag : product.getProduct_hashtag_list()) {
			hashtag.setProduct_id(product.getProduct_id());
			productHashtagDAO.insert(hashtag);
			//System.out.println("해시태그 : " + hashtag);
			
		}
	}
		

	@Override
	public void update(Product product) throws ProductException{
		productDAO.update(product);
		productDetailDAO.delete(product.getProduct_id());
		productHashtagDAO.deleteByProductId(product.getProduct_id());
		for(ProductDetail detail : product.getProduct_detail_list()) {
			detail.setProduct_id(product.getProduct_id());
			productDetailDAO.insert(detail);
			//System.out.println("디테일 : " + detail);
			}
			for(ProductHashtag hashtag : product.getProduct_hashtag_list()) {
				hashtag.setProduct_id(product.getProduct_id());
				productHashtagDAO.insert(hashtag);
				//System.out.println("해시태그 : " + hashtag);
				
			}
		
	}

	@Override
	public void delete(int product_id) throws ProductException{
		productDetailDAO.delete(product_id);
		productHashtagDAO.deleteByProductId(product_id);
		productDAO.delete(product_id);
		
	}

}
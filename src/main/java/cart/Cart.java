package cart;

import product.Product;

public class Cart {
	private int id, productId,
	userId,Qty;
	
	Product product;
	

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getQty() {
		return Qty;
	}

	public void setQty(int qty) {
		Qty = qty;
	}



	public Cart(int id, int productId, int userId, int qty) {
		
		this.id = id;
		this.productId = productId;
		this.userId = userId;
		Qty = qty;
	}

	public Cart() {
		
	}

	public Cart(int productId, int userId, int qty) {
		
		this.productId = productId;
		this.userId = userId;
		Qty = qty;
	}

	public Cart(int id, int productId, int userId, int qty, Product product) {
		super();
		this.id = id;
		this.productId = productId;
		this.userId = userId;
		Qty = qty;
		this.product = product;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", productId=" + productId + ", userId=" + userId + ", Qty=" + Qty + ", product="
				+ product + "]";
	}

	
	

}

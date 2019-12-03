package product;

import category.Category;

public class Product {

	private int id;
	private String name;
	private String description;
	private double price;
	private short stockqty;
	private int imageId;
	private String imageUrl;
	private short categoryId;
	private Category category =new Category();
	
	

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public short getStockqty() {
		return stockqty;
	}

	public void setStockqty(short stockqty) {
		this.stockqty = stockqty;
	}

	public short getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(short categoryId) {
		this.categoryId = categoryId;
	}

	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}



	public Product(int id, String name, String description, double price, short stockqty, int imageId, String imageUrl,
			short categoryId, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
		this.imageUrl = imageUrl;
		this.categoryId = categoryId;
		this.category = category;
	}

	
	public Product(String name, String description, double price, short stockqty, int imageId, short categoryId,
			Category category) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
		this.categoryId = categoryId;
		this.category = category;
	}

	
	public Product(String name, String description, double price, short stockqty, int imageId, String imageUrl,
			short categoryId) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
		this.imageUrl = imageUrl;
		this.categoryId = categoryId;
	}
	

	public Product(int id, String name, String description, double price, short stockqty, String imageUrl,
			short categoryId, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageUrl = imageUrl;
		this.categoryId = categoryId;
		this.category = category;
	}
	

	public Product(int id, String name, String description, double price, short stockqty, short categoryId,
			Category category) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.categoryId = categoryId;
		this.category = category;
	}
	

	public Product(String name, String description, double price, short stockqty, short categoryId) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.categoryId = categoryId;
	}
	

	public Product(int id) {
		super();
		this.id = id;
	}
	
	

	public Product(int id, String name, String description, double price, short stockqty, int imageId,
			short categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
		this.categoryId = categoryId;
	}
	

	public Product(String name, String description, double price, short stockqty, int imageId, short categoryId) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.imageId = imageId;
		this.categoryId = categoryId;
	}

	

	public Product(int id, String name, String description, double price, short stockqty, short categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stockqty = stockqty;
		this.categoryId = categoryId;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", stockqty=" + stockqty + ", imageId=" + imageId + ", imageUrl=" + imageUrl + ", categoryId="
				+ categoryId + ", category=" + category + "]";
	}

	
	

}

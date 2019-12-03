package address;

public class Address {
	private int id;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String city;
	private String state;
	private int pincode;

	
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
     public String getCity() {
		return city;		
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	
	public Address(int id, String name, String phone, String email, String address, String city, String state,
			int pincode) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}
	public Address(String name, String phone, String email,  String address, String city, String state, int pincode) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;	
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}
	public Address(String phone, String email,  String address, String city, String state, int pincode) {
		super();
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}
	public Address() {
		super();
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", address=" + address + 
				 ", city=" + city + ", state=" + state + ", pincode=" + pincode + "]";
	}
	
}

package card;

public class CardDetails {
	
	private String cardName,cardNumber,cardExpired;
	private int id,cvv,cardYear;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public int getCardYear() {
		return cardYear;
	}
	public void setCardYear(int cardYear) {
		this.cardYear = cardYear;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardExpired() {
		return cardExpired;
	}
	public void setCardExpired(String cardExpired) {
		this.cardExpired = cardExpired;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public CardDetails(String cardName, String cardNumber, String cardExpired, int id, int cvv, int cardYear) {
		super();
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.cardExpired = cardExpired;
		this.id = id;
		this.cvv = cvv;
		this.cardYear = cardYear;
	}
	public CardDetails(String cardName, String cardNumber, String cardExpired, int cvv, int cardYear) {
		super();
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.cardExpired = cardExpired;
		this.cvv = cvv;
		this.cardYear = cardYear;
	}
	public CardDetails() {
		super();
	}
	@Override
	public String toString() {
		return "CardDetails [cardName=" + cardName + ", cardNumber=" + cardNumber + ", cardExpired=" + cardExpired
				+ ", id=" + id + ", cvv=" + cvv + ", cardYear=" + cardYear + "]";
	}
	
}

package chandan.Model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="User")
public class User implements Serializable {

	@Id
	@GenericGenerator(
			name="User",
			strategy="enhanced-table",
			parameters={@org.hibernate.annotations.Parameter(name="User",value="hib_seq")
			}			
			)
	@GeneratedValue(generator="User",strategy=GenerationType.TABLE)
	
	public int id;
	@NotEmpty
	private String name;
	@NotEmpty
	private String password;
	@NotEmpty @Email
	private String email;
	@NotEmpty
	private String gender;
	@NotEmpty
	private String address;
	@NotEmpty
	private String confirm_password;
	@NotNull
	private long phone;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bid")
	private BillingAddress bill;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn
	private Cart cart;
	
	
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public BillingAddress getBill() {
		return bill;
	}
	public void setBill(BillingAddress bill) {
		this.bill = bill;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}

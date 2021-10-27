package au.com.qsone.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "PROPERTY")
public class Property implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    long id;
	
	@Column(name = "owner", nullable = false)
    private String owner;
	@Column(name = "phone", nullable = true)
    private String phone;
    @Column(name = "mobile", nullable = false)
    private String mobile;
    @Column(name = "email", nullable = false)
    private String email;
    @Column(name = "propertyType", nullable = false)
    private String propertyType;
    @Column(name = "forAndBehalfOfOwner", nullable = true)
    private String forAndBehalfOfOwner;
    @Column(name = "nameOfAuthorizedPerson", nullable = true)
    private String nameOfAuthorizedPerson;
    @Column(name = "comments", nullable = true)
    private String comments;
    @Column(name = "purchasePrice", nullable = true)
    private String purchasePrice;
    @Column(name = "stampDuty", nullable = true)
    private String stampDuty;
    @Column(name = "legalCosts", nullable = true)
    private String legalCosts;
    @Column(name = "additionalExpenses", nullable = true)
    private String additionalExpenses;
    @Column(name = "originalBuildingCost", nullable = true)
    private String originalBuildingCost;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date constructionStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date constructionEnd;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOfContractExchange;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateSettlement;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date firstLeaseDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date firstTaxableEndDate;
	
	public long getId() {
		return id;
	}
	public String getOwner() {
		return owner;
	}
	public String getPhone() {
		return phone;
	}
	public String getMobile() {
		return mobile;
	}
	public String getEmail() {
		return email;
	}
	public String getPropertyType() {
		return propertyType;
	}
	public String getForAndBehalfOfOwner() {
		return forAndBehalfOfOwner;
	}
	public String getNameOfAuthorizedPerson() {
		return nameOfAuthorizedPerson;
	}
	public String getComments() {
		return comments;
	}
	public String getPurchasePrice() {
		return purchasePrice;
	}
	public String getStampDuty() {
		return stampDuty;
	}
	public String getLegalCosts() {
		return legalCosts;
	}
	public String getAdditionalExpenses() {
		return additionalExpenses;
	}
	public String getOriginalBuildingCost() {
		return originalBuildingCost;
	}
	public Date getConstructionStart() {
		return constructionStart;
	}
	public Date getConstructionEnd() {
		return constructionEnd;
	}
	public Date getDateOfContractExchange() {
		return dateOfContractExchange;
	}
	public Date getDateSettlement() {
		return dateSettlement;
	}
	public Date getFirstLeaseDate() {
		return firstLeaseDate;
	}
	public Date getFirstTaxableEndDate() {
		return firstTaxableEndDate;
	}
	public void setId(long id) {
		this.id = id;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	public void setForAndBehalfOfOwner(String forAndBehalfOfOwner) {
		this.forAndBehalfOfOwner = forAndBehalfOfOwner;
	}
	public void setNameOfAuthorizedPerson(String nameOfAuthorizedPerson) {
		this.nameOfAuthorizedPerson = nameOfAuthorizedPerson;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public void setPurchasePrice(String purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public void setStampDuty(String stampDuty) {
		this.stampDuty = stampDuty;
	}
	public void setLegalCosts(String legalCosts) {
		this.legalCosts = legalCosts;
	}
	public void setAdditionalExpenses(String additionalExpenses) {
		this.additionalExpenses = additionalExpenses;
	}
	public void setOriginalBuildingCost(String originalBuildingCost) {
		this.originalBuildingCost = originalBuildingCost;
	}
	public void setConstructionStart(Date constructionStart) {
		this.constructionStart = constructionStart;
	}
	public void setConstructionEnd(Date constructionEnd) {
		this.constructionEnd = constructionEnd;
	}
	public void setDateOfContractExchange(Date dateOfContractExchange) {
		this.dateOfContractExchange = dateOfContractExchange;
	}
	public void setDateSettlement(Date dateSettlement) {
		this.dateSettlement = dateSettlement;
	}
	public void setFirstLeaseDate(Date firstLeaseDate) {
		this.firstLeaseDate = firstLeaseDate;
	}
	public void setFirstTaxableEndDate(Date firstTaxableEndDate) {
		this.firstTaxableEndDate = firstTaxableEndDate;
	}
}

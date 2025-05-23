package com.grownited.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "Reviews")
public class ReviewEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer reviewId; // PK
	private Integer appraisalId; // FK
	private Integer employeeId; // FK
	private Integer reviewerId; // FK
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reviewDate;
	private String strengths;
	private String improvementArea;
	private BigDecimal finalRating;
	private String comments;
	
	public Integer getReviewId() {
		return reviewId;
	}
	public void setReviewId(Integer reviewId) {
		this.reviewId = reviewId;
	}
	public Integer getAppraisalId() {
		return appraisalId;
	}
	public void setAppraisalId(Integer appraisalId) {
		this.appraisalId = appraisalId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getReviewerId() {
		return reviewerId;
	}
	public void setReviewerId(Integer reviewerId) {
		this.reviewerId = reviewerId;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}
	public String getImprovementArea() {
		return improvementArea;
	}
	public void setImprovementArea(String improvementArea) {
		this.improvementArea = improvementArea;
	}
	public BigDecimal getFinalRating() {
		return finalRating;
	}
	public void setFinalRating(BigDecimal finalRating) {
		this.finalRating = finalRating;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}

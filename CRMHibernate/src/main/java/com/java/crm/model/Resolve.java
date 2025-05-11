package com.java.crm.model;

import java.sql.Date;

public class Resolve {

	private int ResolveId;
	private int ComplaintID;
	private Date ComplaintDate;
	private Date ResolveDate;
	private String ResolvedBy;
	private String Comments;

	public int getResolveId() {
		return ResolveId;
	}

	public void setResolveId(int resolveId) {
		ResolveId = resolveId;
	}

	public int getComplaintID() {
		return ComplaintID;
	}

	public void setComplaintID(int complaintID) {
		ComplaintID = complaintID;
	}

	public Date getComplaintDate() {
		return ComplaintDate;
	}

	public void setComplaintDate(Date complaintDate) {
		ComplaintDate = complaintDate;
	}

	public Date getResolveDate() {
		return ResolveDate;
	}

	public void setResolveDate(Date resolveDate) {
		ResolveDate = resolveDate;
	}

	public String getResolvedBy() {
		return ResolvedBy;
	}

	public void setResolvedBy(String resolvedBy) {
		ResolvedBy = resolvedBy;
	}

	public String getComments() {
		return Comments;
	}

	public void setComments(String comments) {
		Comments = comments;
	}

	public Resolve(int resolveId, int complaintID, Date complaintDate, Date resolveDate, String resolvedBy,
			String comments) {
		ResolveId = resolveId;
		ComplaintID = complaintID;
		ComplaintDate = complaintDate;
		ResolveDate = resolveDate;
		ResolvedBy = resolvedBy;
		Comments = comments;
	}

	
	public Resolve() {
	
	}

	@Override
	public String toString() {
		return "Resolve [ResolveId=" + ResolveId + ", ComplaintID=" + ComplaintID + ", ComplaintDate=" + ComplaintDate
				+ ", ResolveDate=" + ResolveDate + ", ResolvedBy=" + ResolvedBy + ", Comments=" + Comments + "]";
	}
	
	
	
	
	
	

}

package com.scit.wow.vo;

public class ExtraInfo {
	private int membernum;
	private String id;
	private String gender;
	private String tel;
	private String nickname;
	private String membertype;
	private String address1;
	private String address2;
	private String comments;
	private String licensenum;

	public ExtraInfo(int membernum, String id, String gender, String tel, String nickname, String membertype,
			String address1, String address2, String comments, String licensenum) {
		super();
		this.membernum = membernum;
		this.id = id;
		this.gender = gender;
		this.tel = tel;
		this.nickname = nickname;
		this.membertype = membertype;
		this.address1 = address1;
		this.address2 = address2;
		this.comments = comments;
		this.licensenum = licensenum;
	}

	public ExtraInfo() {
		super();
	}

	public int getMembernum() {
		return membernum;
	}

	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMembertype() {
		return membertype;
	}

	public void setMembertype(String membertype) {
		this.membertype = membertype;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getLicensenum() {
		return licensenum;
	}

	public void setLicensenum(String licensenum) {
		this.licensenum = licensenum;
	}

	@Override
	public String toString() {
		return "ExtraInfo [membernum=" + membernum + ", id=" + id + ", gender=" + gender + ", tel=" + tel
				+ ", nickname=" + nickname + ", membertype=" + membertype + ", address1=" + address1 + ", address2="
				+ address2 + ", comments=" + comments + ", licensenum=" + licensenum + "]";
	}

}

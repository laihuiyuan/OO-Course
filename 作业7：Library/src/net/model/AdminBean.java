/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.model;

/**
 * 管理员表javaBean类
 *
 *
 */
public class AdminBean {

	private String ADID;
	private String APASSWD;
	private String ANAME;
	private String AGENDER;
	private String AVATAR;

	public AdminBean() {
		AVATAR = "0";
	}

	public String getAVATAR() {
		return AVATAR;
	}

	public void setAVATAR(String AVATAR) {
		this.AVATAR = AVATAR;
	}

	public String getADID() {
		return ADID;
	}

	public void setADID(String ADID) {
		this.ADID = ADID;
	}

	public String getAPASSWD() {
		return APASSWD;
	}

	public void setAPASSWD(String APASSWD) {
		this.APASSWD = APASSWD;
	}

	public String getANAME() {
		return ANAME;
	}

	public void setANAME(String ANAME) {
		this.ANAME = ANAME;
	}

	public String getAGENDER() {
		return AGENDER;
	}

	public void setAGENDER(String AGENDER) {
		this.AGENDER = AGENDER;
	}
}

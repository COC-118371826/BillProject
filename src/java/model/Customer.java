/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author cilli
 */
public class Customer {
    private long ID;
private int UserID;
private String FullName;
private String AccountStatus;

    /**
     * @return the ID
     */
    public long getID() {
        return ID;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(long ID) {
        this.ID = ID;
    }

    /**
     * @return the UserID
     */
    public int getUserID() {
        return UserID;
    }

    /**
     * @param UserID the UserID to set
     */
    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    /**
     * @return the FullName
     */
    public String getFullName() {
        return FullName;
    }

    /**
     * @param FullName the FullName to set
     */
    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    /**
     * @return the AccountStatus
     */
    public String getAccountStatus() {
        return AccountStatus;
    }

    /**
     * @param AccountStatus the AccountStatus to set
     */
    public void setAccountStatus(String AccountStatus) {
        this.AccountStatus = AccountStatus;
    }

    
}

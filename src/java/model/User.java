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
public class User {

    /**
     * @return the Username
     */
    public String getUsername() {
        return Username;
    }

    /**
     * @param Username the Username to set
     */
    public void setUsername(String Username) {
        this.Username = Username;
    }
     private int ID;
    private String Email;
    private String Password;
    private String UserType;
    private String Username;

    public User(int ID, String Email, String Password,String Username, String UserType) {
        this.ID = ID;
        this.Email = Email;
        this.Password = Password;
        this.Username = Username;
        this.UserType = UserType;
        
        
    }

    

   
    /**
     * @return the ID
     */
    public int getID() {
        return ID;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(int ID) {
        this.ID = ID;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }

    /**
     * @return the UserType
     */
    public String getUserType() {
        return UserType;
    }

    /**
     * @param UserType the UserType to set
     */
    public void setUserType(String UserType) {
        this.UserType = UserType;
    }

  
}

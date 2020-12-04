/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import java.util.Vector;
import model.User;
import com.bsapp.utils.IConstants;

/**
 *
 * @author cilli
 */
public class UserDAO {
    public User getUserByEmail(String username){
        if (username.equals("admin@admin.com")){
            User user1 = new User(1,"admin@admin.com","admin","Mary Murphy",IConstants.USER_TYPE_ADMIN);
            return user1;
        }
        User user2 = new User(1,"user@user.com","user","John Murphy",IConstants.USER_TYPE_GENERAL_USER);
            return user2;
    }
    public Vector<User> getAllUsers(){
        
        Vector<User> userData = new Vector();
        User user1 = new User(1,"admin@admin.com","admin","Mary Murphy",IConstants.USER_TYPE_ADMIN);
        userData.add(user1);
        User user2 = new User(1,"user@user.com","user","John Murphy",IConstants.USER_TYPE_GENERAL_USER);
        userData.add(user2);
        return userData;
    }

  
}

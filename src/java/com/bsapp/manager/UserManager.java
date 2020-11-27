/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.manager;

import com.bsapp.dao.UserDAO;
import model.User;

/**
 *
 * @author cilli
 */
public class UserManager {
    
    
    public User loginUser(String email, String password){
    
    UserDAO userDAO = new UserDAO();
    User user = userDAO.getUserByEmail(email);
    if (user.getPassword().equals(password)){
        return user;
    }
    else  return null;
}
}
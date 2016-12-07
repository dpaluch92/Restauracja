package com.mycompany.projekt.db;
// Generated 2016-11-29 19:53:26 by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;

/**
 * UserDb generated by hbm2java
 */
public class UserDb implements java.io.Serializable {

    private int userId;
    private int userRole;
    private String userLogin;
    private String userPassword;
    private String userName;
    private String userSurname;
    private Short userAge;
    private String userGender;
    private String userCity;
    private String userAddress;
    private Set<Orders> orderses = new HashSet<Orders>(0);

    public UserDb() {
    }

    public UserDb(int userRole, String userLogin, String userPassword, String userName, String userSurname) {
        this.userRole = userRole;
        this.userLogin = userLogin;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userSurname = userSurname;
    }

    public UserDb(int userRole, String userLogin, String userPassword, String userName, String userSurname, Short userAge, String userGender, String userCity, String userAddress, Set<Orders> orderses) {
        this.userRole = userRole;
        this.userLogin = userLogin;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userSurname = userSurname;
        this.userAge = userAge;
        this.userGender = userGender;
        this.userCity = userCity;
        this.userAddress = userAddress;
        this.orderses = orderses;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int isUserRole() {
        return this.userRole;
    }

    public void setUserRole(int userRole) {
        this.userRole = userRole;
    }

    public String getUserLogin() {
        return this.userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public String getUserPassword() {
        return this.userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSurname() {
        return this.userSurname;
    }

    public void setUserSurname(String userSurname) {
        this.userSurname = userSurname;
    }

    public Short getUserAge() {
        return this.userAge;
    }

    public void setUserAge(Short userAge) {
        this.userAge = userAge;
    }

    public String getUserGender() {
        return this.userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserCity() {
        return this.userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    public String getUserAddress() {
        return this.userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public Set<Orders> getOrderses() {
        return this.orderses;
    }

    public void setOrderses(Set<Orders> orderses) {
        this.orderses = orderses;
    }

}
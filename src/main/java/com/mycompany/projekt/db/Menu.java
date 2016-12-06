package com.mycompany.projekt.db;
// Generated 2016-11-29 19:53:26 by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;

/**
 * Menu generated by hbm2java
 */

public class Menu implements java.io.Serializable {


    private int menuId;
    private String mealName;
    private short weight;
    private short price;
    private Set<Orders> orderses = new HashSet<Orders>(0);

    public Menu() {
    }

    public Menu(String mealName, short weight, short price) {
        this.mealName = mealName;
        this.weight = weight;
        this.price = price;
    }

    public Menu(String mealName, short weight, short price, Set<Orders> orderses) {
        this.mealName = mealName;
        this.weight = weight;
        this.price = price;
        this.orderses = orderses;
    }

    public int getMenuId() {
        return this.menuId;
    }

    public void setMenuId(int menuId) {
        this.menuId = menuId;
    }

    public String getMealName() {
        return this.mealName;
    }

    public void setMealName(String mealName) {
        this.mealName = mealName;
    }

    public short getWeight() {
        return this.weight;
    }

    public void setWeight(short weight) {
        this.weight = weight;
    }

    public short getPrice() {
        return this.price;
    }

    public void setPrice(short price) {
        this.price = price;
    }

    public Set<Orders> getOrderses() {
        return this.orderses;
    }

    public void setOrderses(Set<Orders> orderses) {
        this.orderses = orderses;
    }

}

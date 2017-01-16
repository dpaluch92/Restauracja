/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao.user;

import com.mycompany.projekt.db.HibernateUtil;
import com.mycompany.projekt.db.Menu;
import com.mycompany.projekt.db.Orders;
import com.mycompany.projekt.db.UserDb;

import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dominik
 */
public class TestDAO {

    static Session session = HibernateUtil.getSessionFactory().openSession();

    public static void insert(Orders user) {
        Transaction tx = session.beginTransaction();
        session.save(user);
        session.flush();
        tx.commit();
        session.close();
    }

    public static void main(String[] args) {

        UserDb newUser = new UserDb(20, "tiji", "tiji", "tomek", "paluch");
        session.flush();
        Menu newMenu = new Menu("jedzenie", (short) 200, (short) 200);
        session.flush();
        Orders order = new Orders(newMenu, newUser);
        insert(order);

    }
}

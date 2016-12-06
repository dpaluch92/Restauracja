/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao;

import com.mycompany.projekt.db.HibernateUtil;
import com.mycompany.projekt.db.UserDb;

import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dominik
 */
public class UserDAO {

    static Session session = null;

    public static void insert(UserDb user) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }

    public static void main(String[] args) {

        UserDb newUser = new UserDb(3, "tiji", "tiji", "tomek", "paluch");
        insert(newUser);
    }
}

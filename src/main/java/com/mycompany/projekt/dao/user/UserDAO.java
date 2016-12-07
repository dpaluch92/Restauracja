/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.projekt.dao.user;

import com.mycompany.projekt.db.HibernateUtil;
import com.mycompany.projekt.db.UserDb;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

/**
 *
 * @author Dominik
 */
public class UserDAO {
    
    public static Session session;
    
    public static UserDb getUserById(int user_id) {
        UserDb user = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            user =  (UserDb) session.get(UserDb.class,user_id);
        } catch (HibernateException e) {
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return user;
    }
    
    public static void insertUser(UserDb user) {
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }
}
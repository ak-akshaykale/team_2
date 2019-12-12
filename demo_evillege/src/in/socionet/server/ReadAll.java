package in.socionet.server;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import antlr.collections.List;

public class ReadAll {
	public static java.util.List <User> readAllUsers()
	{
		SessionFactory sessionFactory = HibernateUtil.getInstance();
		Session session = sessionFactory.openSession();
		Query<User> result_list = session.createQuery("from User");
		session.clear();
		return result_list.getResultList();
	}
}

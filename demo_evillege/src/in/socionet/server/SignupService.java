package in.socionet.server;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class SignupService {
	public static boolean newUser(User u)
	{
		try
		{
			SessionFactory sessionFactory = HibernateUtil.getInstance();
			Session session =sessionFactory.openSession();
			org.hibernate.Transaction transaction = session.beginTransaction();
			session.save(u);
			transaction.commit();
			session.close();
		}
		catch(Exception e)
		{
			return false;
		}
		
		return true;
	}

}

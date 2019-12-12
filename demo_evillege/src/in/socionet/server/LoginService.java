package in.socionet.server;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class LoginService
{
	public static User checkValidation(User u)
	{
		SessionFactory sessionFactory = HibernateUtil.getInstance();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where uname=:puname and upass=:pupass");
		query.setString("puname",u.getUname());
		query.setString("pupass",u.getUpass());
		List<User> user = query.getResultList();
		session.close();
		if(user.size()==1)
			return  user.get(0);
		return null;
	}
}

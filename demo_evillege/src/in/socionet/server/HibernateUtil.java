package in.socionet.server;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private HibernateUtil()
	{}
	public static SessionFactory getInstance()
	{
		SessionFactory sessionFactory=null;
		if(sessionFactory==null)
			sessionFactory=new Configuration().configure().buildSessionFactory();
		return sessionFactory;
		
	//	return new Configuration().configure().buildSessionFactory();
		}
}

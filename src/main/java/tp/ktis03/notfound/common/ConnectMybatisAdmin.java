package tp.ktis03.notfound.common;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;
/**
 * 
 * @author PC05
 *
 */
@Repository
public abstract class ConnectMybatisAdmin {
	
	private static SqlSessionFactory factory = null;

	protected static SqlSessionFactory getInstance() {
		if (factory == null) {
			try {
				Reader resource = Resources.getResourceAsReader("MyBatis/mybatis-config.xml");

				factory = new SqlSessionFactoryBuilder().build(resource);
				resource.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}

}

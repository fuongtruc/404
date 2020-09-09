package tp.ktis03.notfound.common;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

@Repository
public abstract class ConnectMybatis<T> {
	
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
	
	public abstract List<T> selectALL();
	public abstract T selectOne(int id);
	public abstract int insert(T param);
	public abstract int update(T param);
	public abstract int delete(int id);
	
}

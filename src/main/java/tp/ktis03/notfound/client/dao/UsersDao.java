package tp.ktis03.notfound.client.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.User;

@Repository
public class UsersDao extends ConnectMybatis<User>{
	
	public List<User> selectALL(){
		return null;
	}
	public  User selectOne(int id) {
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectOne("Mappers.UserMapper.selectOne", id);
	}
	public  User selectOneFB(String id) {
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectOne("Mappers.UserMapper.selectOneFB", id);
	}
	public  User selectOneName(String name) {
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectOne("Mappers.UserMapper.selectOneName", name);
	}
	public  int insert(User param) {
		return 0;
	}
	public  int update(User param) {
		return 0;
	}
	public  int delete(int id) {
		return 0;
	}
}

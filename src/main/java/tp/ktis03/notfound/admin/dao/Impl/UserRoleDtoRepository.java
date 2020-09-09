package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.admin.dao.IUserRoleDtoDao;
import tp.ktis03.notfound.common.ConnectMybatisAdmin;
import tp.ktis03.notfound.dto.UserRoleDto;
/**
 * 
 * @author PC05
 *
 */
@Repository
public class UserRoleDtoRepository extends ConnectMybatisAdmin implements IUserRoleDtoDao {



	@Override
	public List<UserRoleDto> findRole() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.UserRoleDtoMapper.findRole");
	}
	


}

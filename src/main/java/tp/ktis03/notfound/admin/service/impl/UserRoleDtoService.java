package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.IUserRoleDtoDao;
import tp.ktis03.notfound.admin.service.IUserRoleDtoService;
import tp.ktis03.notfound.dto.UserRoleDto;

@Service
public class UserRoleDtoService implements IUserRoleDtoService  {
	
	@Autowired
	IUserRoleDtoDao _UserRoleDtoService;

	@Override
	public List<UserRoleDto> findRole() {
		return _UserRoleDtoService.findRole();
	}
	
	
}

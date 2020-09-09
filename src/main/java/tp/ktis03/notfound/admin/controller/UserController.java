package tp.ktis03.notfound.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.admin.service.IRoleService;
import tp.ktis03.notfound.admin.service.IUserRoleDtoService;
import tp.ktis03.notfound.admin.service.IUserRoleService;
import tp.ktis03.notfound.admin.service.IUserService;
import tp.ktis03.notfound.dto.UserRoleDto;
import tp.ktis03.notfound.vo.User;
import tp.ktis03.notfound.vo.UserRole;

/**
 * @author PC05
 */

@Controller
@RequestMapping(value = "/admin/user")
public class UserController {
	@Autowired
	IUserService _UserService;

	@Autowired
	IRoleService _RoleService;

	@Autowired
	IUserRoleService _UserRoleService;

	@Autowired
	IUserRoleDtoService _UserRoleDtoService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getListUser(Model model) {
		List<UserRoleDto> listUser = _UserRoleDtoService.findRole();
		model.addAttribute("listUser", listUser);
		return "admin/user/list-user";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getFormAdd(Model model) {
		model.addAttribute("user", new User());
		return "admin/user/form-add";
	}

	@RequestMapping(value = "/add/insert", method = RequestMethod.POST)
	public String postFormAdd(Model model, @ModelAttribute("user") User user) {
		user.setActive(true);
		if (_UserService.insertReturn(user) == 1) {
			UserRole userRole = new UserRole();
			User getUser = _UserService.findByName(user.getUsername());
			if (getUser.getUsername() != null) {
				userRole.setUser_id(getUser.getUser_id());
				userRole.setRole_id(2);
				if (_UserRoleService.insertReturn(userRole) == 1) {
					model.addAttribute("msg", "insert new user success!");
				} else {
					model.addAttribute("msg", "insert new user fails!");
				}
			}

		}

		return "admin/user/form-add";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String getFormUpdate(Model model, @PathVariable("id") Integer id) {
		User getUser = _UserService.findOne(id);
		if (getUser != null) {
			model.addAttribute("getUser", getUser);
		} else {
			System.out.println("user not exist!");
		}

		return "admin/user/form-update";
	}

	@RequestMapping(value = "/update/updateUser", method = RequestMethod.POST)
	public String postFormUpdate(Model model, @ModelAttribute("getUser") User user) {
		if (_UserService.updateReturn(user) == 1) {
			model.addAttribute("msg", "update user success!");
			return "redirect:/admin/user/list";
		} else {
			model.addAttribute("msg", "update user fails!");
			return "admin/user/form-update";
		}
	}

}

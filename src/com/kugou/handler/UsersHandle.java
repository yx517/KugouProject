package com.kugou.handler;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kugou.pojo.Users;
import com.kugou.service.UsersService;
import com.kugou.util.PackContents;


@Controller
@RequestMapping("/users")
public class UsersHandle
{
	@Resource
	private UsersService usersService;
	@RequestMapping("/selectAllUsers")
	public String selectAllUsers(Map<String, Object>map)
	{
		List<Users>userss=usersService.selectAllUsers();
		map.put("userss", userss);
		return PackContents.INDEX_PAGE;
	}
}


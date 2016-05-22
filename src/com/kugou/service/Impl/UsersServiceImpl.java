package com.kugou.service.Impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kugou.dao.UsersDao;
import com.kugou.pojo.Users;
import com.kugou.service.UsersService;

@Service("usersService")
public class UsersServiceImpl implements UsersService
{

	@Resource
	private UsersDao usersDao;

	@Override
	public List<Users> selectAllUsers()
	{
		return usersDao.selectAllUsers();
	}

}

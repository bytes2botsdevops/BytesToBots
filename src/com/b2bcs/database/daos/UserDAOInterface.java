package com.b2bcs.database.daos;

import java.util.ArrayList;

import com.b2bcs.beans.UserBean;
import com.b2bcs.beans.UserLoginBean;

public interface UserDAOInterface 
{
	public boolean insertUser(UserBean userBean);
	public boolean checkUserLogin(UserLoginBean userLoginBean) ;
	public UserBean getUserBean(String key);
	public ArrayList<UserBean> getAllUsersList();
}

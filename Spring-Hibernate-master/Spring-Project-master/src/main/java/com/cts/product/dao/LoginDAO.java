package com.cts.product.dao;

import com.cts.product.bean.Login;
public interface LoginDAO {
	
	public int authenticateUser(Login login);
	
}

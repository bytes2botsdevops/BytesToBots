package com.b2bcs.database.daos;

import java.util.ArrayList;

import com.b2bcs.beans.CompanyBean;

public class CompanyDAO implements CompanyDAOInterface
{

	@Override
	public boolean insertCompany(CompanyBean companyBean) 
	{

		return false;
	}

	@Override
	public ArrayList<CompanyBean> listAllCompany() 
	{

		return null;
	}

	@Override
	public ArrayList<CompanyBean> listAllCompanyByStream(String businessStream) 
	{

		return null;
	}

	@Override
	public boolean addCompanyLogo() 
	{

		return false;
	}

}

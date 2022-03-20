package com.b2bcs.database.daos;

import java.util.ArrayList;

import com.b2bcs.beans.CompanyBean;

public interface CompanyDAOInterface 
{
	public boolean insertCompany(CompanyBean companyBean);
	public ArrayList<CompanyBean> listAllCompany();
	public ArrayList<CompanyBean> listAllCompanyByStream(String businessStream);
	public boolean addCompanyLogo();

}

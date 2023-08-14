package com.toss.account;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("AccountService")
public class AccountService {

	@Autowired
	private AccountDAO accountDAO;

	@Autowired
	private Util util;
	
	public Map<String, Object> MnameMphone(String mphone) {
		return accountDAO.MnameMphone(mphone);
	}

	public List<Map<String, Object>> bankList(String mphone) {
		return accountDAO.bankList(mphone);
	}

	 public int totalBalance(List<Map<String, Object>> accountList) {
	        int totalBalance = 0;
	        for (Map<String, Object> account : accountList) {
	        	String abalanceStr = (String) account.get("abalance");
	        	int abalance = Integer.parseInt(abalanceStr);
	        	totalBalance += abalance;
	        }
	        return totalBalance;
	    }

/*
	public AccountDTO open3(AccountDTO dto) {
		return null;
	}
*/
	//public List<Map<String, Object>> members(Map<String, Object> map) {
		//return accountDAO.members(map); 
	//}










}

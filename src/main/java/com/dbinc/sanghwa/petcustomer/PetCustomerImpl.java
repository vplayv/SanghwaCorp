package com.dbinc.sanghwa.petcustomer;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class PetCustomerImpl implements PetCustomerDAO {

	@Inject
	private SqlSession session;
	private static final String NameSpace = "petCustomerMapper.";

	@Override
	public int register(PetCustomerVO user) {
		int Id_Check_Result = userCheck(user);
		if (Id_Check_Result != 0)
			return Id_Check_Result;

		try {
			session.insert(NameSpace + "register", user);
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		}
	}

	public int userCheck(PetCustomerVO user) {
		log.info(user.toString());
		try {
			return session.selectOne(NameSpace + "userCheck", user);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public PetCustomerVO vaildUser(PetCustomerLogin login) {
		return null;
	}

	@Override
	public int login(PetCustomerVO user, HttpSession httpsession) {
		int Id_Search_Result = -1;
		try {
			log.info(user.toString());
			Id_Search_Result = session.selectOne(NameSpace + "login", user);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

		if (Id_Search_Result != 1)
			return Id_Search_Result;

		try {
			PetCustomerVO userInfo = session.selectOne(NameSpace + "userInfo", user);
			log.info(userInfo.toString());
			httpsession.setAttribute("user", userInfo);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		}
	}

	@Override
	public int logout(HttpSession httpsession) {
		httpsession.removeAttribute("user"); // httpsession.setAttribute("user", null);
		return 0;
	}

}

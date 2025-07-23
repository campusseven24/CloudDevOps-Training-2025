package interface2.domain.userinfo.dao.mysql;

import interface2.domain.userinfo.UserInfo;
import interface2.domain.userinfo.dao.UserInfoDao;

public class UserInfoMySqlDao implements UserInfoDao {

	@Override
	public void insertUserInfo(UserInfo userInfo) {
		System.out.println("insert into MYSQL DB userid = " + userInfo.getUserId());
		
	}

	@Override
	public void updateUserInfo(UserInfo userInfo) {
		System.out.println("update into MYSQL DB userid = " + userInfo.getUserId());
		
	}

	@Override
	public void deleteUserInfo(UserInfo userInfo) {
		System.out.println("delete into MYSQL DB userid = " + userInfo.getUserId());
		
	}

}

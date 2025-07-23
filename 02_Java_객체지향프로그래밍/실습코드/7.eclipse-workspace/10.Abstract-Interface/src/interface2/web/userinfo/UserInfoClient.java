package interface2.web.userinfo;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import interface2.domain.userinfo.UserInfo;
import interface2.domain.userinfo.dao.UserInfoDao;
import interface2.domain.userinfo.dao.mysql.UserInfoMySqlDao;
import interface2.domain.userinfo.dao.oracle.UserInfoOracleDao;

public class UserInfoClient {

	public static void main(String[] args) throws IOException {
		InputStream is = UserInfoClient.class.getClassLoader()
							.getResourceAsStream("db.properties");
		if(is == null) {
			System.out.println("db.properties 파일을 찾을수 없습니다.");
			return;
		}
		
		Properties prop = new Properties();
		prop.load(is);
		
		String dbType = prop.getProperty("DBTYPE");
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId("choogang");
		userInfo.setPasswd("!@#$%");
		userInfo.setUserName("이순신");
		
		UserInfoDao userInfoDao = null;
		
		if(dbType.equals("ORACLE")) {
			userInfoDao = new UserInfoOracleDao();
		} else if(dbType.equals("MYSQL")) {
			userInfoDao = new UserInfoMySqlDao();
		}
		
		userInfoDao.insertUserInfo(userInfo);
		userInfoDao.updateUserInfo(userInfo);
		userInfoDao.deleteUserInfo(userInfo);
	}
}


















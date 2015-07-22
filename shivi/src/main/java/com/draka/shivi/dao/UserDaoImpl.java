package com.draka.shivi.dao;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
//import org.springframework.stereotype.Service;



import com.draka.shivi.model.User;



@Repository
public class UserDaoImpl implements UserDao {

	
	@Autowired
	private DataSource dataSource;
	    
	@Override
	public List<User> list() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		// implementation details goes here...
		String sql = "SELECT * FROM users";
	    List<User> listContact = jdbcTemplate.query(sql, new RowMapper<User>() {
	 
	        @Override
	        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	User user = new User();
                user.setFirst_name(rs.getString("First_name"));
                user.setLast_name(rs.getString("Last_name"));
                user.setSn_id(rs.getString("sn_id"));
                user.setBirthday(rs.getString("birthday"));
                user.setGender(rs.getString("gender"));
                user.setEmail(rs.getString("email"));
                
	            return user;
	        }
	 
	    });
	 
	    return listContact;
	}

	
	
	@Override
	public void save(User user) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		// implementation details goes here...
		
		
			// insert
			String sql1 = "INSERT INTO users (u_id,sn_id,first_name,last_name,email,gender,birthday,password,image)"
						+ " VALUES (?, ?, ?, ?,?,?,?,?,?)";
			String sql2 = "INSERT INTO user_roles (email,ROLE)"
					+ " VALUES (?, ?)";
			jdbcTemplate.update(sql1,"1011987",user.getSn_id(), user.getFirst_name(),user.getLast_name(),user.getEmail(),user.getGender(),
					user.getBirthday(),user.getPassword(),user.getImage());
			jdbcTemplate.update(sql2, user.getEmail(),user.getRole());
		
			
			
	}

	
	@Override
	public User get(String emailId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		// implementation details goes here...
		String sql = "SELECT * FROM users WHERE email = '" + emailId + "'";
	    return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {
	 
	        @Override
	        public User extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	            if (rs.next()) {
	                User user = new User();
	                user.setFirst_name(rs.getString("First_name"));
	                user.setLast_name(rs.getString("Last_name"));
	                user.setSn_id(rs.getString("sn_id"));
	                user.setBirthday(rs.getString("birthday"));
	                user.setGender(rs.getString("gender"));
	                user.setEmail(rs.getString("email"));
	                
	                return user;
	            }
	 
	            return null;
	        }
	 
	    });
	}
	
	

}
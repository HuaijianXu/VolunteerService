package src.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import src.entity.Course;
import src.util.DBUtil;

public class CourseDao {

	public boolean add(Course course) {
		String sql = "insert into lianxi(name, sex, classroom,time,age,mianmao,fuwu) values('" + course.getName() + "','" + course.getSex() + "','" + course.getClassroom() +"','" + course.getTime() + "','" + course.getAge()  + "','" + course.getMianmao() + "','" + course.getFuwu() + "')";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;
		try {
			state = conn.createStatement();
			a=state.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}		
		if (a > 0) {
			f = true;
		}
		return f;
	}

	public boolean delete (int id) {
		boolean f = false;
		String sql = "delete from lianxi where id='" + id + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		int a = 0;
		
		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}	
		if (a > 0) {
			f = true;
		}
		return f;
	}

	public boolean update(Course course) {
		String sql = "update lianxi set name='" + course.getName() + "', sex='" + course.getSex() + "', classroom='" + course.getClassroom()+ "', time='" + course.getTime()+ "', age='" + course.getAge()+ "', mianmao='" + course.getMianmao()+ "', fuwu='" + course.getFuwu()
			+ "' where id='" + course.getId() + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		boolean f = false;
		int a = 0;
		try {
			state = conn.createStatement();
			a = state.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(state, conn);
		}	
		if (a > 0) {
			f = true;
		}
		return f;
	}
	
	public boolean name(String name) {
		boolean flag = false;
		String sql = "select name from lianxi where name = '" + name + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;	
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		return flag;
	}
	
	public Course getCourseById(int id) {
		String sql = "select * from lianxi where id ='" + id + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Course course = null;	
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				String name = rs.getString("name");
				String sex = rs.getString("sex");
				String classroom = rs.getString("classroom");
				String time = rs.getString("time");
				String age = rs.getString("age");
				String mianmao = rs.getString("mianmao");
				String fuwu = rs.getString("fuwu");			
				course = new Course(id, name, sex, classroom, time, age, mianmao, fuwu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}		
		return course;
	}

	public Course getCourseByName(String name) {
		String sql = "select * from lianxi where name ='" + name + "'";
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		Course course = null;
		
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String sex = rs.getString("sex");
				String classroom = rs.getString("classroom");
				String time = rs.getString("time");
				String age = rs.getString("age");
				String mianmao = rs.getString("mianmao");
				String fuwu = rs.getString("fuwu");
			course = new Course(id, name, sex, classroom, time, age, mianmao, fuwu);
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}		
		return course;
	}

	public List<Course> search(String name, String sex, String classroom,String time,String age,String mianmao,String fuwu) {
		String sql = "select * from lianxi where ";
		if (name != "") {
			sql += "name like '%" + name + "%'";
		}
		if (sex != "") {
			sql += "sex like '%" + sex + "%'";
		}
		if (classroom != "") {
			sql += "classroom like '%" + classroom + "%'";
		}
		if (time!= "") {
			sql += "time like '%" + time + "%'";
		}
		if (age!= "") {
			sql += "age like '%" + age + "%'";
		}
		if (mianmao!= "") {
			sql += "mianmao like '%" + mianmao + "%'";
		}
		if (fuwu!= "") {
			sql += "fuwu like '%" + fuwu + "%'";
		}
		List<Course> list = new ArrayList<>();
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Course bean = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				String name2 = rs.getString("name");
				String sex2 = rs.getString("sex");
				String classroom2 = rs.getString("classroom");
				String time2 = rs.getString("time");
				String age2 = rs.getString("age");
				String mianmao2 = rs.getString("mianmao");
				String fuwu2 = rs.getString("fuwu");
				bean = new Course(id, name2, sex2,classroom2, time2, age2, mianmao2, fuwu2);
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}	
		return list;
	}

	public List<Course> list() {
		String sql = "select * from lianxi";
		List<Course> list = new ArrayList<>();
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			Course bean = null;
			while (rs.next()) {
				int id = rs.getInt("id");
				String name2 = rs.getString("name");
				String sex2 = rs.getString("sex");
				String classroom2 = rs.getString("classroom");
				String time2 = rs.getString("time");
				String age2 = rs.getString("age");
				String mianmao2 = rs.getString("mianmao");
				String fuwu2 = rs.getString("fuwu");
				bean = new Course(id, name2, sex2, classroom2, time2, age2, mianmao2, fuwu2);
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}	
		return list;
	}
}
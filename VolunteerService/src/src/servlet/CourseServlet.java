package src.servlet;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.entity.Course;
import src.dao.CourseDao;
@WebServlet("/CourseServlet")
public class CourseServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	 public CourseServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	CourseDao dao = new CourseDao();

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) {
			add(req, resp);
		} else if ("del".equals(method)) {
			del(req, resp);
		} else if ("update".equals(method)) {
			update(req, resp);
		} else if ("search".equals(method)) {
			search(req, resp);
		} else if ("getCourseById".equals(method)) {
			getCourseById(req, resp);
		} else if ("getcoursebyName".equals(method)) {
			getCourseByName(req, resp);
		} else if ("list".equals(method)) {
			list(req, resp);
		}
		else if ("searchlist".equals(method)) {
			searchlist(req, resp);
		}
	}

	private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String sex = req.getParameter("sex");
		String classroom = req.getParameter("classroom");
		Date currentTime=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = formatter.format(currentTime);
		String age = req.getParameter("age");
		String mianmao = req.getParameter("mianmao");
		String fuwu = req.getParameter("fuwu");
		Course course = new Course(name, sex, classroom, time,age,mianmao,fuwu);
		Course course1 = dao.getCourseByName(name);
		if(course1==null) {
			dao.add(course);
			req.setAttribute("message", "注册成功");
			req.getRequestDispatcher("add.jsp").forward(req,resp);
		} else {
			req.setAttribute("message", "用户名已注册");
			req.getRequestDispatcher("add.jsp").forward(req,resp);
		}
	}

	private void list(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		List<Course> courses = dao.list();
		req.setAttribute("courses", courses);
		req.getRequestDispatcher("list.jsp").forward(req,resp);
	}
	private void searchlist(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		List<Course> courses = dao.list();
		req.setAttribute("courses", courses);
		req.getRequestDispatcher("searchlist.jsp").forward(req,resp);
	}

	private void getCourseById(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("id"));
		Course course = dao.getCourseById(id);
		req.setAttribute("course", course);
		req.getRequestDispatcher("detail2.jsp").forward(req,resp);
	}

	private void getCourseByName(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		Course course = dao.getCourseByName(name);
		if(course == null) {
			req.setAttribute("message", "未查询到该用户");
			req.getRequestDispatcher("del.jsp").forward(req,resp);
		} else {
			req.setAttribute("course", course);
			req.getRequestDispatcher("detail.jsp").forward(req,resp);
		}
	}

	private void del(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("id"));
		dao.delete(id);
		req.setAttribute("message", "删除成功");
		req.getRequestDispatcher("del.jsp").forward(req,resp);
	}

	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String sex = req.getParameter("sex");
		String classroom = req.getParameter("classroom");
		String time = req.getParameter("time");
		String age = req.getParameter("age");
		String mianmao = req.getParameter("mianmao");
		String fuwu = req.getParameter("fuwu");
		Course course = new Course(id,name, sex, classroom, time,age,mianmao,fuwu);
		
		dao.update(course);
		req.setAttribute("message", "修改成功");
		req.getRequestDispatcher("CourseServlet?method=list").forward(req,resp);
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String sex = req.getParameter("sex");
		String classroom = req.getParameter("classroom");
		String time = req.getParameter("time");
		String age = req.getParameter("age");
		String mianmao = req.getParameter("mianmao");
		String fuwu = req.getParameter("fuwu");
		List<Course> courses = dao.search(name, sex, classroom, time,age,mianmao,fuwu);
		Course course1 = dao.getCourseByName(name);
		/*if(course1 == null) {
			req.setAttribute("message", "未查询到此人");
			req.getRequestDispatcher("search.jsp").forward(req,resp);
		} else {
			req.setAttribute("courses", courses);
			req.getRequestDispatcher("searchlist.jsp").forward(req,resp);
		}*/
		req.setAttribute("courses", courses);
		req.getRequestDispatcher("searchlist.jsp").forward(req,resp);
	}
}
package src.entity;

public class Course {

	private int id;
	private String name;
	private String sex;
	private String classroom;
	private String time;
	private String age;
	private String mianmao;
	private String fuwu;

	public Course() {}
	
	public Course(int id, String name, String sex, String classroom,String time,String age,String mianmao,String fuwu) {
		this.setId(id);
		this.setName(name);
		this.setSex(sex);
		this.setClassroom(classroom);
		this.setTime(time);
		this.setAge(age);
		this.setMianmao(mianmao);
		this.setFuwu(fuwu);
	}
	
	public Course(String name, String sex, String classroom,String time,String age,String mianmao,String fuwu) {
		this.setName(name);
		this.setSex(sex);
		this.setClassroom(classroom);
		this.setTime(time);
		this.setAge(age);
		this.setMianmao(mianmao);
		this.setFuwu(fuwu);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getClassroom() {
		return classroom;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	public String getMianmao() {
		return mianmao;
	}

	public void setMianmao(String mianmao) {
		this.mianmao = mianmao;
	}
	public String getFuwu() {
		return fuwu;
	}

	public void setFuwu(String fuwu) {
		this.fuwu = fuwu;
	}
}
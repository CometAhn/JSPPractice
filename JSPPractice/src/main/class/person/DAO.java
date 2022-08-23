package person;

import java.util.ArrayList;

public class DAO {

	static private ArrayList<DTO> person = new ArrayList<DTO>();
	static private DAO dao = new DAO();

	public static DAO getInstance() {
		return dao;
	}

	public void adddata(DTO tmp) {
		person.add(tmp);
	}
	
	public ArrayList<DTO> getAll(){
		return person;
	}
}

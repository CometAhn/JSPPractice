/**
 * 
 */
package person;

import java.util.ArrayList;

public class DAO {
	/* 
	 * 인스턴스 생성
	 * static으로 유일하게 만듦.
	 * private이기 때문에 getter가 필요함.
	 */
	static private ArrayList<DTO> person = new ArrayList<DTO>();
	static private DAO dao = new DAO();

	// DAO dao를 불러오기위해 사용.
	public static DAO getInstance() {
		return dao;
	}

	// person에 DTO tmp를 추가하기 위해 사용.
	public void adddata(DTO tmp) {
		person.add(tmp);
	}

	// ArrayList<DTO>에 person을 추가하기 위해 사용.
	public ArrayList<DTO> getAll() {
		return person;
	}
}

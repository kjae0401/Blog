package Toy.Blog.DAO;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{
	public boolean login(Map<String, String> cmap) {
		// TODO Auto-generated method stub
		boolean any = ((Integer)selectOne("Toy.login", cmap) != 0);
		
		return any;
	}
}
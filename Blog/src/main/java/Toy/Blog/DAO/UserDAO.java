package Toy.Blog.DAO;

import java.util.Map;

import org.springframework.stereotype.Repository;

import Toy.Blog.DTO.UserDTO;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{
	public boolean login(UserDTO userDTO) {
		// TODO Auto-generated method stub
		boolean any = ((Integer)selectOne("Toy.login", userDTO) != 0);
		
		return any;
	}
}
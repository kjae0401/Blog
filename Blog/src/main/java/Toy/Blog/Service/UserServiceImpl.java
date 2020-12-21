package Toy.Blog.Service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Toy.Blog.DAO.UserDAO;
import Toy.Blog.DTO.UserDTO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public boolean login(UserDTO userDTO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.login(userDTO);
	}
}
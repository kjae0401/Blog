package Toy.Blog.Service;

import Toy.Blog.DTO.UserDTO;

public interface UserService {
	boolean login(UserDTO userDTO) throws Exception;
}
package net.guides.springboot.todomanagement.service;
import net.guides.springboot.todomanagement.model.Account;
import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.model.User;
import net.guides.springboot.todomanagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class UserService {


	@Autowired
	private UserRepository userRepository;
	public void saveUser(User user)
	{
		userRepository.save(user);
	}
	public List<User> getUsers()
	{
		return userRepository.findAll();
	}


	public void updateStatus(long id, String status) {
		Optional<User> user = userRepository.findById(id);
		if (user.isPresent()) {
			User user1 = user.get();
			user1.setStatus(status);
			userRepository.save(user1);
		}
	}

	public void deleteUser(long id) {
		Optional<User> user = userRepository.findById(id);
		if (user.isPresent()) {
			User user1 = user.get();
			userRepository.delete(user1);
		}
	}



}
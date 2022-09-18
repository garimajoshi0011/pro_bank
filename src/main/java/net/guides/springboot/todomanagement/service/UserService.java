package net.guides.springboot.todomanagement.service;
import net.guides.springboot.todomanagement.model.*;
import net.guides.springboot.todomanagement.repository.UserRepository;
import net.guides.springboot.todomanagement.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {

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

	public User getUserById(long id) {
		Optional<User> user = userRepository.findById(id);
		User user1 = user.get();
		return user1;
	}

	@Override
	public MyUserDetail loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("username came "+username);
		List<User> users = userRepository.findUserByUserName(username);
		MyUserDetail myUserDetail = null;
		if(!users.isEmpty()){
			User user = users.get(0);
			myUserDetail = new MyUserDetail(username, user.getPassword(), Status.APPROVED.equals(user.getStatus()));
		}else{
			myUserDetail = new MyUserDetail(username, "admin", true);
		}
		System.out.println(myUserDetail);
		return myUserDetail;
	}
}
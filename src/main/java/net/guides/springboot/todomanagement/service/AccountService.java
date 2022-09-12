package net.guides.springboot.todomanagement.service;

import net.guides.springboot.todomanagement.model.Account;
import net.guides.springboot.todomanagement.model.Complaint;
import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;

	public void saveAccount(Account account)
	{
		accountRepository.save(account);
	}

	public List<Account> getAccounts() {
		return accountRepository.findAll();
	}


	public void updateStatus(long id, String status) {
		Optional<Account> account = accountRepository.findById(id);
		if (account.isPresent()) {
			Account account1 = account.get();
			account1.setStatus(status);
			accountRepository.save(account1);
		}
	}

	public void deleteAccount(long id) {
		Optional<Account> account = accountRepository.findById(id);
		if (account.isPresent()) {
			Account account1 = account.get();
			accountRepository.delete(account1);
		}
	}

	public Account getAccountById(long id) {
		Optional<Account> account = accountRepository.findById(id);
		Account account1 = account.get();
		return account1;
	}
}
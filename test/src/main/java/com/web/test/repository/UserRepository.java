package com.web.test.repository;

import org.springframework.data.repository.CrudRepository;

import com.web.test.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}

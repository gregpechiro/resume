package com.gregpechiro.resume.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query("SELECT COUNT(u.id) FROM User u WHERE u.id<>:id AND u.username=:username")
	int canUpdate(@Param("id") Long id, @Param("username") String username);

	User findByUsername(@Param("username") String username);

	@Query("SELECT u.password FROM User u WHERE u.id=:id")
	String findExistingPassword(@Param("id") Long id);
}

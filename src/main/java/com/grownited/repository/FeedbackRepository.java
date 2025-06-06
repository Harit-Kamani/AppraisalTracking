package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.FeedbackEntity;

@Repository
public interface FeedbackRepository extends JpaRepository<FeedbackEntity, Integer>{

	 List<FeedbackEntity> findByEmployeeId(Integer employeeId);

	 List<FeedbackEntity> findByManagerId(Integer managerId);
	 
	 @Query(value= "SELECT f.type, COUNT(*) FROM feedback f GROUP BY f.type", nativeQuery = true)
	 List<Object[]> countFeedbackByType();
	 
}

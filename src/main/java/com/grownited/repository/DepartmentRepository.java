package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository; 

import com.grownited.entity.DepartmentEntity;


public interface DepartmentRepository extends JpaRepository<DepartmentEntity, Integer>{

}

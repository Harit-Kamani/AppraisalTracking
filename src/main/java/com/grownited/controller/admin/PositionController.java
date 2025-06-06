package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.PositionEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.PositionRepository;

@Controller
public class PositionController {
	
	@Autowired
	DepartmentRepository repositoryDepartment;
	
	@Autowired
	PositionRepository repositoryPosition;
	
	@GetMapping("newPosition")
	public String newPositon(Model model) {
		return "Department";
	}
	
	@PostMapping("saveposition")
	public String savePosition(PositionEntity entityPosition) {
		repositoryPosition.save(entityPosition);
		return "redirect:/adminmanagedepartment";
	}
	
}

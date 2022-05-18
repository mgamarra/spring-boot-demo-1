package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Hello;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/api")
public class HelloController {

	private static final String ID = "id";

	@ApiOperation(value = "getGreeting", nickname = "getGreeting")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "Server error"),
			@ApiResponse(code = 200, message = "Successful retrieval", response = Hello.class, responseContainer = "List") })
	@RequestMapping(method = RequestMethod.GET, value = "/hello/{id}")
	public List<Hello> sayHello(
			@ApiParam(value = "testId", required = true, defaultValue = "111") @PathVariable(ID) final int institutuionId) {
		ArrayList<Hello> arrayList = new ArrayList<>();
		arrayList.add(new Hello());
		return arrayList;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/hello1/{id}")
	public List<Hello> sayHello1(
			@ApiParam(value = "testId", required = true, defaultValue = "111") @PathVariable(ID) final int institutuionId) {
		ArrayList<Hello> arrayList = new ArrayList<>();
		arrayList.add(new Hello());
		return arrayList;
	}

	@RequestMapping(method = RequestMethod.GET, value = "memstress")
	public ResponseEntity<String> memstress() {
		for (int i = 0; i < 1000000000; i++) {
			for (int j = 0; j < 1000000000; j++) {
				new Object();
			}
		}
		return ResponseEntity.ok("sucess");
	}

}

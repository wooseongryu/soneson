package com.itwillbs.soneson.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

//예외 처리 방법 2)
@ControllerAdvice
public class MyExceptionHandler {
	@ExceptionHandler(Exception.class)
	public String myExceptionHandler() {
		return "error/error_404";
	}
}

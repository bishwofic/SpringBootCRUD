package com.crud.calculator;

import org.springframework.stereotype.Component;

@Component
public class SciCalc {
	
	public int add(int a, int b) {
		return a*b;
	}
	public int calculate(int a, int b) {
		int c=add(a,b);
		return c;
	}
	
	
}

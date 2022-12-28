package com.crud.calculator;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;




@SpringBootTest
public class SciCalcTest {
	
//	@Autowired
//	SciCalc calc;
	
	
	
	@Test
	public void addTest() {
		
		System.out.println("gotcha");
		SciCalc calc=new SciCalc();
		assertEquals(4, calc.add(2, 2));
	}
	
	
}

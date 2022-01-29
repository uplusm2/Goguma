package com.test.main;

public class Test {
	
	public static void main(String[] args) {
		int a = (int)Math.round((double)5.45960648);
		
		String tmp = String.format("%f", 0.85233252532255);
		double interval = Math.round(Double.parseDouble(tmp));
		System.out.println(interval);
		String temp = String.format("%d", Math.round(interval));
		System.out.println(temp);
	}

}

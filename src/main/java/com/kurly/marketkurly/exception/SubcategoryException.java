package com.kurly.marketkurly.exception;

public class SubcategoryException extends RuntimeException{
	
	public SubcategoryException(String msg) {
		super(msg);
	}
	
	public SubcategoryException(Throwable e) {
		super(e);
	}
	
	public SubcategoryException(String msg, Throwable e) {
		super(msg, e);
	}

}

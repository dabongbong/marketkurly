package com.kurly.marketkurly.exception;

public class CategoryImgException extends RuntimeException{
	
	public CategoryImgException(String msg) {
		super(msg);
	}
	
	public CategoryImgException(Throwable e) {
		super(e);
	}
	
	public CategoryImgException(String msg, Throwable e) {
		super(msg, e);
	}

}

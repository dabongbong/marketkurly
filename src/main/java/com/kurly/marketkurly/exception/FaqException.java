package com.kurly.marketkurly.exception;

public class FaqException extends RuntimeException{
	
	public FaqException(String msg) {
		super(msg);
	}
	
	public FaqException(Throwable e) {
		super(e);
	}
	
	public FaqException(String msg, Throwable e) {
		super(msg, e);
	}

}

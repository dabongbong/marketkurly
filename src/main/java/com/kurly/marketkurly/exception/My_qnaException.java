package com.kurly.marketkurly.exception;

public class My_qnaException extends RuntimeException{
	
	public My_qnaException(String msg) {
		super(msg);
	}
	public My_qnaException(Throwable e) {
		super(e);
	}
	public My_qnaException(String msg, Throwable e) {
		super(msg, e);
	}
	
}
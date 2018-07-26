package com.coviam.stackoverflow.model;

public class PostQuestionModel {
	
	public String getInputSubject() {
		return inputSubject;
	}

	public void setInputSubject(String inputSubject) {
		this.inputSubject = inputSubject;
	}

	private String inputSubject;
	private String postMessage=null;


	public String getPostMessage() {
		return postMessage;
	}

	public void setPostMessage(String postMessage) {
		this.postMessage = postMessage;
	}

	public PostQuestionModel(String inputPost,String inputSubject,String postMessage) {
		super();
		this.inputPost = inputPost;
		this.inputSubject=inputSubject;
		this.postMessage= postMessage;
	}
	
	public PostQuestionModel() {
		super();
		this.inputPost = inputPost;
		this.inputSubject=inputSubject;
		this.postMessage= postMessage;
	}
 
	private String inputPost;

	public String getInputPost() {
		return inputPost;
	}

	public void setInputPost(String inputPost) {
		this.inputPost = inputPost;
	}

}

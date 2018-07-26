package com.coviam.stackoverflow.model;

import java.awt.List;

public class QuestionAndAnswerModel {
	
	
	public QuestionAndAnswerModel()
	{
		

	}
	
	private String inputSubject;
	public String getInputSubject() {
		return inputSubject;
	}


	public void setInputSubject(String inputSubject) {
		this.inputSubject = inputSubject;
	}


	public String getInputQuestion() {
		return inputQuestion;
	}

	public void setInputQuestion(String inputQuestion) {
		this.inputQuestion = inputQuestion;
	}


	private String inputQuestion;
	private java.util.List<GetAnswerModel> inputAnswers;

	public java.util.List<GetAnswerModel> getInputAnswers() {
		return inputAnswers;
	}


	public void setInputAnswers(java.util.List<GetAnswerModel> inputAnswers) {
		this.inputAnswers = inputAnswers;
	}


	

}

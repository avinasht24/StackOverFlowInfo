package com.coviam.stackoverflow;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.coviam.stackoverflow.database.DBOperations;
import com.coviam.stackoverflow.model.PostAnswerModel;
import com.coviam.stackoverflow.model.PostQuestionModel;
import com.coviam.stackoverflow.model.QuestionAndAnswerModel;

@RestController
public class StackOverFlowController {
	
	@Autowired
	DBOperations dbOperations;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView showForm()
	{
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswers();
		System.out.println(questionAndAnswersModel);
		ModelAndView model= new ModelAndView("index");
		model.addObject("getAllQuestions",questionAndAnswersModel);
		return model;
		
		//return new ModelAndView("index");
	}
	
	
	
	@RequestMapping(value="/QuestionPostPage", method=RequestMethod.GET)
	public ModelAndView showQuestionPostPage()
	{
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswers();
		System.out.println(questionAndAnswersModel);
		ModelAndView model= new ModelAndView("QuestionPostPage");
		return model;
		
		//return new ModelAndView("index");
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/postInput", method=RequestMethod.POST)
	public ModelAndView postQuestions(@ModelAttribute("postQuestionDetails")PostQuestionModel postQuestion)
	{
		
		//System.out.println("from input api: "+inputPost);
		
		String postMessage=dbOperations.insertPostQuestions(postQuestion.getInputPost(), postQuestion.getInputSubject());
		postQuestion.setPostMessage(postMessage);
		
		return new ModelAndView("QuestionPostPage");
		
	}
	
	@ResponseBody
	@RequestMapping(value="/postAnswers", method=RequestMethod.POST)
	public ModelAndView postAnswers(@ModelAttribute("postAnswerDetails")PostAnswerModel postAnswer)
	{
		
		//System.out.println("from input api: "+inputPost);
		
		String postMessage=dbOperations.insertPostAnswers(postAnswer.getInputPost(),postAnswer.getInputSubject());
		postAnswer.setPostMessage(postMessage);
		//showForm();
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswers();
		System.out.println(questionAndAnswersModel);
		ModelAndView model= new ModelAndView("index");
		model.addObject("getAllQuestions",questionAndAnswersModel);
		return model;		
	}
	

	@ResponseBody
	@RequestMapping(value="/postInputAPI", method=RequestMethod.GET,produces={MediaType.APPLICATION_JSON_VALUE})
	public PostQuestionModel postQuestionsAPI(@RequestParam(value="inputPost", defaultValue="Hello") String inputPost,@RequestParam(value="inputSubject", defaultValue="Hello") String inputSubject)
	{
		
		System.out.println("from input api: "+inputPost);
		
		String postMessage=dbOperations.insertPostQuestions(inputPost, inputSubject);
		
		return new PostQuestionModel( inputPost, inputSubject, postMessage);
		
	}
	


	@ResponseBody
	@RequestMapping(value="/postAnswersAPI", method=RequestMethod.GET,produces={MediaType.APPLICATION_JSON_VALUE})
	public PostAnswerModel postAnswersAPI(@RequestParam(value="inputPost", defaultValue="Hello") String inputPost,@RequestParam(value="inputSubject", defaultValue="Hello") String inputSubject)
	{
		
		System.out.println("from input api: "+inputPost);
		
		String postMessage=dbOperations.insertPostAnswers(inputPost, inputSubject);
		
		return new PostAnswerModel(inputPost,inputSubject,postMessage);
		
	}
	
	@RequestMapping(value="/getAllQuestionsList", method=RequestMethod.GET)
	public List<QuestionAndAnswerModel> getAllAnswersAPI()
	{
		
		
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswers();
		System.out.println(questionAndAnswersModel);
		
		return  questionAndAnswersModel;
	}
	
	
	@RequestMapping(value="/getAllQuestions", method=RequestMethod.GET)
	public ModelAndView getAllAnswers()
	{
		
		
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswers();
		System.out.println(questionAndAnswersModel);
		ModelAndView model= new ModelAndView("index");
		model.addObject("getAllQuestions",questionAndAnswersModel);
		return model;	
	}
	
	@RequestMapping(value="/getAllQuestionsBySubject", method=RequestMethod.GET)
	public ModelAndView getAllQuestionsBySubject(@ModelAttribute("searchQuestionDetails")QuestionAndAnswerModel postAnswer)
	{
		
		
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswersBySubject(postAnswer.getInputSubject());
		//System.out.println(questionAndAnswersModel);
		ModelAndView model= new ModelAndView("index");
		model.addObject("getAllQuestions",questionAndAnswersModel);
		return model;
	}
	
	

	@RequestMapping(value="/getAllQuestionsBySubjectAPI", method=RequestMethod.GET,produces={MediaType.APPLICATION_JSON_VALUE})
	public List<QuestionAndAnswerModel> getAllQuestionsBySubjectAPI(@RequestParam(value="inputSubject", defaultValue="Hello") String inputSubject)
	{
		
		
		List<QuestionAndAnswerModel> questionAndAnswersModel=dbOperations.getAllQuestionAndAnswersBySubject(inputSubject);
		System.out.println(questionAndAnswersModel);
		
		return  questionAndAnswersModel;
	} 
	
	
	
	

}

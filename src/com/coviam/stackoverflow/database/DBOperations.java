package com.coviam.stackoverflow.database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

import com.coviam.stackoverflow.model.GetAnswerModel;
import com.coviam.stackoverflow.model.QuestionAndAnswerModel;


@Controller
public class DBOperations {
    public static Connection conn =null;

	
	public String insertPostQuestions(String inputPost, String inputSubject)
	{
		connect();
		String insertFlag="DB INSERTION IN PROGRESS";
		String insertSql="insert into post_question(subject,inputPost) values(?,?)";
		try{
            PreparedStatement ps = conn.prepareStatement(insertSql);
            ps.setString(1, inputSubject);
            ps.setString(2, inputPost);
            ps.executeUpdate();
            conn.commit();
            insertFlag="DB INSERTION COMPLETED";
		}
		catch (SQLException e) {
			
			insertFlag=e.getMessage();
            System.out.println(e.getMessage());
        }
        try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}

		return insertFlag;
    }
	
	public String insertPostAnswers(String inputPost, String inputSubject)
	{
		int question_id=getQuestionId(inputSubject);
		connect();
		String insertFlag="DB INSERTION IN PROGRESS";
		String insertSql="insert into post_answer(question_id,inputPost) values(?,?)";
		try{
            PreparedStatement ps = conn.prepareStatement(insertSql);
            ps.setInt(1, question_id);
            ps.setString(2, inputPost);
            ps.executeUpdate();
            conn.commit();
            insertFlag="DB INSERTION COMPLETED";
		}
		catch (SQLException e) {
			
			insertFlag=e.getMessage();
            System.out.println(e.getMessage());
        }
        try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		return insertFlag;
		

		
	}
	
	
	
	
	
	public List<QuestionAndAnswerModel> getAllQuestionAndAnswers()
	{
		connect();
		int question_id = 0;
		String sql = "select * from post_question";
        

		List<QuestionAndAnswerModel> questionAndAnswerList= new  ArrayList<QuestionAndAnswerModel>();
		
        try {
        	
        	Statement  stmt= conn.createStatement();
            System.out.println("Statement:"+stmt);
    		
            System.out.println("SQL:"+sql);

            ResultSet rs    = stmt.executeQuery(sql);
            
        	int i=0;

            // loop through the result set
            while (rs.next()) {
        		List<GetAnswerModel> answerList = new ArrayList<GetAnswerModel>();

            	question_id=rs.getInt("id");
            	
            	String inputQuestion=rs.getString("inputPost");
            	String inputSubject=rs.getString("subject");
            	
            	System.out.println("inputQuestion"+inputQuestion);
            	
        		String sql2 = "select inputPost from post_answer where question_id="+question_id+"";
                
                try {
                	
                	Statement  stmt2= conn.createStatement();
                    System.out.println("Statement:"+stmt);
            		

                    System.out.println("SQL:"+sql2);

                    ResultSet rs2    = stmt2.executeQuery(sql2);
                    

                    // loop through the result set
                    while (rs2.next()) {
                    	GetAnswerModel getAnswerModel=new GetAnswerModel();
                    	getAnswerModel.setInputAnswer(rs2.getString("inputPost"));
                    	answerList.add(getAnswerModel);
                        System.out.println("Answer List"+answerList);

        	                
                    }
                    stmt2.close();
                    rs2.close();
                    
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }
                
                
            	
            	QuestionAndAnswerModel questionAndAnswerModel = new QuestionAndAnswerModel();
            	questionAndAnswerModel.setInputAnswers(answerList);
            	questionAndAnswerModel.setInputSubject(inputSubject);
            	questionAndAnswerModel.setInputQuestion(inputQuestion);

            	questionAndAnswerList.add(questionAndAnswerModel);  
                System.out.println("questionAndAnswerList:"+questionAndAnswerList.get(i));

            	i++;
            }
                     
            stmt.close();
            rs.close();
            conn.close();

            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return questionAndAnswerList;
	}
	
	
	
	public List<QuestionAndAnswerModel> getAllQuestionAndAnswersBySubject(String subject)
	{
		connect();
		int question_id = 0;
		String sql = "select * from post_question where subject like '%"+subject+"%'";
        

		List<QuestionAndAnswerModel> questionAndAnswerList= new  ArrayList<QuestionAndAnswerModel>();
		
        try {
        	
        	Statement  stmt= conn.createStatement();
            System.out.println("Statement:"+stmt);
    		
            System.out.println("SQL:"+sql);

            ResultSet rs    = stmt.executeQuery(sql);
            
        	int i=0;

            // loop through the result set
            while (rs.next()) {
        		List<GetAnswerModel> answerList = new ArrayList<GetAnswerModel>();

            	question_id=rs.getInt("id");
            	
            	String inputQuestion=rs.getString("inputPost");
            	String inputSubject=rs.getString("subject");
            	
            	System.out.println("inputQuestion"+inputQuestion);
            	
        		String sql2 = "select inputPost from post_answer where question_id="+question_id+"";
                
                try {
                	
                	Statement  stmt2= conn.createStatement();
                    System.out.println("Statement:"+stmt);
            		

                    System.out.println("SQL:"+sql2);

                    ResultSet rs2    = stmt2.executeQuery(sql2);
                    

                    // loop through the result set
                    while (rs2.next()) {
                    	GetAnswerModel getAnswerModel=new GetAnswerModel();
                    	getAnswerModel.setInputAnswer(rs2.getString("inputPost"));
                    	answerList.add(getAnswerModel);
                        System.out.println("Answer List"+answerList);

        	                
                    }
                    stmt2.close();
                    rs2.close();
                    
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }
                
                
            	
            	QuestionAndAnswerModel questionAndAnswerModel = new QuestionAndAnswerModel();
            	questionAndAnswerModel.setInputAnswers(answerList);
            	questionAndAnswerModel.setInputSubject(inputSubject);
            	questionAndAnswerModel.setInputQuestion(inputQuestion);

            	questionAndAnswerList.add(questionAndAnswerModel);  
                System.out.println("questionAndAnswerList:"+questionAndAnswerList.get(i));

            	i++;
            }
                     
            stmt.close();
            rs.close();
            conn.close();

            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return questionAndAnswerList;
	}
	
	
	public int getQuestionId(String inputSubject)
	{
		connect();
		int question_id = 0;
		String sql = "select id from post_question where subject='"+inputSubject+"'";
        
        try {
        	
        	Statement  stmt= conn.createStatement();
            System.out.println("Statement:"+stmt);
    		

            System.out.println("SQL:"+sql);

            ResultSet rs    = stmt.executeQuery(sql);
            

            // loop through the result set
            while (rs.next()) {

            	question_id=rs.getInt("id");
 
	                
            }
            conn.close();
            stmt.close();
            rs.close();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
		return question_id;
		
	}
	
	public  void connect() {
        try {
            // db parameters
            try {
                Class.forName("org.sqlite.JDBC");
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            String url = "jdbc:sqlite:/Users/avinash.t/Avinash/Codiecon/stackoverflowdb/stackoverflow.db";
            // create a connection to the database
            conn = DriverManager.getConnection(url);
conn.setAutoCommit(false);
			System.out.println("Connection: " + conn);
            if (conn != null) {
                DatabaseMetaData meta = conn.getMetaData();
                System.out.println("The driver name is " + meta.getDriverName());
            }
            System.out.println("Connection to SQLite has been established.");
        } catch (SQLException e) {
        	System.out.println(e.getMessage());
        }
    }

}

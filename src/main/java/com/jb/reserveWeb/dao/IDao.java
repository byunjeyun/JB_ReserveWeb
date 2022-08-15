package com.jb.reserveWeb.dao;

import java.util.ArrayList;
import com.jb.reserveWeb.dto.BoardDto;
import com.jb.reserveWeb.dto.QboardDto;



public interface IDao {

	
	//boardDao 리뷰게시판
	public ArrayList<BoardDto> review_listDao();
	public void r_inputDao(String ruser, String rname, String rcontent, String rscore);
	
	
	//QboardDao qna게시판
	public ArrayList<QboardDto> qna_listDao();
	public void q_inputDao(String qname, String qtitle, String qcontent, String qphone);
	public QboardDto viewDao(String qnum);
	public void deleteDao(String qnum);
	
}

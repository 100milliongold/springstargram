package com.hanbit.springstagram.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanbit.springstagram.dao.CommentDAO;
import com.hanbit.springstagram.vo.CommentVO;

@Service
public class CommentService {
	@Autowired
	private CommentDAO commentDAO;
	
	@Autowired
	private IdGenerationService idGenerationService;

	public void write(CommentVO commentVO) {
		commentVO.setId(idGenerationService.generateId(8));
		commentDAO.insertComment(commentVO);
	}

	public List<CommentVO> list(String photoId) {
		return commentDAO.selectComments(photoId);
	}
	
	
}

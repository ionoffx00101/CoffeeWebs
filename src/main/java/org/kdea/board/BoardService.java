package org.kdea.board;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardsvc")
public class BoardService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<BoardVO> getAllList() {
		BoardDAO dao = sqlSessionTemplate.getMapper(BoardDAO.class);

		HashMap<String, Object> map = new HashMap<String, Object>();
		dao.getAllListDAO(map);
		List<BoardVO> list = (List<BoardVO>) map.get("key");

		return list;
	}

	public List<BoardVO> getPost(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));

		BoardDAO dao = sqlSessionTemplate.getMapper(BoardDAO.class);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("a_num", num);
		dao.getPostDAO(map);
		List<BoardVO> list = (List<BoardVO>) map.get("key");

		return list;
	}

	public boolean inputpost(BoardVO vo) {

		BoardDAO dao = sqlSessionTemplate.getMapper(BoardDAO.class);
		boolean result = false;

		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * map.put("BoardVO", );
		 */

		int i = dao.inputpostDAO(vo);
		// dao.getPostDAO(map);
		// List<BoardVO> list = (List<BoardVO>) map.get("key");

		if (i > 0) {
			result = true;
		}

		// boolean result=dao.inputpostDAO(vo);
		return result;
	}

	public boolean checkLoginForm(HttpServletRequest request) {
		// int num = Integer.parseInt();
		request.getParameter("id");
		request.getParameter("password");

		boolean check = true;// dao 갔다오기
		return check;
	}

}

package org.kdea.board;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("navisvc")
public class NaviService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	
	private boolean leftMore, rightMore;
	
	int pg;
	int totalPg;
	int rowsPerPage = 5;
	int numsPerPage = 3;


	public boolean isLeftMore() {
		return leftMore;
	}

	public void setLeftMore(boolean leftMore) {
		this.leftMore = leftMore;
	}

	public boolean isRightMore() {
		return rightMore;
	}

	public void setRightMore(boolean rightMore) {
		this.rightMore = rightMore;
	}

	public List<BoardVO> svclist(int pnum) {
		BoardDAO dao = sqlSessionTemplate.getMapper(BoardDAO.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("i_num", pnum);
		dao.getPagelist(map);
		List<BoardVO> list = (List<BoardVO>) map.get("key");
		
		return list;
	}
	public NaviVO getNaviVO(int pnum) {
		
		pg =pnum;
		NaviVO nav = new NaviVO();
		nav.setCurrPage(pg);
		nav.setLinks(getNavlinks(pg, rowsPerPage, numsPerPage));
		nav.setLeftMore(leftMore);
		nav.setRightMore(rightMore);
		nav.setTatalPages(totalPg);
		System.out.println(nav.getLinks().length+"link");
		return nav;
	}
	
	public int[] getNavlinks(int page, int rowsPerPage, int numsPerPage) {
		BoardDAO dao = sqlSessionTemplate.getMapper(BoardDAO.class);
		int totalPages = (dao.getTotalRows() - 1) / rowsPerPage + 1;
		
		totalPg = totalPages;

		int tmp = (page - 1) / numsPerPage + 1;
		
		int end = tmp * numsPerPage;
	
		int start = (tmp - 1) * numsPerPage + 1;
		
		if (start == 1)
			leftMore = false;
		
		else
			leftMore = true;
		
		if (end >= totalPages) {
			end = totalPages;
			rightMore = false;
			
		} else
			rightMore = true;
	
		int[] links = new int[end - start + 1];
		
		for (int num = start, i = 0; num <= end; num++, i++) {
			links[i] = num;
		}
		
		return links;
	}

}

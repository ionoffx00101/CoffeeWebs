package org.kdea.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardDAO{

	public void getAllListDAO(Map<String,Object>map);

	public void getPostDAO(Map<String, Object> map);

	public void getPagelist(Map<String, Object> map);

	public int getTotalRows();

	public int inputpostDAO(BoardVO vo);
}

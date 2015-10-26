package org.kdea.board;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	
	
    @Autowired
    public BoardService boardsvc;
    
    @Autowired
    public NaviService navisvc;
    
/*    @Autowired
    public UploadService uploadsvc;
    
    @Autowired
	public FileValidator fileValidator;*/
    
    @RequestMapping(value="home", method=RequestMethod.GET)
    public String home(Model model,HttpServletRequest request) {
    	if(request.getSession().getAttribute("LoginStatus")==null){
    		request.getSession().setAttribute("LoginStatus",false);
    	};
        return "tiles/tilesView";
    }
    
    
    @RequestMapping(value = "boardLogin", method = RequestMethod.GET)
    public String loginlnk(Model model) {
    	 return "tiles/tilesLogin";
    }
    
    @RequestMapping(value = "boardLogin", method = RequestMethod.POST)
    @ResponseBody
    public String loginfn(Model model,HttpServletRequest request) {
    	
    	
    	boolean result = boardsvc.checkLoginForm(request);
   
    	
    	request.getSession().setAttribute("LoginStatus", result);
    	if (result) {
    		request.getSession().setAttribute("LoginId", request.getParameter("id"));
		}
    	
    	return "{\"check\":"+result+"}";
    }
    
    @RequestMapping(value = "boardList", method = RequestMethod.GET)
    public String listlnk(Model model,HttpServletRequest request,@RequestParam int pnum) {
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	if(!check){
    		return "tiles/tilesLogin";
    	}
    	
    	List<BoardVO> list = navisvc.svclist(pnum);
		NaviVO navi = navisvc.getNaviVO(pnum);
		navi.setLinknum(navi.getLinks().length);
		model.addAttribute("list", list);
		model.addAttribute("navi", navi);
/*    	model.addAttribute("list",boardsvc.getAllList()); */
    	 return "tiles/tilesList";
    }
    

    @RequestMapping(value = "boardRead", method = RequestMethod.GET)
    public String readlnk(Model model,HttpServletRequest request) {
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	    	if(!check){
    	    		return "tiles/tilesLogin";
    	    	}
    	model.addAttribute("list",boardsvc.getPost(request));
        return "tiles/tilesRead";
    }
    
    @RequestMapping(value="boardPost", method=RequestMethod.GET)
	public String Inputlnk(Model model,HttpServletRequest request) {
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	if(!check){
    		return "tiles/tilesLogin";
    	}
		
		return "tiles/tilesPost";
	}
    
    @RequestMapping(value="boardPost", method=RequestMethod.POST)
    @ResponseBody
	public String Inputfn(Model model,HttpServletRequest request,BoardVO vo) { 
    	
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	if(!check){
    		return "tiles/tilesLogin";
    	}
		//
    	boolean postcheck=boardsvc.inputpost(vo);
    	return "{\"check\":"+postcheck+"}";
    
	}
    
    @RequestMapping(value = "boardRepost", method = RequestMethod.GET)
    public String repostlnk(Model model,HttpServletRequest request) {
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	    	if(!check){
    	    		return "tiles/tilesLogin";
    	    	}
    	
        return "tiles/tilesRepost";
    }
 
    @RequestMapping(value = "boardModi", method = RequestMethod.GET)
    public String Modilnk(Model model,HttpServletRequest request) {
    	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
    	    	if(!check){
    	    		return "tiles/tilesLogin";
    	    	}
    	
        return "tiles/tilesModi";
    }
    
    @RequestMapping(value = "boardDel", method = RequestMethod.POST)
    @ResponseBody
    public String Deletefn(Model model,HttpServletRequest request,BoardVO vo) {
        	
        	boolean check=(Boolean) request.getSession().getAttribute("LoginStatus");
        	if(!check){
        		return "tiles/tilesLogin";
        	}
    		//
        	boolean postcheck=true;//boardsvc.inputpost(vo);
        	return "{\"check\":"+postcheck+"}";
        
    	}
}
package org.kdea.board;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/boot/")
public class tilesCont {
    
    @RequestMapping(value="home", method=RequestMethod.GET)
    public String home(Model model,HttpServletRequest request) {
    	if(request.getSession().getAttribute("LoginStatus")==null){
    		request.getSession().setAttribute("LoginStatus",false);
    	};
        return "boot/tilesList";
    }
    
}
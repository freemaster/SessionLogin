package kr.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.login.model.MemberDAO;
import kr.login.model.MemberDAOImpl;
import kr.login.model.MemberVO;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        
        MemberVO vo = new MemberVO();
        vo.setId(id);
        vo.setPass(pass);
        
        MemberDAO dao = new MemberDAOImpl();
        MemberVO vo1 = dao.memberLogin(vo);
        
        String cpath = request.getContextPath();
        if(vo1 != null) {
            //로그인 성공 => 서비스 페이지로 전환(이전페이지 또는 main.jsp)
            
            HttpSession session = request.getSession();
            session.setAttribute("vo", vo1);
            
          //redirect, forward
            response.sendRedirect(cpath+"/main.jsp");
            //System.out.println(vo1);
        } else {
            //로그인 실패하면 로그인 페이지로 이동
            response.sendRedirect(cpath+"/login.jsp");
        }
    }
}

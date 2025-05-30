package servlet;

import java.io.IOException;
import java.security.PublicKey;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import membership.MemberDAO;
import membership.MemberDTO;

public class MemberAuth extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException
	{
		ServletContext application = this.getServletContext();
		
		String driver = application.getInitParameter("OracleDriver");
		String connectUrl = application.getInitParameter("OracleURL");
		String oId = application.getInitParameter("OracleId");
		String oPass = application.getInitParameter("OraclePwd");
		
		dao = new MemberDAO(driver, connectUrl, oId, oPass);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		String admin_id = this.getInitParameter("admin_id");
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		MemberDTO memberDto = dao.getMemberDTO(id, pass);
		
		String memberName = memberDto.getName();
		if (memberName != null)
		{
			req.setAttribute("authMessage", memberName + "반갑습니다.");
		} else
		{
			if (admin_id.equals(id))
			{
				req.setAttribute("authMessage", admin_id + "는 최고 관리자임");
			} else
			{
				req.setAttribute("authMessage", "귀하는 회원이 아닙니다.");
			}
		
		}
		req.getRequestDispatcher("/12Servlet/MemberAuth.jsp").forward(req, resp);
	}
		@Override
		public void destroy()
		{
		dao.close();
	}

}
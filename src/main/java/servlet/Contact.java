package servlet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Contact
 */
@WebServlet(urlPatterns={"/contact"})
public class Contact extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String question = request.getParameter("question");
		String total = request.getParameter("total");
		String seminar = request.getParameter("seminar");
		String offer = request.getParameter("offer");
		String data = request.getParameter("data");
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("question", question);
		var list = new ArrayList<String>();
		if("on".equals(total)) {
			list.add("総合案内");
		}
		if("on".equals(seminar)) {
			list.add("セミナー案内");
		}
		if("on".equals(offer)) {
			list.add("求人採用案内");
		}
		if(list.size()==0) {
			list.add("なし");
		}
		String magazine = String.join(",",list );
		request.setAttribute("magazine",magazine);
		if("0".equals(data)) {
			request.getRequestDispatcher("sentY.jsp").forward(request, response);

		}
		else {request.getRequestDispatcher("sentN.jsp").forward(request, response);
			
		}
		
	}

}

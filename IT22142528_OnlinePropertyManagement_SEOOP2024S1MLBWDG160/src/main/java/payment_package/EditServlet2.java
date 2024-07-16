package payment_package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditServlet2")
public class EditServlet2 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String pid = request.getParameter("id");
		int id = Integer.parseInt(pid);
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String amount = request.getParameter("amount");
		String cardname = request.getParameter("cardname");
		String cardnumber = request.getParameter("cardnumber");
		String expmonth = request.getParameter("expmonth");
		String expyear = request.getParameter("expyear");
		String cvv = request.getParameter("cvv");

		pay e = new pay();
		e.setId(id);
		e.setName(name);
		e.setEmail(email);
		e.setAmount(amount);
		e.setCardname(cardname);
		e.setCardnumber(cardnumber);
		e.setExpmonth(expmonth);
		e.setExpyear(expyear);
		e.setCvv(cvv);

		int status = payDao.update(e);
		if (status > 0) {
			response.sendRedirect("ViewServlet");
		} else {
			out.println("Sorry! unable to update record");
		}

		out.close();
	}

}

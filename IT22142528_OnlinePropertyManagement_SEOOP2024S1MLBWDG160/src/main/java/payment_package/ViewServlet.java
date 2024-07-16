package payment_package;

import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;  
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
@WebServlet("/ViewServlet")  

public class ViewServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<a href='payement.html'>Add New Payment</a>");  
        out.println("<h1>Payment List</h1>");  
          
        List<pay> list=payDao.getAllpayment();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Id</th><th>Name</th><th>Email</th><th>Amount</th><th>Cardname</th><th>Cardnumber</th><th>Expmonth</th><th>Expyear</th><th>Cvv</th><th>Edit</th><th>Delete</th></tr>");  
        for(pay e:list){  
         out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getEmail()+"</td><td>"+e.getAmount()+"</td><td>"+e.getCardname()+"</td><td>"+e.getCardnumber()+"</td><td>"+e.getExpmonth()+"</td><td>"+e.getExpyear()+"</td><td>"+e.getCvv()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td>  <td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");  
        }  
        out.print("</table>");  
          
        out.close();  
    }  
} 


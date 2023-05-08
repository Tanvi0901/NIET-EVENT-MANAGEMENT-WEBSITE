
package com.event;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public registration() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("name");
		String branch=request.getParameter("branch");
		String Phone=request.getParameter("phone");
		String Section=request.getParameter("section");
		String year=request.getParameter("year");
		
		String url="jdbc:mysql://localhost:3306/register";
		String name="root";
		String pass="root";
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,name,pass); //step3
			String sql= "insert into registertable values(?,?,?,?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, branch);
			ps.setString(3, Phone);
			ps.setString(4, Section);
			ps.setString(5, year);
			int i=ps.executeUpdate();
			if(i>0) {
			out.print ("<h1>REGISTER SUCCESSFULLY</h1>");
			}
			RequestDispatcher rd=request.getRequestDispatcher("success2.jsp");
			rd.forward(request,response);
			} catch (Exception e) {
			out.print(e);
			}


		}
	}


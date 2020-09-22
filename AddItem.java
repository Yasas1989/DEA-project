/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "AddItem", urlPatterns = {"/AddItem"})
@MultipartConfig(maxFileSize = 16177216)

public class AddItem extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
            {
            response.setContentType("text/html;charset=UTF-8");
                
            String title = request.getParameter("title");
            String price = request.getParameter("price");
            String cat = request.getParameter("cat");
            String user = request.getParameter("user");
            String description = request.getParameter("description");
            String contact = request.getParameter("contact");
            String uid = request.getParameter("uid");
            Part part = request.getPart("image");
            
           
            
            Statement st;
            Connection con=null;
            PreparedStatement ps=null;
            PreparedStatement ps1=null;
            DbCon obj  = new DbCon();
            
            String query = "insert into products(`title`,`description`,`userId`,`image`,`category`,`price`,`contact`,`user`) VALUES (?,?,?,?,?,?,?,?)";
            
        try {
            InputStream is = part.getInputStream();
            con=obj.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1,title);
            ps.setString(2,description);
            ps.setString(3,uid);
            ps.setBlob(4, is);
            ps.setString(5, cat);
            ps.setString(6, price);
            ps.setString(7, contact);
            ps.setString(8, user);
            ps.executeUpdate();
            
            response.sendRedirect("index.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(AddItem.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddItem.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

 
//    private String extractFileName(Part part) {
//        String contentDisp = part.getHeader("content-disposition");
//        String[] items = contentDisp.split(";");
//        for(String s :items){
//            if(s.trim().startsWith("filename")){
//                return s.substring(s.indexOf("=") + 2, s.length() -1 );
//            }
//        }        
//        return "";        
//    }

}

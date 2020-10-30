/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pacote;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vfonseca
 */
public class Servelet extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
                doPost(request,response);
        }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String matricula = request.getParameter("number");
        String senha =  request.getParameter("senha");
        if (matricula.equals("2017200563") && senha.equals("16061999")){
            response.sendRedirect("aluno.jsp");
        }
        else if(matricula.equals("20172005631") && senha.equals("16061999")){
            response.sendRedirect("docente.jsp");
        }
        else{
            response.sendRedirect("index.jsp");
        }
    }
}
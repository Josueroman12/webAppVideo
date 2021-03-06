/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package cr.ac.una.prograiv.video.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.video.bl.UsuarioBL;
import cr.ac.una.prograiv.video.domain.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Josue Roman
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            //String para guardar el JSON generaro por al libreria GSON
            String json;
            
            //Se crea el objeto Persona
            Usuario u = new Usuario();

            //Se crea el objeto de la logica de negocio
            UsuarioBL uBL = new UsuarioBL();

            //Se hace una pausa para ver el modal
            Thread.sleep(1000);
            
            //**********************************************************************
            //se consulta cual accion se desea realizar
            //**********************************************************************
            String accion = request.getParameter("accion");
            String correo, pass;
            correo= request.getParameter("Ucorreo");
            pass= request.getParameter("Uconrasena");
           
            Usuario adm= new Usuario();
                    adm.setEMail(request.getParameter("corrreo"));
                    adm.setContrasena(request.getParameter("contrasena"));
                    adm.isTipo();
                    u = uBL.findByType(adm);                   
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(u);
                    out.print(json);
                    
            if(correo.equals(adm.getEMail()) && pass.equals(adm.getContrasena()) && (adm.isTipo() == true)){
                response.sendRedirect("AdministradorJSP.jsp");
            }
            else{
                 if(correo.equals(adm.getEMail()) && pass.equals(adm.getContrasena()) && (adm.isTipo() == false)){
                     response.sendRedirect("PaginaPrincipalJSP.jsp");
                 }
                 else{
                     response.sendRedirect("RegistrarseJSP.jsp");
                 }
            }
   

        } catch (NumberFormatException e) {
            out.print("E~" + e.getMessage());
        } catch (Exception e) {
            out.print("E~" + e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String action=(request.getPathInfo()!= null? request.getPathInfo():"");
                if(action.equals("/out")){
        response.sendRedirect("PaginaPrincipalJSP.jsp");
        
        }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.video.bl.CategoriaBL;
import cr.ac.una.prograiv.video.domain.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Josue Roman
 */
public class CategoriaServlet extends HttpServlet {

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
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try {
            //String para guardar el JSON generaro por al libreria GSON
            String json;
            
            //Se crea el objeto Persona
            Categoria c = new Categoria();

            //Se crea el objeto de la logica de negocio
            CategoriaBL cBL = new CategoriaBL();

            //Se hace una pausa para ver el modal
            Thread.sleep(1000);
            
            //**********************************************************************
            //se consulta cual accion se desea realizar
            //**********************************************************************
            String accion = request.getParameter("accion");
            switch (accion) {
                case "consultarCategoria":
                    json = new Gson().toJson(cBL.findAll(Categoria.class.getName())); /*Realiza la busqueda*/
                    out.print(json);
                    break;
                    
                case "eliminarCategoria":
                    c.setPkIdCategoria(Integer.parseInt(request.getParameter("pkIdCategoria")));
                    
                     //Se elimina el objeto
                    cBL.delete(c);

                    //Se imprime la respuesta con el response
                    out.print("La categoria fue eliminada correctamente");
                    break;
                    
                case "consultarCategoriaByID":
                    //se consulta la persona por ID
                    c = cBL.findById(Integer.parseInt(request.getParameter("pkIdCategoria")));
                    
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(c);
                    out.print(json);
                    break;
                    
                    
                case "agregarCategoria": case "modificarCategoria":

                    //Se llena el objeto con los datos enviados por AJAX por el metodo post
                    c.setPkIdCategoria(Integer.parseInt(request.getParameter("pkIdCategoria")));
                    c.setNombre(request.getParameter("nombreCategoria"));
                    c.setObservaciones(request.getParameter("observaciones"));
                    c.setEstado(Boolean.parseBoolean(request.getParameter("estadoCategoria")));

                    if(accion.equals("agregarCategoria")){ //es insertar personas
                        //Se guarda el objeto
                        cBL.save(c);

                        //Se imprime la respuesta con el response
                        out.print("C~La Categoria fue ingresada correctamente");
                        
                    }else{//es modificar persona
                        //Se guarda el objeto
                        cBL.merge(c);

                        //Se imprime la respuesta con el response
                        out.print("C~La Categoria fue modificada correctamente");
                    }
                    
                    break;
                    
                default:
                    out.print("E~No se indico la acción que se desea realizare");
                    break;
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

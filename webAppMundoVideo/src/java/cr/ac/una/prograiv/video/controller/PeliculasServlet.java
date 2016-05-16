/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.video.bl.PeliculasBL;
import cr.ac.una.prograiv.video.domain.Peliculas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Josue Roman
 */
@WebServlet(name = "PeliculasServlet", urlPatterns = {"/PeliculasServlet"})
public class PeliculasServlet extends HttpServlet {

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
            Peliculas p = new Peliculas();

            //Se crea el objeto de la logica de negocio
            PeliculasBL pBL = new PeliculasBL();

            //Se hace una pausa para ver el modal
            Thread.sleep(1000);
            
            //**********************************************************************
            //se consulta cual accion se desea realizar
            //**********************************************************************
            String accion = request.getParameter("accion");
            switch (accion) {
                case "consultarPeliculas":
                    json = new Gson().toJson(pBL.findAll(Peliculas.class.getName())); /*Realiza la busqueda*/
                    out.print(json);
                    break;
                case "eliminarPeliculas":
                    p.setPkIdPeliculas(Integer.parseInt(request.getParameter("pkIdPelicula")));
                    
                     //Se elimina el objeto
                    pBL.delete(p);
                    //se consulta la persona por ID

                    //Se imprime la respuesta con el response
                    out.print("La pelicula o serie fue eliminada correctamente");
                    break;
                    
                case "consultarPeliculasByID":
                    p = pBL.findById(Integer.parseInt(request.getParameter("pkIdPelicula")));
                    
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(p);
                    out.print(json);
                    break;
                    
                    
                case "agregarPeliculas": case "modificarPeliculas":

                    //Se llena el objeto con los datos enviados por AJAX por el metodo post
                    p.setPkIdPeliculas(Integer.parseInt(request.getParameter("cedula")));
                    //p.setCategoria(request.getClass().asSubclass(null);
                    p.setNombre(request.getParameter("nombre"));
                    p.setDirector(request.getParameter("apellido1"));
                    p.setActorPrincipal(request.getParameter("apellido2"));
                    p.setCantExistentes(Integer.parseInt(request.getParameter("cedula")));
                    p.setCantVendidas(Integer.parseInt(request.getParameter("nombre")));
                    p.setCantAlquiladas(Integer.parseInt(request.getParameter("apellido1")));
                    p.setObservaciones(request.getParameter("apellido2"));
                    p.setEstado(Boolean.parseBoolean(request.getParameter("cedula")));
                    p.setCostoVenta(Integer.parseInt(request.getParameter("nombre")));
                    p.setCantAlquiladas(Integer.parseInt(request.getParameter("apellido1")));
                   
                    if(accion.equals("agregarPelicula")){ //es insertar personas
                        //Se guarda el objeto
                        pBL.save(p);

                        //Se imprime la respuesta con el response
                        out.print("C~La pelicula o serie fue ingresada correctamente");
                        
                    }else{//es modificar persona
                        //Se guarda el objeto
                        pBL.merge(p);

                        //Se imprime la respuesta con el response
                        out.print("C~La pelicula o serie fue modificada correctamente");
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

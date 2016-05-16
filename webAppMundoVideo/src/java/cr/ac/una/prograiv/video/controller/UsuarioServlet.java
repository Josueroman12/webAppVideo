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
public class UsuarioServlet extends HttpServlet {

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
            switch (accion) {
                case "consultarUsuario":
                    json = new Gson().toJson(uBL.findAll(Usuario.class.getName())); /*Realiza la busqueda*/
                    out.print(json);
                    break;
                case "eliminarUsuario":
                    u.setPkIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
                    
                     //Se elimina el objeto
                    uBL.delete(u);

                    //Se imprime la respuesta con el response
                    out.print("El usuario fue eliminado correctamente");
                    break;
                    
                case "consultarUsuarioByID":
                    //se consulta la persona por ID
                    u = uBL.findById(Integer.parseInt(request.getParameter("idUsuario")));
                    
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(u);
                    out.print(json);
                    break;
                   
                    
                    
                case "agregarUsuario": case "modificarUsuario":
                    boolean duplicar=false;
                    //Se llena el objeto con los datos enviados por AJAX por el metodo post
                    u.setNombre(request.getParameter("nombre"));
                    u.setApellidos(request.getParameter("apellidos"));
                    u.setContrasena(request.getParameter("contrasena"));
                    u.setEMail(request.getParameter("correo"));
                    
                    //Guardar Correctamente en la base de datos
                    String fechatxt = request.getParameter("fechaNac");
                    DateFormat format = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
                    Date date = format.parse(fechatxt);
                    u.setFechaDeNacimiento(date);
                    
                    u.setDireccion(request.getParameter("direccion"));
                    u.setTelTrabajo(request.getParameter("telTrabajo"));
                    u.setTelCelular(request.getParameter("telCelular"));
                    u.setTipo(Boolean.parseBoolean(request.getParameter("Atipo")));
                    u.setEstado(Boolean.parseBoolean(request.getParameter("Aestado")));

                    if(accion.equals("agregarUsuario")){ //es insertar personas
                       List<Usuario> listExist = uBL.findAll(Usuario.class.getName());
                            
                            for(Usuario personas:listExist){
                                if(u.getEMail()==personas.getEMail()){
                                out.print("E~ Este correo ya esta registrado");
                               
                                duplicar=true;
                                }
                            }
                            
                            if(!duplicar){
                            uBL.save(u);
                            out.print("C~ El usuario fue ingresada correctamente");
                            }
                        
                    }else{//es modificar persona
                        //Se guarda el objeto
                        uBL.merge(u);

                        //Se imprime la respuesta con el response
                        out.print("C~El usuario fue modificado correctamente");
                    }
                    
                    break;
                    
                    case "consultarUsuarioByName":
                       List<Usuario> uNombre;
                        uNombre= uBL.findByName(request.getParameter("nombre"));
                    
                    //se pasa la informacion del objeto a formato JSON
                    json = new Gson().toJson(uNombre);
                    out.print(json);
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

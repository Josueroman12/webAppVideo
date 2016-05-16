/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.dao.CategoriaDAO;
import cr.ac.una.prograiv.video.dao.DetalleDAO;
import cr.ac.una.prograiv.video.dao.IBaseDAO;
import cr.ac.una.prograiv.video.dao.ImagenDAO;
import cr.ac.una.prograiv.video.dao.PedidoDAO;
import cr.ac.una.prograiv.video.dao.PeliculasDAO;
import cr.ac.una.prograiv.video.dao.UsuarioDAO;
import java.util.LinkedHashMap;

public class BaseBL {
    private final LinkedHashMap<String, IBaseDAO> daos;

    public BaseBL() {
        daos = new LinkedHashMap();
        //daos.put("cr.ac.una.prograiv.video.domain.Imagen", new ImagenDAO());
        daos.put("cr.ac.una.prograiv.video.domain.Usuario", new UsuarioDAO());
        //daos.put("cr.ac.una.prograiv.video.domain.Categoria", new CategoriaDAO());
        //daos.put("cr.ac.una.prograiv.video.domain.Pelicula", new PeliculasDAO());
        //daos.put("cr.ac.una.prograiv.video.domain.Pedido", new PedidoDAO());
        //daos.put("cr.ac.una.prograiv.video.domain.Detalle", new DetalleDAO());
    }
    
    public IBaseDAO getDao(String className){
        return daos.get(className);
    }
}

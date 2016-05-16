/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.domain.Imagen;
import java.util.List;

/**
 *
 * @author Alfredo
 */
public class ImagenBL extends BaseBL implements IBaseBL<Imagen, Integer> {
    
    @Override
    public void save(Imagen o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Imagen merge(Imagen o) {
        return (Imagen) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Imagen o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Imagen findById(Integer o) {
        return (Imagen) this.getDao(o.getClass().getName()).findById(o);
    }
    
    @Override
    public List<Imagen> findByName(String o) {
        return this.getDao(Imagen.class.getName()).findByName(o);
    }

    @Override
    public List<Imagen> findAll(String className) {
       return this.getDao(className).findAll();
    }
    
    @Override
    public Imagen findByType(Imagen o) {
        return (Imagen) this.getDao(o.getClass().getName()).findByType(o);
    }
}

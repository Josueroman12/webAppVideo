/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.dao.*;
import cr.ac.una.prograiv.video.domain.Peliculas;
import java.util.List;

/**
 *
 * @author Josue Roman
 */
public class PeliculasBL extends BaseBL implements IBaseBL<Peliculas, Integer> {
    @Override
    public void save(Peliculas o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Peliculas merge(Peliculas o) {
        return (Peliculas) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Peliculas o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Peliculas findById(Integer o) {
        return (Peliculas) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Peliculas> findAll(String className) {
       return this.getDao(className).findAll();
    }

    @Override
   public List<Peliculas> findByName(String o) {
        return this.getDao(Peliculas.class.getName()).findByName(o);
    }

    @Override
    public Peliculas findByType(Peliculas o) {
        return (Peliculas) this.getDao(o.getClass().getName()).findByType(o);
    }
}

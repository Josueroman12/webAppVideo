/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.dao.*;
import cr.ac.una.prograiv.video.domain.Detalle;
import java.util.List;

/**
 *
 * @author Josue Roman
 */
public class DetalleBL extends BaseBL implements IBaseBL<Detalle, Integer>{
   @Override
    public void save(Detalle o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Detalle merge(Detalle o) {
        return (Detalle) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Detalle o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Detalle findById(Integer o) {
        return (Detalle) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Detalle> findAll(String className) {
       return this.getDao(className).findAll();
    } 

    @Override
    public List<Detalle> findByName(String o) {
        return this.getDao(Detalle.class.getName()).findByName(o);
    }

    @Override
    public Detalle findByType(Detalle o) {
        return (Detalle) this.getDao(o.getClass().getName()).findByType(o);
    }
}

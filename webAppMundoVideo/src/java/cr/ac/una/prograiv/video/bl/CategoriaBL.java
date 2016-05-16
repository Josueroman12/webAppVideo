/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.dao.*;
import cr.ac.una.prograiv.video.domain.Categoria;
import java.util.List;

/**
 *
 * @author Josue Roman
 */
public class CategoriaBL extends BaseBL implements IBaseBL<Categoria, Integer> {
    @Override
    public void save(Categoria o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Categoria merge(Categoria o) {
        return (Categoria) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Categoria o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Categoria findById(Integer o) {
        return (Categoria) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Categoria> findAll(String className) {
       return this.getDao(className).findAll();
    }

    @Override
    public List<Categoria> findByName(String o) {
        return this.getDao(Categoria.class.getName()).findByName(o);
    }

    @Override
    public Categoria findByType(Categoria o) {
        return (Categoria) this.getDao(o.getClass().getName()).findByType(o);
    }
}

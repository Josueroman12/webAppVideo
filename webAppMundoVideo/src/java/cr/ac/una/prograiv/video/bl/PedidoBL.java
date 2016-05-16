/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.bl;

import cr.ac.una.prograiv.video.dao.*;
import cr.ac.una.prograiv.video.domain.Pedido;
import java.util.List;


/**
 *
 * @author Josue Roman
 */
public class PedidoBL extends BaseBL implements IBaseBL<Pedido, Integer>{
    @Override
    public void save(Pedido o) {
        this.getDao(o.getClass().getName()).save(o);
    }

    @Override
    public Pedido merge(Pedido o) {
        return (Pedido) this.getDao(o.getClass().getName()).merge(o);
    }

    @Override
    public void delete(Pedido o) {
        this.getDao(o.getClass().getName()).delete(o);
    }

    @Override
    public Pedido findById(Integer o) {
        return (Pedido) this.getDao(o.getClass().getName()).findById(o);
    }

    @Override
    public List<Pedido> findAll(String className) {
       return this.getDao(className).findAll();
    }

    @Override
    public List<Pedido> findByName(String o) {
        return this.getDao(Pedido.class.getName()).findByName(o);
    }

    @Override
    public Pedido findByType(Pedido o) {
        return (Pedido) this.getDao(o.getClass().getName()).findByType(o); }
}

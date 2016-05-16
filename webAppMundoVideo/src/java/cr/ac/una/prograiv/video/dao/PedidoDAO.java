/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;

import cr.ac.una.prograiv.video.domain.Pedido;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

/**
 *
 * @author Josue Roman
 */
public class PedidoDAO extends HibernateUtil implements IBaseDAO<Pedido, Integer> {
    @Override
    public void save(Pedido o) {
       try {
            iniciaOperacion();
            getSesion().save(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
    }

    @Override
    public Pedido merge(Pedido o) {
       try {
            iniciaOperacion();
            o = (Pedido) getSesion().merge(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
        return o;
    }

    @Override
    public void delete(Pedido o) {
       try {
            iniciaOperacion();
            getSesion().delete(o);
            getTransac().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
    }

    @Override
    public Pedido findById(Integer o) {
        Pedido pedido = null;

        try {
            iniciaOperacion();
            pedido = (Pedido) getSesion().get(Pedido.class, o);
        } finally {
            getSesion().close();
        }
        return pedido;
    }

    @Override
    public List<Pedido> findAll() {
       List<Pedido> listaPedido;
        try {
            iniciaOperacion();
            listaPedido = getSesion().createQuery("from Pedido").list();
        } finally {
            getSesion().close();
        }

        return listaPedido;
    }
    
    @Override
    public List<Pedido> findByName(String name) {
        List<Pedido> listaPedido = null;
        try {
            iniciaOperacion();
            Query q = getSesion().createQuery("from Pedido where nombre= '"+name+"'");
            listaPedido= q.list();
        } finally {
            getSesion().close();
        }

        return listaPedido;
    }

    @Override
    public Pedido findByType(Pedido o) {
        Pedido pedido = null;

        try {
            iniciaOperacion();
            pedido = (Pedido) getSesion().get(Pedido.class,o);
        } finally {
            getSesion().close();
        }
        return pedido; }
}

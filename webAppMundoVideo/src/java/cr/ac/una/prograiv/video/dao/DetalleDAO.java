/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;

import cr.ac.una.prograiv.video.domain.Detalle;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

/**
 *
 * @author Josue Roman
 */
public class DetalleDAO extends HibernateUtil implements IBaseDAO<Detalle, Integer>{
   @Override
    public void save(Detalle o) {
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
    public Detalle merge(Detalle o) {
       try {
            iniciaOperacion();
            o = (Detalle) getSesion().merge(o);
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
    public void delete(Detalle o) {
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
    public Detalle findById(Integer o) {
        Detalle detalle = null;

        try {
            iniciaOperacion();
            detalle = (Detalle) getSesion().get(Detalle.class, o);
        } finally {
            getSesion().close();
        }
        return detalle;
    }

    @Override
    public List<Detalle> findAll() {
       List<Detalle> listaDetalle;
        try {
            iniciaOperacion();
            listaDetalle = getSesion().createQuery("from Detalle").list();
        } finally {
            getSesion().close();
        }

        return listaDetalle;
    } 
    
        @Override
    public List<Detalle> findByName(String name) {
        List<Detalle> listaDetalle = null;
        try {
            iniciaOperacion();
            Query q = getSesion().createQuery("from Detalle where nombre= '"+name+"'");
            listaDetalle= q.list();
        } finally {
            getSesion().close();
        }

        return listaDetalle;
    }

    @Override
    public Detalle findByType(Detalle o) {
        Detalle categoria = null;

        try {
            iniciaOperacion();
            categoria = (Detalle) getSesion().get(Detalle.class,o);
        } finally {
            getSesion().close();
        }
        return categoria; 
    }

}

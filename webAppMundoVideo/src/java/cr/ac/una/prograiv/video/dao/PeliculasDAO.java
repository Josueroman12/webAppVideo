/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;


import cr.ac.una.prograiv.video.domain.Peliculas;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

/**
 *
 * @author Josue Roman
 */
public class PeliculasDAO extends HibernateUtil implements IBaseDAO<Peliculas, Integer> {
    @Override
    public void save(Peliculas o) {
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
    public Peliculas merge(Peliculas o) {
       try {
            iniciaOperacion();
            o = (Peliculas) getSesion().merge(o);
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
    public void delete(Peliculas o) {
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
    public Peliculas findById(Integer o) {
        Peliculas categoria = null;

        try {
            iniciaOperacion();
            categoria = (Peliculas) getSesion().get(Peliculas.class, o);
        } finally {
            getSesion().close();
        }
        return categoria;
    }

    @Override
    public List<Peliculas> findAll() {
       List<Peliculas> listaPeliculas;
        try {
            iniciaOperacion();
            listaPeliculas = getSesion().createQuery("from Peliculas").list();
        } finally {
            getSesion().close();
        }

        return listaPeliculas;
    }
    
    @Override
    public List<Peliculas> findByName(String name) {
        List<Peliculas> listaPeliculas = null;
        try {
            iniciaOperacion();
            Query q = getSesion().createQuery("from Peliculas where nombre= '"+name+"'");
            listaPeliculas= q.list();
        } finally {
            getSesion().close();
        }

        return listaPeliculas;
    }

    @Override
    public Peliculas findByType(Peliculas o) {
        Peliculas pelicula = null;

        try {
            iniciaOperacion();
            pelicula = (Peliculas) getSesion().get(Peliculas.class,o);
        } finally {
            getSesion().close();
        }
        return pelicula; }

}

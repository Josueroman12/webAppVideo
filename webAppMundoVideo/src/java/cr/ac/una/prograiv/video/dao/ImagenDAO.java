/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;

import cr.ac.una.prograiv.video.domain.Imagen;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.io.Serializable;
import java.util.List;
import org.hibernate.HibernateException;

/**
 *
 * @author Alfredo
 */
public class ImagenDAO extends HibernateUtil implements IBaseDAO<Imagen, Integer> {
    
    @Override
    public void save(Imagen o) {
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
    public Imagen merge(Imagen o) {
        try {
            iniciaOperacion();
            o = (Imagen) getSesion().merge(o);
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
    public void delete(Imagen o) {
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
    public Imagen findById(Integer o) {
        Imagen imagen = null;

        try {
            iniciaOperacion();
            imagen = (Imagen) getSesion().get(Imagen.class, (Serializable) o);
        } finally {
            getSesion().close();
        }
        return imagen;
    }

    

    @Override
    public List<Imagen> findAll() {
        List<Imagen> listaImagen;
        try {
            iniciaOperacion();
            listaImagen = getSesion().createQuery("from imagen").list();
        } finally {
            getSesion().close();
        }

        return listaImagen;
    }
    
    @Override
    public List<Imagen> findByName(String o) {
        List<Imagen> listaImagen;
        try {
            iniciaOperacion();
            listaImagen = getSesion().createQuery("from Imagen where tipo = "+"'"+o+"'").list();
        } finally {
            getSesion().close();
        }

        return listaImagen;
    }

    @Override
    public Imagen findByType(Imagen o) {
        Imagen imagen = null;

        try {
            iniciaOperacion();
            imagen = (Imagen) getSesion().get(Imagen.class, (Serializable) o);
        } finally {
            getSesion().close();
        }
        return imagen;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;

import cr.ac.una.prograiv.video.domain.Categoria;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

/**
 *
 * @author Josue Roman
 */
public class CategoriaDAO extends HibernateUtil implements IBaseDAO<Categoria, Integer> {

    @Override
    public void save(Categoria o) {
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
    public Categoria merge(Categoria o) {
       try {
            iniciaOperacion();
            o = (Categoria) getSesion().merge(o);
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
    public void delete(Categoria o) {
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
    public Categoria findById(Integer o) {
        Categoria categoria = null;

        try {
            iniciaOperacion();
            categoria = (Categoria) getSesion().get(Categoria.class, o);
        } finally {
            getSesion().close();
        }
        return categoria;
    }

    @Override
    public List<Categoria> findAll() {
       List<Categoria> listaCategoria;
        try {
            iniciaOperacion();
            listaCategoria = getSesion().createQuery("from Categoria").list();
        } finally {
            getSesion().close();
        }

        return listaCategoria;
    }
    
    @Override
    public List<Categoria> findByName(String name) {
        List<Categoria> listaCategoria = null;
        try {
            iniciaOperacion();
            Query q = getSesion().createQuery("from Categoria where nombre= '"+name+"'");
            listaCategoria= q.list();
        } finally {
            getSesion().close();
        }

        return listaCategoria;
    }

    @Override
    public Categoria findByType(Categoria o) {
       Categoria categoria = null;

        try {
            iniciaOperacion();
            categoria = (Categoria) getSesion().get(Categoria.class,o);
        } finally {
            getSesion().close();
        }
        return categoria; 
    }

}

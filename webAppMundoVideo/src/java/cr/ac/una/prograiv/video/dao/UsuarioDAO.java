/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.video.dao;

import cr.ac.una.prograiv.video.domain.Usuario;
import cr.ac.una.prograiv.video.utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

/**
 *
 * @author Josue Roman
 */
public class UsuarioDAO extends HibernateUtil implements IBaseDAO<Usuario, Integer> {
    @Override
    public void save(Usuario o) {
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
    public Usuario merge(Usuario o) {
       try {
            iniciaOperacion();
            o = (Usuario) getSesion().merge(o);
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
    public void delete(Usuario o) {
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
    public Usuario findById(Integer id) {
        Usuario usuario = null;

        try {
            iniciaOperacion();
            usuario = (Usuario) getSesion().get(Usuario.class, id);
        } finally {
            getSesion().close();
        }
        return usuario;
    }

    @Override
    public List<Usuario> findAll() {
       List<Usuario> listaUsuario;
        try {
            iniciaOperacion();
            listaUsuario = getSesion().createQuery("from Usuario").list();
        } finally {
            getSesion().close();
        }

        return listaUsuario;
    }

    @Override
    public List<Usuario> findByName(String name) {
        List<Usuario> listaUsuario = null;
        try {
            iniciaOperacion();
            Query q = getSesion().createQuery("from Usuario where nombre= '"+name+"'");
            listaUsuario= q.list();
        } finally {
            getSesion().close();
        }

        return listaUsuario;
    }

    @Override
    public Usuario findByType(Usuario o) {
         Usuario usuario = null;

        try {
            iniciaOperacion();
            usuario = (Usuario) getSesion().get(Usuario.class,o);
        } finally {
            getSesion().close();
        }
        return usuario; 
    }
}

package cr.ac.una.prograiv.video.domain;
// Generated 12/05/2016 02:28:02 PM by Hibernate Tools 4.3.1



/**
 * Imagen generated by hbm2java
 */
public class Imagen  implements java.io.Serializable {


     private Integer pkIdImagen;
     private String tipo;
     private String url;

    public Imagen() {
    }

    public Imagen(String tipo, String url) {
       this.tipo = tipo;
       this.url = url;
    }
   
    public Integer getPkIdImagen() {
        return this.pkIdImagen;
    }
    
    public void setPkIdImagen(Integer pkIdImagen) {
        this.pkIdImagen = pkIdImagen;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }




}



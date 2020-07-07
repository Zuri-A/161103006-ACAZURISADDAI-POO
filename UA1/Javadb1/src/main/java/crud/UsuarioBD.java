/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud;

import Config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioBD {

    //Atributos SQL
    private static final String listado = "Select * from usuario";
    private static final String agregar = "INSERT INTO usuario SET usuario=?, password=MD5(?)";
    private static final String editar  = "UPDATE usuario SET usuario=? WHERE id_usuario=?";
    private static final String eliminar= "DELETE FROM usuario WHERE id_usuario=?";
    
    
    
    //Atributos de conexion 
    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;

    

    public List<Usuario> listadoUsuarios() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(this.listado);
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            usuarios.add(new Usuario(this.rs.getInt("Id_usuario"), this.rs.getString("usuario"), this.rs.getString("password")));
        }
        return usuarios;
    }
    
    public boolean Agregar(Usuario usuario) throws SQLException {
       this.stmt=this.conexion.prepareStatement(this.agregar);
       
             this.stmt.setInt(1, usuario.getId_usuario());
             this.stmt.setString(2, usuario.getUsuario());
             this.stmt.setString(3, usuario.getPassword());
            
            if(this.stmt.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
        }   
    
    public boolean Editar(Usuario usuario) throws SQLException {
        boolean rowUpdated;
          this.stmt=this.conexion.prepareStatement(this.editar);
       
                
             this.stmt.setInt(1, usuario.getId_usuario());
             this.stmt.setString(2, usuario.getUsuario());
             this.stmt.setString(3, usuario.getPassword());
            
            if(rowUpdated =this.stmt.executeUpdate()> 0){
                return true;
            }else{
                return false;
            }
    }
    
     public boolean Eliminar(Usuario usuario, int id) throws SQLException {
        boolean rowDeleted;
        this.stmt=this.conexion.prepareStatement(this.eliminar);
        
        this.stmt.setInt(1, usuario.getId_usuario());
              
         if(rowDeleted = this.stmt.executeUpdate()> 0){
                return true;
            }else{
                return false;
            }       
            
    }
    
}

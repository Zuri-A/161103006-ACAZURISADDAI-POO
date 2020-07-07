
package crud;

public class Usuario {

    private int Id_usuario;
    private String usuario;
    private String password;

    public Usuario() {
    }

    public Usuario(int Id_usuario, String usuario, String password) {
        this.Id_usuario = Id_usuario;
        this.usuario = usuario;
        this.password = password;
    }

    public Usuario(int Id_usuario) {
        this.Id_usuario = Id_usuario;
    }

    public int getId_usuario() {
        return Id_usuario;
    }

    public void setId_usuario(int Id_usuario) {
        this.Id_usuario = Id_usuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Usuario{" + "Id_usuario=" + Id_usuario + ", usuario=" + usuario + ", password=" + password + '}';
    }

}

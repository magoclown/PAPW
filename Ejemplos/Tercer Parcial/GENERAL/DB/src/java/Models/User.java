/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Utils.DBUtils;
import java.sql.Connection;
import com.mysql.jdbc.Statement;
import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.logging.Logger;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author magoc
 */
public class User {
    //Atributos encapsulados
    private int idUser;
    private String nameUser;
    private byte[] imageUser;
    private boolean active;

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public byte[] getImageUser() {
        return imageUser;
    }
   
    public void setImageUser(byte[] imageUser) {
        this.imageUser = imageUser;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    //Constructores
    public User() {
    }

    public User(int idUser, String nameUser, byte[] imageUser, boolean active) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.imageUser = imageUser;
        this.active = active;
    }

    public User(int idUser, String nameUser) {
        this.idUser = idUser;
        this.nameUser = nameUser;
    }

    public User(int idUser, String nameUser, byte[] imageUser) {
        this.idUser = idUser;
        this.nameUser = nameUser;
        this.imageUser = imageUser;
    }
    
    
    public User(User other) {
        this.idUser = other.idUser;
        this.nameUser = other.nameUser;
        this.imageUser = other.imageUser;
        this.active = other.active;
    }
    
    //Obtener todos los usuarios segun un parametro
    //1 Activos
    //0 Inactivos
    //-1 Todos
    static public List<User> GetAllUsers(int Activate){
        List<User> users = new ArrayList<User>();
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            //Esto dependera del nombre de su conexion recuerden
            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            //Creamos el llamado
            statement = con.prepareCall(DBUtils.P_GETALL_USER);
            statement.setInt(1, Activate);
            rS = statement.executeQuery();
            
            //Conseguimos los datos y los agregamos a una lista
            while(rS.next()){
                int id = rS.getInt("idUser");
                String name = rS.getString("nameUser");
                byte[] image = rS.getBytes("imageUser");
                User user = new User(id, name, image);
                users.add(user);
            }
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            //Si se finalizo bien cerramos todo
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return users;
    }
    
    //Obtenemos la imagen
    static public byte[] GetImageUser(int idUser){
        byte[] imageBytes = null;
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            statement = con.prepareCall(DBUtils.P_IMAGE_USER);
            statement.setInt(1, idUser);
            rS = statement.executeQuery();
            while(rS.next()){
                imageBytes = rS.getBytes("imageUser");
            }
        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
        return imageBytes;
    }
    //Agregar un usuario
    static public void AddUser(String userName, InputStream userImage){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            statement = con.prepareCall(DBUtils.P_ADD_USER);
            statement.setString(1, userName);
            statement.setBinaryStream(2, userImage);
            rS = statement.executeQuery();

        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
    }
    //Remover un usuario
    static public void RemoveUser(int idUser){
        InitialContext iC = null;
        Context context = null;
        Connection con = null;
        ResultSet rS = null;
        CallableStatement statement = null;
        try{
            iC = new InitialContext();
            context = (Context) iC.lookup("java:comp/env");

            DataSource dS = (DataSource) context.lookup("jdbc/myDB");
            con = dS.getConnection();

            statement = con.prepareCall(DBUtils.P_REMOVE_USER);
            statement.setInt(1, idUser);
            rS = statement.executeQuery();

        }catch(SQLException ex){
            Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
        }catch(NamingException ex){
            Logger.getLogger("ERROR al intentar obtener el DataSource: " + ex.getMessage());
        } finally{
            try{
                if(rS != null)
                {
                    rS.close();
                }
                if(statement != null)
                {
                    statement.close();
                }
                if(con != null)
                {
                    con.close();
                }
            }catch(SQLException ex){
                Logger.getLogger("ERROR (" + ex.getErrorCode() + "): " + ex.getMessage());
            }
        }
    }
           
}

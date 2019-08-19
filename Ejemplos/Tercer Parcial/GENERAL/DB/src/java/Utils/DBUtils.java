/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author magoc
 */
public class DBUtils {
    public static String P_ADD_USER = "CALL AddUser(?,?);";
    public static String P_REMOVE_USER = "CALL RemoveUser(?);";
    public static String P_GETALL_USER = "CALL GetAllUsers(?);";
    public static String P_IMAGE_USER = "CALL GetImageUser(?);";
}

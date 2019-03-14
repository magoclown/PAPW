/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw02.Transformations;

/**
 *
 * @author magoc
 */
public class Vector3 {
    public float x;
    public float y;
    public float z;
    
    public static float Distance(Vector3 origin, Vector3 end){
        double difX = end.x-origin.x;
        double difY = end.y-origin.y;
        double difZ = end.z-origin.z;
        
        double dist = Math.sqrt((Math.pow(difX, 2) + Math.pow(difY, 2) + Math.pow(difZ, 2)) );
        return (float)dist;
    }
}

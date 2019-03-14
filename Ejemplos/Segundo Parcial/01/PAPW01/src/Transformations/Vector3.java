/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Transformations;

/**
 *
 * @author magoc
 */
public class Vector3 {
    public float x;
    public float y;
    public float z;
    
    public static float Distance(Vector3 origin, Vector3 end){
        float distanceX = end.x - origin.x;
        float distanceY = end.y - origin.y;
        float distanceZ = end.z - origin.z;
        double distance = Math.sqrt((double)(Math.pow(distanceX, 2) + Math.pow(distanceY, 2) + Math.pow(distanceZ, 2)));
        return (float)distance;
    }
}

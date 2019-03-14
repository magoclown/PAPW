/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw02.character;

import papw02.Transformations.Vector3;
import papw02.behaviour.PAPWBehaviour;

/**
 *
 * @author magoc
 */
public class BaseEnemy extends BaseCharacter implements AIMovement, PAPWBehaviour{

    public Player player;
    protected float distanceToPlayer;
    
    @Override
    public float Distance() {
        distanceToPlayer = Vector3.Distance(this.transform.position, player.transform.position);
        return distanceToPlayer;
    }

    @Override
    public void DetecAction() {
        Action();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Action() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Start() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Update() {
        Distance();
        DetecAction();
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
}

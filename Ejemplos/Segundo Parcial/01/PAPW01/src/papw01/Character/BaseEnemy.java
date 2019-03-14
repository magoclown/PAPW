/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw01.Character;

import Framework.PAPWBehavior;
import Transformations.Vector3;

/**
 *
 * @author magoc
 */
public class BaseEnemy extends BaseCharacter implements AIMovement, PAPWBehavior{
    
    Player player;
    float distanceToPlayer;
    
    public BaseEnemy() {
    }
    
    public BaseEnemy(String name, float life, float mana, float stamina, float armor, int str, int inte, int luck, int def, int vit){
        this.name = name;
        this.life = life;
        this.mana = mana;
        this.stamina = stamina;
        this.armor = armor;
        this.str = str;
        this.inte = inte;
        this.luck = luck;
        this.def = def;
        this.vit = vit;
    }
    
    public BaseEnemy(BaseEnemy other){
        this.name = other.getName();
        this.life = other.getLife();
        this.mana = other.getMana();
        this.stamina = other.getStamina();
        this.armor = other.getArmor();
        this.str = other.getStr();
        this.inte = other.getInte();
        this.luck = other.getLuck();
        this.def = other.getDef();
        this.vit = other.getVit();
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }

    @Override
    public float getArmor() {
        return armor;
    }

    @Override
    public void FindPlayer() {
        distanceToPlayer = Vector3.Distance(player.transform.position, this.transform.position);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void DetectAction() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Attack() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Start() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Update() {
        FindPlayer();
        DetectAction();
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw01.Character;

/**
 *
 * @author magoc
 */
public class Player extends BaseCharacter{

    public Player() {
    }
    
    public Player(String name, float life, float mana, float stamina, float armor, int str, int inte, int luck, int def, int vit){
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
    
    public Player(Player other){
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
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw01.Character;

import Transformations.Transform;

/**
 *
 * @author magoc
 */
public abstract class BaseCharacter {
    
    protected String name;
    
    public Transform transform;
    
    //Atributos
    protected float life;
    protected float mana;
    protected float stamina;
    protected float armor;
    
    //Status
    protected int str;
    protected int inte;
    protected int luck;
    protected int def;
    protected int vit;
    
    protected float lifeModifier = 2.5f;
    
    //SETTER
    public void setLife(float life) {
        this.life = life;
    }

    public void setMana(float mana) {
        this.mana = mana;
    }

    public void setStamina(float stamina) {
        this.stamina = stamina;
    }

    public void setArmor(float armor) {
        this.armor = armor;
    }

    public void setStr(int str) {
        this.str = str;
    }

    public void setInte(int inte) {
        this.inte = inte;
    }

    public void setLuck(int luck) {
        this.luck = luck;
    }

    public void setDef(int def) {
        this.def = def;
    }

    public void setVit(int vit) {
        this.vit = vit;
    }
    
    //GETTER
    public String getName() {
        return name;
    }

    public float getLife() {
        setLife(vit*lifeModifier);
        return life;
    }

    public float getMana() {
        return mana;
    }

    public float getStamina() {
        return stamina;
    }

    public float getArmor() {
        return armor;
    }

    public int getStr() {
        return str;
    }

    public int getInte() {
        return inte;
    }

    public int getLuck() {
        return luck;
    }

    public int getDef() {
        return def;
    }

    public int getVit() {
        return vit;
    }
    
    
    
}

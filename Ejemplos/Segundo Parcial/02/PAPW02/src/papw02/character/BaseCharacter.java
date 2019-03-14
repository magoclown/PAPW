/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw02.character;

import papw02.Transformations.Transform;

/**
 *
 * @author magoc
 */
public abstract class BaseCharacter {
    protected String name;
    
    protected float life;
    protected float mana;
    protected float armor;
    protected float speed;
    protected float attack;
    
    protected int vit;
    protected int inte;
    protected int luck;
    protected int str;
    protected int dex;
    protected int def;
    protected int agi;

    public Transform transform;
    
    public BaseCharacter(String name, int vit, int inte, int luck, int str, int dex, int def, int agi) {
        this.name = name;
        this.vit = vit;
        this.inte = inte;
        this.luck = luck;
        this.str = str;
        this.dex = dex;
        this.def = def;
        this.agi = agi;
    }

    public BaseCharacter() {

    }

    public BaseCharacter(BaseCharacter other) {
        this.name = other.getName();
        this.vit = other.getVit();
        this.inte = other.getInte();
        this.luck = other.getLuck();
        this.str = other.getStr();
        this.dex = other.getDex();
        this.def = other.getDef();
        this.agi = other.getAgi();
    }
    
    public String getName() {
        return name;
    }

    public float getLife() {
        return life;
    }

    public float getMana() {
        return mana;
    }

    public float getArmor() {
        return armor;
    }

    public float getSpeed() {
        return speed;
    }

    public float getAttack() {
        return attack;
    }

    public int getAgi() {
        return agi;
    }

    public void setAgi(int agi) {
        this.agi = agi;
    }

    public int getVit() {
        return vit;
    }

    public int getDef() {
        return def;
    }

    public void setDef(int def) {
        this.def = def;
    }

    public void setVit(int vit) {
        this.vit = vit;
    }

    public int getInte() {
        return inte;
    }

    public void setInte(int inte) {
        this.inte = inte;
    }

    public int getLuck() {
        return luck;
    }

    public void setLuck(int luck) {
        this.luck = luck;
    }

    public int getStr() {
        return str;
    }

    public void setStr(int str) {
        this.str = str;
    }

    public int getDex() {
        return dex;
    }

    public void setDex(int dex) {
        this.dex = dex;
    }
    
    
    
}

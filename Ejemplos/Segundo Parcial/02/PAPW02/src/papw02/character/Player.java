/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package papw02.character;

/**
 *
 * @author magoc
 */
public class Player extends BaseCharacter{

    public Player(String name, int vit, int inte, int luck, int str, int dex, int def, int agi) {
        super(name, vit, inte, luck, str, dex, def, agi);
    }

    public Player(BaseCharacter other) {
        super(other);
    }

    public Player() {
    }
    
}

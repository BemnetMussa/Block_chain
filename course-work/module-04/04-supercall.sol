// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

contract Mage is Hero(50) {
    function attack(Enemy enemy) public override {
        // Specific Mage logic
        enemy.takeAttack(AttackTypes.Spell);
        
        // Invoke base Hero logic (e.g., energy reduction)
        super.attack(enemy);
    }
}

contract Warrior is Hero(200) {
    function attack(Enemy enemy) public override {
        // Specific Warrior logic
        enemy.takeAttack(AttackTypes.Brawl);
        
        // Invoke base Hero logic (e.g., energy reduction)
        super.attack(enemy);
    }
}
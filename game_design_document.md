# (magic-boss-fighter) Design document

## Contents

## Introduction

### Game summary

(magic-boss-fighter) is a 2D action game where player uses flying mechanics and diffrent wands clearing areas and defeating bosses. Main giimmic of game is to use flying and wands in order to defeat enemies.

### Inspiration

#### Terraria

Terraria is a sandbox game with survival elements and main goal of the game is to defeat all the bosses in order to progress, Until you defeat the moon lord the last boss. (magic-boss-fighter) flying and wand mechanics are inspired Terraria wing mechanics and magic wand system.

### Player experience

In a single dungeon every level player will encounter small enemies and will need to defeat them in order to unlock the boss room where upon defeating the boss of the level player progresses and gets a new type of wand that resembles the boss attacks. After completing linear progression player unlocks __roguelike mode__ where player has limted lifes and is challenged to complete all stages with harder bosses and with limited choice of wands.

### Platform

Game will be mainly developed for PC and android version is in plan for future.

### Development Software

* Godot as the game engine
* Krita and piksel for art

### Genre

Singleplayer, Action, Bullet Hell, RogueLike

### Target audience

With simple movement and fighting mechanics, yet challenging bullet hell this game is marketed for bullet hell enjoyers and players that love active action and boss fighting. And there will also be adventure mode for casual players that want story

## Concept

### Gameplay overview

The player controls a character with ability to fly for limited time depending on wing stamina. Player uses Wands to defeat enemies in levels and clearing bosses after clearing the boss subordinates. After defeating boss player unlocks new wands with diffrent abilites.

### Primary mechanics

* Enemies - A character or object attacking the player with goal to kill the player.

* Spikes - A obsticle for character to avoid. Takes health when touched. Enemies can also be hurt when touched.

* Bosses - A final stage enemy that will have a specific arena to fight in. Arenas can be only unlcoked after defeating enemies in stage.

* Wings - Main movement mechanic used for avoiding spikes and enemies.

* Wands - Main combat weapon. Wands have diffrent avilities and primary fire types. Drops from bosses in first playtrough. Wands playstyles are based on the boss they were dropped from.

### Secondary mechanics

* Dash - A Movement ability that uses wing stamina in order to dash mid-air. Hitting enemy while dashing will knock back enemy except bosses. While dashing player is immune to damage. Can dash in any direction.

* Glide - A movement ability that makes the player glide after the wing stamina has been depleted. Can only be activated in air.

* Ablities - Abilities will be based on equiped wand. There will 2 types of abilities at the disposal. Defensive and Offensive spells.

### Wand mechanics

#### Wand abilities

* Primary attack - Basic attack depending on the wand type.

* Utility Ability - Abilities that has wand specific utility.

* Defensive abilities - Abilities that increase the survivability. Costs more resources. Has longer cooldown.

* Offensive ablities - Abilities that increase the combat effectivenes. Bonus damage to Boss weakpoints.

#### Wand resource

Wands will have diffrent resource types. And diffrent types will have diffrent requirements how to refill them.

* Mana - most common resource used for abilities. Refills at a constant rate which can be improved by having upgrades.

* Lifeforce - Is an essence of the living giving Wand more power but only way to gain life essence is by killing enemies and collecting their essence.

* Blood - Makes your health as the resource, dropped from enemies when hit with melee Wands or spikes, resource used on melee Wands.

#### Wand control

* Primary fire - activates wands basic attack

* Secondary fire - uses Utility Ability

* 1st ability - cast a defensive spell

* 2nd ability - cast an offensive spell

#### Wand types

* Melee wands - magic wands that mimic melee weapons like swords, and other close combat weapons. Melee weapons will have reduced damage from ranged attacks.
  * Basic attack - Close range attack large area attack. Inflicts physical damge.

  * Utility - Deflects ranged projectile attacks. *Cooldown Based*

  * Defensive ability - Makes it easier to get close to the enemies without loosing too much health. *Cooldown based*.

  * Offensive ability - Cyclable ability that an be used together withbasic attack to perform combos. *Blood based*.

  * Fall Attack - attacking while __falling__ will activate a fall attack that will rapidly __fall__ to the ground.
    * Landing on the ground creates shockwave that knocks enemies away from source. Player has a small __delay__ before they can move.
    * Landing on the enemy will kill the enemy and player will have no __delay__ before moving. Can dash.

* Ranged wands - magic wands that shoots a projectile or ray from the end of the wand. Inflicts Magic damage.
  * Basic attack - Ranged attack. Can be projectiles or laser.

  * Utility - Recharges Wand specific resource. *Cooldown based*

  * Defensive ability - Makes it easier to avoid damage or replenish health.
  * Offensive ability - Strong Damage spell or Self buff that Increases effectiveness of the Wand.
  * Glide attack - Casting ability while gliding will stop you mid air and give you full control of your movement for short time. *Doesnt use Wing stamina*.

#### Wand resource behaviour

* Mana wands - Basic magic wand type that will have low cooldowns on abilities all abilities use mana.
* Lifeforce wands - Are stronger wands than mana wands but they require to kill enemies to refill the resource. Offensive ability does devastating damage to boss. Full bar will have enough for atleast 2 spells. Abilities has no cooldowns.
* Blood wands - Melee wand resource turning player health into resource. Used for casting abilites. Can be replenished by collecting blood. High risk high reward Playstyle.

#### Wand playstyles

* Aggresive melee - wand kit specialized for aggresive play. Rewards players for being aggresive by allowing players to heal from the damage they inflict.
  * passive - Ranged attacks deal less damage.
* Artilery mage - wand kit specialized in long keeping distance from enemies and dealing damag from a large distance. Abilities cost more mana.
  * passive - More wing stamina.
* Elemental mage - wand kit specialized in inflicting elemental damage.
Elements can be combined for greater damage. Abilities cost less mana.
  * passive - Elemental immunity
* Laser mage - wand kit specialized direct ray damage. Primary fire uses Mana. Abilities enhance laser effectiveness.
  * passive - Increased mana regen
* Nuke mage - wand kit specialized in boss killing. Requires lifeforce as the main resource. Has weaker primary fire, but has Really strong abilities.
  * passive - Abilities deal more damage to the boss, can get lifeforce from boss.
* Basic mage - Basic wand kit that revolves around basic attack. Shoots basic projectiles. Has Strong defensive ability. Offensive ability enhances basic attack. Uses Lifeforce.
  * passive - Increased basic damage.

## Art

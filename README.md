# boo

### game idea : hack&slash
- high damage enemy
- healing only from perfect kill
- encourage element decision making
- wuxing element system
- modular weapon
- friendship???
- medieval for theme (wuxia???)

## Weapon

base weapon class : res://Scenes/Weapon.tscn

*see res://Scenes/Weapons/Dao.tscn for reference*

WeaponName

\-Pivot <- animate this guy when doing transformations

\-\-Sprite

\-\-HurtArea

\-\-\-put a collision shape here

\-AnimationPlayer

### Create a New Weapon by :
- Go to Scene/New Inherited Scene...
- Select res://Scenes/Weapon.tscn
- Change Name as Appropriate
- Save To res://Scenes/Weapons/ Folder
- (Optional) Right Click on the Root Node and Extend Script 

(currently this step is mandatory, as you need to set active to true)

(active variable will be used when the Weapon Manager system is done)

- Go to Inspector Tab on the Right and Create New Resource (left most button)
- Select "WeaponAttribute" *see WeaponAttribute on what the variables mean
- When That's Done, Save it as "*YourWeapon*_Attribute" in the res://Scenes/Weapons/ Folder
- Go Back to Your Weapon Scene, at The Root Node of Your Weapon, Drag YourWeapon_Attribute.tres to the "Attribute" on Inspect Tab
- Add CollisionShape2D to HurtArea
- Make a Animation on AnimationPlayer Called "base_attack"

### Tips on Animating : 

- hurtAreaActive is a boolean that decides whether the HurtArea can hurt enemies
- When doing transformations like rotation and position, animate Pivot, that way the weapon's actual rotation doesn't get affected

## Effect

base weapon class : res://Scenes/Effect.tscn

*see res://Scenes/Effects/Effect_Bleed.tscn for reference*

### Create a New Effect by :
- Go to Scene/New Inherited Scene...
- Select res://Scenes/Effect.tscn
- Change Name to Effect_YourEffect
- Save To res://Scenes/Effects/ Folder
- Right Click on the Root Node and Extend Script 
- Make a Function `func _setup(_config:Dictionary):`

\_config is a Dictionary that Contains Your Effect Settings, You Can Use Any Keys You Like, Just Make Sure When You Use It, Name Those Keys Exactly as in Here

applyee (currently) References to the Zomber Instance, or Any Enemy, Use `applyee.hurt()` or Other Stuff to Make the Effect

It *Should* Reference to Any Entity Including Player

- Make Your Effect, Add Nodes, Cool Code, Whatever

### How To Use :

On Weapon, You Can Use `add_effects()`

`add_effects(PackedScene of the Effect, {"dmg": 0.5, "whateverKey": whateverValue})`

The Keys Must Match the Ones You Use in That Effect Script Exactly

This Will Inflict the Effect on Hit

Or If You Have Reference to an Enemy, `thatEnemy.hurt(0, [{"PackedScene": PackedScene of the Effect, "Config": {"dmg": 0.5, "whateverKey": whateverValue}}])` Should Also Work, as Well as `thatEnemy.inflict({"PackedScene": PackedScene of the Effect, "Config": {"dmg": 0.5, "whateverKey": whateverValue}})`. This Mess Will Be Improved.

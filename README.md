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

WeaponName

\-Pivot <- animate this guy when doing transformations

\-\-Sprite

\-\-HurtArea

\-\-\-put a collision shape here

\-AnimationPlayer

Create a New Weapon by :
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

Tips on Animating : 

- hurtAreaActive is a boolean that decides whether the HurtArea can hurt enemies
- When doing transformations like rotation and position, animate Pivot, that way the weapon's actual rotation doesn't get affected

## Effect


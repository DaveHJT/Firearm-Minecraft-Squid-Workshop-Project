

# _Squid Workshop's_ Firearm Data Pack
A [minecraft datapack](https://minecraft.fandom.com/wiki/Data_Pack) that introduces ray-casting, guns and throwables into this game.

<span id = "collection">
<p>
<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/firearms_collection.jpg?raw=true" width="700">
</p>
</span>

- [Abstract](#Abstract)
- [Installation](#installation)
- [Property List](#Property-List)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract
This datapack used only the [minecraft commands](https://minecraft.fandom.com/wiki/Commands) to build a raycasting system, a hitbox detection system and a throwable hit detection system. This datapack depends on the [damage system](https://github.com/DaveHJT/Damage-Minecraft-Squid-Workshop-Project) I completed earlier.

This datapack provides a number of guns, grenades, arrows and equipment (explosive arrows, jetpacks, turrets, etc.) that have vastly different properties and usages. The newly added weapons also have the PVP death count and death message functionalities embedded in the original systems in Minecraft.

After a huge number of testing, there should be no bug that can greatly damage your game experience. High-level API of getting the new items and settings are included. So it's suitable to be used in PVP or PvE maps and datapacks.


# Installation
- Step 1 **Before installation, install my [damage datapack](https://github.com/DaveHJT/Damage-Minecraft-Squid-Workshop-Project) first.**

- Step 2 Download this repository as .zip and unpack, you will get three folders: 2 datapack folders + 1 resourcepack folder.
	- **Firearms-Resourcepack-Squid-Workshop-1.16.5**
	- **Gun-Datapack-Squid-Workshop-1.16.5**
	- **Throwable-Datapack-Squid Workshop-1.16.5**
- Step 3 Install the two datapacks together, if you don't know how to install datapacks, see [Tutorials/Installing a data pack](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack)
	- **Gun-Datapack-Squid-Workshop-1.16.5**
	- **Throwable-Datapack-Squid Workshop-1.16.5**
- Step 4 Load the resourcepack, if you don't know how to load resourcepacks, see [Tutorials/Loading a resource pack](https://minecraft.fandom.com/wiki/Tutorials/Loading_a_resource_pack)
	- **Firearms-Resourcepack-Squid-Workshop-1.16.5**
- Step 5 If successfully installed, you will see the messages: 


  
# Instruction
## Guns
1. Get the guns by the following command:
	*	**get all guns:**			

			function app:get/allguns
	*	**get gun by it's name; for example, silenced_rifle:**			

			function app:get/silenced_rifle



2. You need to get some ammo:

				function app:get/ammo/2500

3. Reload the gun by pressing **F** then wait for the reload! 
4. **Right Click** to shoot! (hold the right button for minigun)
5. <span id = "swap">**Swap**: When the gun is reloaded, press **F** again to switch gun type!(add/remove silencer; swap between slug and buck ammo..)</span>
6. Hold **Shift** to aim!
7. Similar to CSGO, the accuracy is affected by two factors:
	* **Recoil**: The gun bounces upward when firing for too long, use tap fire or small bursts to avoid recoil.
	* **Spread**: The random inaccuracy introduced by movement, **aiming<standing<walking<running<<jumping**. (walking while aiming is also not very accurate)

## Throwables
1. Get the throwables by the following command:
	*	**get all throwables (or 16x all throwables at one time):**			

			function app:get/allthrowables
			function app:get/16/allthrowables
	*	**get throwable by it's name; for example, grenade (or 16x grenades at one time):**			

			function app:get/grenade
			function app:get/16/grenade
2. **Right-click** to throw it.

## Jetpack
1. Get the jetpack by the following command:

			function app:get/jetpack

2. Click **Shift** to launch, there are cooldowns between consecutive launches;
3. Hold **Shift** any time for slow falling.

## Bow of Light Beam
1. Get the bow by the following command:

			function app:get/bow_of_light_beam

2. The bow shoots any arrow in a form of light beam, which means the arrow travels in a **straight line** like bullets.

## Shield
1. Hold a common shield, then any bullets that come from the direction you are facing will be **reflected** by the shield.



# Property List
## Guns
| Name| Icon | [Swap To](#swap) | Damage | Recoil | Spread | Scope | Bullet Speed |Description |
| --- | --- | --- | --- | --- | --- | --- | --- | :--------- |
| rifle | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/rifle.png?raw=true" width="200">| silenced_rifle | 5 | high | medium | Iron Sight | fast | Capable of  engagements from all ranges. Suitable for shooting while standing still.
| rifle_silenced |<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/rifle_silenced.png?raw=true" width="200"> | rifle | 4 | medium| medium | Iron Sight | fast | Same as the rifle, except for lower sound, recoil and damage.
| smg|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/smg.png?raw=true" width="200"> | smg_silenced | 4| medium| low| Iron Sight | slow | Good at short range engagements; suitable for shooting while running.
| silenced_smg |<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/smg_silenced.png?raw=true" width="200"> | smg| 3| low| low | slow | Iron Sight | Same as the rifle, except for lower sound, recoil and damage.
| shotgun_buck | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/double_barrel_shotgun.png?raw=true" width="200">| shotgun_slug | 3x10| high| high| Iron Sight | slow | One hit kill in short range; not accurate while moving; fire 10 bullets at one time.
| shotgun_slug | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/double_barrel_shotgun_copper.png?raw=true" width="200">| shotgun_buck | 17| high| high| slow | Iron Sight | Shoots a large and powerful bullet at one time. But only contains two bullets, not very accurate.
| sniper | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/awm.png?raw=true" width="200"> | NONE | 22 | high | low | 8xScope| fast | One hit kill; extremely inaccurate without scope or moving.
| laser|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/laser_rifle.png?raw=true" width="200"> | NONE | 2 | no | low | 8xScope| fast | Shoot out a laser beam that has no recoil; hard to target the laser when moving. Charged slowly by hand so doesn't cost ammo, don't charge for too long or it will...
| minigun|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/minigun.png?raw=true" width="200"> | NONE | 6 | no | low | reddot | fast | Most powerful gun for fire suppression and fast rate of fire; contains 500 bullets; slow reloading.

## Throwables & Arrows
Arrow Name: there is an arrow type that has the same effect as the throwable.
| Name | Icon | Effect | Arrow Name| Damage | Interact \w Mobs | Interact \w Turret |Description |
| --- | --- | --- | --- | --- | --- | --- | :--------- |
| grenade|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/grenade2.png?raw=true" width="100">  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/grenade_effect.png?raw=true" width="300">| arrow_grenade| high | deal damage| destroy | Just grenade, even works in water.|
| smoke|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/smoke.png?raw=true" width="200">  |<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/smoke_effect.png?raw=true" width="300"> | arrow_smoke| no | slowness in smoke| disable in smoke | Used for blocking sights. Player, mobs and even turrets get blind in smoke. Can be used to put out fire introduced by molotov.|
| flash|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/flash.png?raw=true" width="200">  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/flash_effect.png?raw=true" width="300">| no, flash is too annoying| no | slowness| none | Gain temporary slowness and blindness if get flashed.|
| molotov|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/molotov.png?raw=true" width="200">  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/molotov_effect.png?raw=true" width="300">| arrow_molotov| 2/few ticks | slowness and damage| destroy | The fire can be put out by smoke. Molotov will not be ignited in water or smoke.|
| xirang|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/xirang.png?raw=true" width="200">  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/xirang_effect.png?raw=true" width="300"> | no| no | none| none | The name Xirang is from an ancient Chinese tale called ShangHaiJing, it means breathing dirt. Grows to a tall wall immediately when landing on the ground.|
| turret|<img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/turret.png?raw=true" width="200">  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/turret_effect.png?raw=true" width="300"> | no| 3 per bullet; 11 on self explosion | automatically aim enemy(any mob that score team != team score of turret's creater) and shoot| none | Each turret has 50 ammo. Turrets are not able to work in water and will explode in lava. Turrets destroy itself if: 1. Enemy get too close. 2. Being shot by bullet or arrow. 3. By grenade, Molotov. 4. Used up ammo. 5. It gets blind in smoke.|
| arrow_explosive|  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/arrow_explosive_effect.png?raw=true" width="300"> | no| 3 per bullet; 2 by explosion | damage| destroy | Explode, smaller radius and damage than the grenade.|
| arrow_light_beam|  | <img src="https://github.com/DaveHJT/Firearm-Minecraft-Squid-Workshop-Project/blob/main/Media/arrow_light_beam_effect.png?raw=true" width="300"> | no| 5 | damage| destroy | An arrow that travels in straight line like a light beam.|

**TO BE CONTINUED**



# Terms of Use
Feel free to play around with this datapack. \
As a developer, feel free to use this datapack as a module to develop free datapacks. \
But you **must** add the link to this GitHub page! \
**NO COMMERCIAL USE**
## License
[Mozilla Public License 2.0](https://github.com/DaveHJT/Damage-Datapack-Minecraft-Squid-Workshop/blob/main/LICENSE)

# More About Squid Workshop
Check out **more datapacks** developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on Wechat: 鱿鱼MC工作室 


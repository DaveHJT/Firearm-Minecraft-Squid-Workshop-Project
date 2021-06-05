
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
- [How It Works](#How-It-Works)
- [Project Tree](#Project-Tree)
- [Incompactibility](#Incompactibility)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract
This datapack used only the [minecraft commands](https://minecraft.fandom.com/wiki/Commands) to build a raycasting system, a hitbox detection system and a throwable hit detection system. This datapack depends on the [damage system](https://github.com/DaveHJT/Damage-Minecraft-Squid-Workshop-Project) I completed earlier.

This datapack provides a number of guns, grenades, arrows and equipments (explosive arrows, jetpacks, turrets, etc.) that have vastly different properties and usages. The newly added weapons also have the pvp death count and death message functionalities embedded in the original systems in Minecraft.

After a huge number of testing, there should be no bug that can greatly damage your game experience. High level API of getting the new items and settings are included. So it's suitable to be used in pvp or pve maps and datapacks.


# Installation
- Step 1 **Before installation, install my [damage datapack](https://github.com/DaveHJT/Damage-Minecraft-Squid-Workshop-Project) first.**

- Step 2 Download this repository as a zip and unpack, you will get three folders: 2 datapack folders + 1 resourcepack folder.
	- **Firearms-Resourcepack-Squid-Workshop-1.16.5**
	- **Gun-Datapack-Squid-Workshop-1.16.5**
	- **Throwable-Datapack-Squid Workshop-1.16.5**
- Step 3 Find  your **.minecraft** directory, usually under
	- **C:/Users/youUserName/AppData/Roaming/.minecraft**
- Step 4 Find the **resourcepacks** folder and drop the folder
	- **Firearms-Resourcepack-Squid-Workshop-1.16.5**  >>   **.minecraft/resourcepacks**
	
	under the **resourcepacks** folder.
- Step 5 Go back to **.minecraft** directory and choose the save which you want to install the datapack in the **saves** directory, call it's name "worldName".
- Step 6 Drop these folders
	- **Gun-Datapack-Squid-Workshop-1.16.5**  >>  ./"worldName"/world/datapacks
	- **Throwable-Datapack-Squid Workshop-1.16.5**  >>  ./"worldName"/world/datapacks

- Step 7 Open Minecraft and open the save you just installed the datapack in.
- Step 8 In **Options -> Video Settings -> Resource Packs**, add the firearm resourcepack into **selected** window and click **Done**.
- Step 9 In game, type "/reload" command then press enter.
- Step 10 If successfully installed, you will see the messages: 

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
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


# Property List
## Guns
| Name| Icon | [Swap To](#swap) | Damage | Recoil | Spread | Scope | Bullet Speed |Description |
| --- | --- | --- | --- | --- | --- | --- | --- | :--------- |
| rifle | | silenced_rifle | 5 | high | medium | Iron Sight | fast | Capable of  engagements from all ranges. Suitable for shooting while standing still.
| silenced_rifle | | rifle | 4 | medium| medium | Iron Sight | fast | Same as rifle, except for lower sound, recoil and damage.
| smg| | silenced_smg | 4| medium| low| Iron Sight | slow | Good at short range engagements; suitable for shooting while running.
| silenced_smg | | smg| 3| low| low | slow | Iron Sight | Same as rifle, except for lower sound, recoil and damage.
| shotgun_buck | | shotgun_slug | 3x10| high| high| Iron Sight | slow | One hit kill in short range; not accurate while moving; fire 10 bullets at one time.
| shotgun_slug | | shotgun_buck | 17| high| high| slow | Iron Sight | Shoots a large and powerful bullet at one time. But only contains two bullets, not very accurate.
| sniper | | NONE | 22 | high | low | 8xScope| fast | One hit kill; extremely inaccurate without scope or moving.
| laser| | NONE | 2 | no | low | 8xScope| fast | Shoot out laser that has no recoil; hard to target the laser when moving. Charged slowly by hand so doesn't cost ammo, dont' charge for too long or it will...
| minigun| | NONE | 6 | no | low | reddot | fast | Most powerful gun for fire suppression and fast rate of fire; contains 500 bullets; slow reloading.

## Throwables & Arrows
Arrow Name: there is an arrow type that has the same effect as the throwable.
| Name | Icon | Effect | Arrow Name| Damage | Interact \w Mobs | Interact \w Turret |Description |
| --- | --- | --- | --- | --- | --- | --- | :--------- |
| grenade| | | arrow_grenade| high | deal damage| destroy | Just grenade, even works in water.

**TO BE CONTINUED**

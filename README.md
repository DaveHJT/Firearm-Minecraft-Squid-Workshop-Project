# _Squid Workshop's_ Firearm Data Pack
A [minecraft datapack](https://minecraft.fandom.com/wiki/Data_Pack) that introduces ray-casting, guns and throwables into this game.

- [Abstract](#Abstract)
- [Installation](#installation)
- [Instruction](#Instruction)
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
	- **C:/Users/youUserName/AppData/Roaming/.minecraft.**
- Step 4 Find the **resourcepacks** folder and drop the folder
	- **Firearms-Resourcepack-Squid-Workshop-1.16.5**
	
	under the **resourcepacks** folder.
- Step 5 Go back to **.minecraft** directory and go to the **saves** directory.
- Step 6 Choose the save which you want to install the datapack and go to it's **./world/datapacks** folder.
- Step 7 Drop these folders
	- **Gun-Datapack-Squid-Workshop-1.16.5**
	- **Throwable-Datapack-Squid Workshop-1.16.5**

	 into **./world/datapacks** folder.
- Step 8 Open Minecraft and open the save you just installed the datapack in.
- Step 9 In **Options -> Video Settings -> Resource Packs**, add the firearm resourcepack into **selected** window and click **Done**.
- Step 10 In game, type "/reload" command then press enter.
- Step 11 If successfully installed, you will see the messages: 

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
# Instruction
## Guns
1. Get the guns by the following command:
	*	**get all guns:**			

			function app:get/allguns
	*	**get gun by it's name in the table; for example, silenced_rifle:**			

			function app:get/silenced_rifle



2. You need to get some ammo:

				function app:get/ammo/2500

3. Reload the gun by press **F** then wait for the reload! 
4. **Right Click** to shoot! (hold the right button for minigun)
5. When the gun is reloaded, press **F** again to switch gun type!(add/remove silencer; swap between slug and buck ammo..)
6. Hold **Shift** to aim!
7. Similar to CSGO, the accuracy is affected by two factors:
	* **Recoil**: The gun bounces upward when firing for too long, use tap fire or small bursts to avoid recoil.
	*  **Spread**: The random inaccuracy introduced by movement, **aiming<standing<walking<running<<jumping**. (walking while aiming is also not very accurate)



**TO BE CONTINUED**

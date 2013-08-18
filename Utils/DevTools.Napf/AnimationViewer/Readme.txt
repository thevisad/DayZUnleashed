
Title:   Arma2:OA Animation Viewer

Author:  Clayman	<worldofclay@gmx.de>

Version: 1.3b

Date:    07-02-2010


******************************


Description:
This is a small demo mission to let you watch all the ingame unit animations (=moves).
You can sort the moves via different filter options and copy the animation name to the clipboard for use in your own mission.


To use an animation in your mission, put one of the following codes in a script file, a trigger or waypoint:
(For gestures, use the playAction or switchAction commands.)

	UnitName playMove "AnimationName";
	UnitName switchMove "AnimationName";

Note: This will not work in the Init line of an unit!


******************************


Required:
This version of the Animation Viewer requires ARMA2: Operation Arrowhead (with OR without original Arma2).
CBA (Community Base Addons) is also required for the search function:
http://www.armaholic.com/page.php?id=6231


******************************


Installation:
Copy the AnimViewerOA.Desert_E folder to your mission folder, e.g.

        \My Documents\ArmA2\missions or 
        \My Documents\ArmA2 Other Profiles\[profile name]\missions

Start up the mission editor on Desert and load the AnimViewer.


******************************


To add the Viewer to your own mission, copy the folder 'AnimationViewer' to your mission folder.
Add this to your 'description.ext':

	#include <AnimationViewer\include.h>

Add this to your 'init.sqf' or the Init line of any unit:

	nil = [] execVM "AnimationViewer\init.sqf";


Note: Don't forget to remove all the above before exporting your mission to SP / MP missions! ;-)


******************************


You can save as many animations as you wish in the 'Saved Animations' ListBox.
When clicking on 'Copy', all the saved animations will be copied to clipboard.


******************************


Animation Names:
To help you find a certain animation, this will explain how most of the animation names are put together. 

A - Animation(?)

    * mov - Move
    * idl - Idle
    * wop - Weapon Operation
    * ovr - Over
    * inv - Inventory
    * inj - Injured
    * cin - Carry Injured(?)
    * sig - (Hand)Signal
    * dth - Death
    * swm - Swim
    * crg - Cargo
    * cts - Cutscene


P - Position

    * erc - Errected
    * knl - Kneel
    * pne - Prone
    * sit - Sit
    * swm - Swim (again?)
    * fal - Fall(?)


M - Move / Motion

    * stp - Stop
    * wlk - Walk
    * run - Run
    * spr - Sprint
    * eva - Evase


S - Stance(?)

    * ras - Raised
    * low - Lowerd
    * gth - Grenade Throw
    * lay - Lay
    * non - None
    * old - Old (Woman animation only)


W - Weapon

    * rfl - Rifle
    * lnr - Launcher
    * pst - Pistol
    * non - None
    * bin - Binocular
    * una - ???
    * mag - Magazine(?)


D - Direction

    * non - None
    * f - Forward
    * fr - Forward Right
    * r - Right
    * br - Back Right
    * b - Back
    * bl - Back Left
    * l - Left
    * fl - Front Left


******************************


Disclaimer:
Use this whatsoever at your own risk. I take no responsibility for (im)possible damage 
to your game/system/health/relationship/life that may be caused by installation of this.



******************************


Version History / Change Log:

V 1.3a / 1.3b
* Seperated versions for Arma2 and Arma2: Operation Arrowhead

V 1.3
* Added missing animations for ARMA2
* Added animations for A2:OA
* New: Search function
* New: Stop button: ends currently played animation (if possible)
* Changed: Reset button now really resets animator (instead of only stop/overwrite anim)
* New: Pre-selection of unit's Stance (UnitPos) and Weapon


V 1.2
* Animation Viewer can be added to any existing mission
* New: Save more than one animation at a time
* New: Added animal animations
* Cleaned up the code and other cosmetics


V 1.1
* Added ~450 animations for Soldiers and Women (mostly Vehicle / Cargo)
* Changed: Made the Buttons and ComboBoxes darker for better visibility


V 1.0
* All animations from anim.pbo included
* New: Unit can be viewed from different angles
* Changed: Textfield replaced by Copy Button
* Some minor bugs fixed
* All scripts now in .sqf syntax


V BETA2
* All Soldier animations included
* Fixed: switchMove button caused unit to freeze
* New: Zoom function
* Changed: New design


V BETA1
* First release


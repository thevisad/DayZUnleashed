=========================================================================================================
 Object Browser
 Version: 1.2.0
 Author: Kronzky (www.kronzky.info / kronzky@gmail.com)
=========================================================================================================

 Displays all visible objects (official game items, as well as addons) in the editor.

=========================================================================================================

 Installation:
   Locate your mission folder (most likely under "My Documents\ArmA\missions", 
   and extract all files (including their folder name) into that directory.
 
 Usage:
   Open the editor and select "Rahmadi / Object Browser".
 
   Use the action menu to select either the vehicles, weapons and objects (cfgNonAiVehicles) listings.
   
   Navigate through the menu by either clicking on an item at the bottom section of the list,
   to go deeper into the object tree, or by clicking the top line of the list to move upwards.
   If an entry is followed by an ellipsis ("...") it means it has child objects below it.
   
   Keep in mind that a lot of items in the list are just "proxies", without any visible 3D model.
   These entries are normally indicated by parentheses.
   So even though their names will appear in the menu, nothing will show up on the map.
   
   Also, some of the classes are *very* big, with hundreds of entries (esp. the buildings).
   These may take up to a minute to fill the selection list.
   
=========================================================================================================

 Version History:
 1.0.0  First release
 1.1.0  Added class cfgNonAiVehicles (Streetlights, Animals)
        Dialogs are now movable
        Title dialog (at top) is retained when escaping out of full display
        Previous selections are pre-selected when re-entering the dialog
 1.2.0  Selection list can now be hidden
        Objects without 3D model are not displayed in list
  
=========================================================================================================

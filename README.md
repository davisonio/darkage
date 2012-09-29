=== DarkAge MOD for MINETEST-C55 ===
by Master Gollum

Introduction:
  This mod adds a few new blocks that allows to create new buildings in a
  pre industrial landscape. Of course, feel free to use them in any other 
  construction :P

  I used mainly 4 square recipes to avoid collisions with other MODs, 
  anyway I have not checked all them, so it is possible that another 
  person is already using one or more of this combinations.

  I also used Desert Sand and Desert Stone, because they almost are not
  used in the default version. Probably I will change this recipes in 
  the next release.

PS: This document has been structured as the README.txt of PilzAdam in 
    his Bed MOD.

How to install:
  Unzip the archive an place it in minetest-base-directory/mods/minetest/
  if you have a windows client or a linux run-in-place client. If you 
  have a linux system-wide instalation place it in 
  ~/.minetest/mods/minetest/.
  If you want to install this mod only in one world create the folder
  worldmods/ in your worlddirectory.
  For further information or help see:
    http://wiki.minetest.com/wiki/Installing_Mods

How to use the mod:
  Just craft or cook some blocks and you will get the new ones.

    Basalt: a darken version of the default Stone
       COOKING
       [Basalt Cobble]

    Basalt Cobble: A darken version of the default Cobble
       CRAFT -> 4
       [Cobble] [Cobble]
       [Coal Lumb] [Coal Lumb]

    Dark Dirt: A darken version of the Dirt where the grass doesn't
       grown, perfect for create a path in a forest. I was using
       Ggravel, but the noise walking was annoying to me (like
       walking over iron coal with the nude feet :P), for this I
       created this node.
       CRAFT -> 4
       [Dirt] [Dirt]
       [Gravel] [Gravel]

    Gneiss: high grade metamorphic rock formed from Schist, very 
       common, and used in construction. It sometimes brokes in 
       Gneiss Cobble when being digged.
       COOKING
       [Schist]

    Gneiss Cobble: brick version of the gneiss.
       From dig gneiss
       
    Mud: mixture of water and some combination of soil, silt, and
       clay. Used for build houses, specially in desertic regions.
       It brokes in 4 Mud Lumps when digged.
       CRAFT -> 3
       [Dirt] [Dirt]
  	   [Clay Lump] [Silt Lump]
       CRAFT -> 1
       [Mud Lump] [Mud Lump]
       [Mud Lump] [Mud Lump]

    Old Red Sandstone: a light red sandstone, in fact it's 
       sandstone with iron that gives it this color.
       CRAFT -> 4
       [Sandstone] [Sandstone]
       [Iron Lumb] [Sandstone]
       COOKING
       [Old Red Sandstone Cobble]

    Old Red Sandstone Cobble: Cobbles of Old Red Sandstone.
       CRAFT -> 4
       [Sandstone Cobble] [Sandstone Cobble]
       [Iron Lumb] [Sandstone Cobble]
       COOKING
       [Desert Stone] --> I think I will change it in the future
                          release with its own Cobbles.
    
   Sandstone Cobble: brick version of the Sandstone, good for
       buildings with a pale color.
       COOKING
       [Sandstone]

   Schist: medium grade metamorphic rock from Slate.
       COOKING
       [Slate]
   
   Silt: granular material of a size somewhere between sand and clay.
       It brokes in 4 Silt Lumps.
       CRAFT -> 3
       [Sand] [Sand]
       [Clay Lump] [Clay Lump]
       CRAFT -> 1
       [Silt Lump] [Silt Lump]
       [Silt Lump] [Silt Lump]
       
   Slate: fine-grained, foliated, homogeneous metamorphic rock 
       derived from an original shale-type sedimentary rock through
       low-grade regional metamorphism. It is used to build roof.
       COOKING
       [Shale]

   Desert Stone: just the default block, it can be obtained now
       from Desert Sand. The idea is that Desert Sand is stonner
       than regular Sand, so it takes less to create a Desert
       Stone than a Sandstone.
       CRAFT -> 2
       [Sandstone] [Sandstone]
       [Sandstone] [Sandstone]



License:
Sourcecode: WTFPL (see below)
Graphics: WTFPL (see below)

See also:
http://minetest.net/

         DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO. 
See: https://www.gamesthatwerent.com/2023/10/moon-patrol-clone/

Disassembly of a Moon Patrol clone written by Oliver Ridler at the age of 12 for the VIC-20, with a view to reverse engineering the program at some stage in the future.

It was rejected by a publisher but nonetheless is an excellent attempt for someone of that age working with the tools available at the time. 

It is for an unexpanded VIC-20 (5Kb RAM, including the video RAM) so who knows what he could have done with an extra 8Kb or more. 

The disassembly is in KickAssembler format with the Basic startup code replaced. 

It can be run in VICE using Inject To Ram and with all RAM expansions disabled. 

To launch the VIC-20 version of VICE automatically with Sublime Text/Kickass you need to add "kickass_run_path": "YOUR_PATH/vice/bin/xvic.exe" to your KickAssembler (C64).sublime-settings file. You'll need to switch this back to x64sc.exe if you want to return to C64 work.


I started replacing labels that point to areas in the custom charset with hard-coded values, so I can eventually import that section as a separate binary that can be edited easily in Charpad (see moon - chars.bin). I would then create new labels that point to the specific bytes that the program is directly manipulating in the floor tiles in order to create the scrolling effect. This is not yet complete so the char data is still the same as spit out by the disassembler.




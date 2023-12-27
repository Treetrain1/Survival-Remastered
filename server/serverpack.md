# Server pack creation


This is how server packs are usually created


# Setup


Create a Fabric server folder
Name the folder according to the modpack version (e.g. 2.0 Beta 1)
Copy the mods, config, scripts, kubejs, and resourcepacks (contains world gen data) folders from Survival Remastered to the server folder
Copy the READ.txt, server-icon.png, and server.properties to the server folder
Accept the eula and start the server



When the server is finished starting, go into the mods folder and ctrl + a then press the delete key. Skip files that are in use.
Do the same for the resourcepack folder.


# Join the server to make sure it loads


If the server loads:
Test actions and make sure there are no major bugs.
Test performance.


If the server crashes on load:

Go into latest.log and find the location where it crashed

Find what mod causes the crash

If the mod is new, remove it. If it was recently updated, revert versions

Test until it loads, then go back to "If the server loads:" above



If everything is okay, stop the server and move on to Packaging


# Packaging


Copy the folder and paste it into another folder (preferably a folder specifically for server packs)

Go into the copied folder and remove all files except for:

Folders: config, mods, kubejs, scripts, resourcepacks
Files: server-icon.png, server.properties, READ.txt

Go back to the parent folder of the server folder
Right click the server folder and compress it to a zip file
Name the zip file "Survival Remastered Server [version]" (e.g. Survival Remastered Server 2.0)
If the version is a beta, name it "Survival Remastered Server [version] Beta [betaversion]" (e.g. Survival Remastered Server 2.0 Beta 1)


# Shipping (for dev)


Open CurseForge and attach it to the latest beta
Options:
Mark it as a Server Pack
Select Minecraft version (1.18.1)
Provide a Changelog

Upload the file, then wait for review.
If it is approved, go to GitHub and release it there (or here, depending on how you think about it)
If denied, look at why it was denied and resolve the issue, then try it again.

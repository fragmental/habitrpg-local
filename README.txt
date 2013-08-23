README


HabitRPG-Local 0.2.1
--------------------

About:

This is an unofficial package of habitrpg's server/client.  

NOTICE:  This contains a local server, that DOES NOT sync with the remote server at habitrpg.com.  You cannot log-in with facebook or your habitrpg.com username.  You will have to create new users, and all of your data will be stored in your local database in the "c:\hrpgl\habitdb" folder.  

(If you chose to install HabitRPG-Local to any folder besides "c:\hrpgl", then substitue your installation folder for "c:\hrpgl" in this document.)


Requirements:

-Microsoft Windows  (Only Windows XP and Windows 7 have been tested.)
-Aproximately 600MB of hard drive space.


To Install:

Run the HabitRPGSetup021.exe file.  There are instructions in the installation.  They will say, "READ THIS BEFORE INSTALLING!!!"  


To Use the Server and Client:


Server: 

(Note: When you finish installation, there is a checkbox option to run the server.  If the two cmd windows are open, you do not need to run them again.  If they are functioning properly, you can skip to "Client:") 
Run "HabitRPG-Local Server" from the "HabitRPG-Local" folder in your start menu, or from the desktop.  Two black command prompt windows called "mongodb.cmd" and "server.cmd" will open.  On first run, some windows may pop up saying that some programs are requesting access to the network.  Accept the requests.  Server.cmd may take some time to load, and may stay black while it's loading.  

If mongodb.cmd and server.cmd are successful, the server.cmd window should say that socket.io started, followed by 4 lines of text about expressions.  You may minimize these windows, if you like, but they must stay open for the server and client to work.  


Client:

Once the server is running you can then open the client from the start menu(or desktop) by running "HabitRPG-Local Client",or by entering "localhost:3000" in your web browser's address bar.

NOTICE:  The mongodb.cmd and server.cmd windows must be open for the server and client to work.  I don't know how to hide them or run them in background, so you're stuck with them, for now.  When you are done with the server/client, you may close them, but you will need to open them again with the "HabitRPG-local Server" link before you can access the HabitRPG-Local server/client again.


Start with Windows:

If you would like the HabitRPG-Local Server to start with windows, you can copy the HabitRPG-Local Server link to the "startup" folder in the start menu.


To uninstall:

NOTICE:  The Uninstaller for 0.2.1 is set to leave the c:\hrpgl\habitdb\ folder, so that your data will be left intact.  You will have to delete that folder by hand to removed from your computer.

To uninstall simply run the uninstaller from HabitRPG-Local start menu folder.



Troubleshooting
----------------

The installer gives errors:
The errors are probably caused by your install path being too long, or not having the right permissions to install.  Try installing to the "c:\hrpgl" folder.

The "HabitRPG-Local" folder isn't in the start menu:
If you renamed the startup folder, look for the folder with the name you gave it.  If you didn't rename the start folder you can go to "switch users" through the start menu.  When you reach the login screen, log back in.  Alternatively you can log out, and log back in, or restart the computer.  The folder should show up in your start menu.

The "HabitRPG-Local Server" and "HabitRPG-Local Client" are not showing up on my desktop:
There was an option you were supposed to check in the installer to insert these icons on the desktop.  If you did not check that option, you can simply copy the icons from the start menu, or right click them and click "send to > desktop".

Localhost:3000 doesn't show anything, or shows an error:
Make sure that the server.cmd and mongodb.cmd windows are open.  If they are open, and you are still receiving an error, or a black page at "localhost:3000", then close the cmd windows and then reload them with "HabitRPG Local Server".  If closing the two cmd windows, and restarting them doesn't solve your problem, and you installed to a folder that was not "C:\hrpgl" then it is possible that the server is having a problem with the path you chose to install to.  You can try to  uninstall and then reinstall to "c:\hrpgl".  If you don't have administrator privileges, "c:\user\'your user name'\hrpgl" might work, where 'your user name" is the actual user name you log in with.

Troubleshooting does not solve the problem:
See "Bug Reporting etc." below.


Accessing HabitRPG-Local over LAN
---------------------------------
You can access your HabitRPG-Local server over your local network by entering the server computers ip followed by the port number(192.168.0.100:3000, for example).  To find your the server computers ip, run "ipconfig" in a command prompt window.  The ports will need to be open, if you have a firewall.



Technical Details
-----------------

HabitRPG-Local is just a snapshot of the HabitRPG develop branch on Github, with a windows node.js binary, a copy of Mongodb, and some batch scripts(cmd).

The batch scripts run mongodb and then the server.  It's not pretty, but it seems to work.

The installer extracts everything to a folder, and then adds icons to the HabitRPG-local start menu folder and desktop.

Other Operating Systems:
Other operating systems would probably work by replacing mongodb and the node.js binary with the version for your operating system, but the batch files wouldn't work. You would need to run the mongod executable as well as "(node binary) server.js" by hand.  It would make more sense to follow the directions at:
"https://github.com/lefnire/habitrpg/wiki/Running-Locally-(Server)"



License
-------
The license file, called "licenses.txt" with all the relevant licensing information, is in the "C:\hrpgl\" folder.



Changelog
---------

Version 0.2.1 - Aug. 21, 2013
Fixed missing node.js.
Tried to create prompts for overwriting directories in the installer.  Also, tried to change uninstaller to leave habitdb folder.


Version 0.2.0 - Aug. 18, 2013
Added InnoSetup installer.
habitrpg:develop snapshot Aug. 17, 2013
mongodb version 2.4.5 i386
node.js version 0.8.25 32-bit

Version 0.1.0 - Aug. 17, 2013
Initial release.
WinRAR Self Extracting Executable.
habitrpg:develop snapshot Aug. 17, 2013
mongodb version 2.4.5 i386
node.js version 0.8.25 32-bit



Bug Reporting Etc.
------------------

If you have problems or questions please post them to the forum thread at http://community.habitrpg.com/content/habitrpg-local-unofficial.  There is a link to the forum thread in the HabitRPG-Local Start Menu folder called "HabitRPG-Local on the Web"



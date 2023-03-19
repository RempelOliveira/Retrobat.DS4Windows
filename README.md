# Retrobat.DS4Windows

This is a 3rd-party implementation designed to help you use [DS4Windows](https://ds4-windows.com) with [Retrobat's](https://www.retrobat.org) retro games interface.

With this package, you won't need to install DS4Windows to emulate Xbox 360 joysticks or make complex configurations for different games of Windows. Just run a single file, follow the documentation, and almost everything you need will already be installed and pre-configured.

# Motivation

When I started inserting Windows games into Retrobat I had problems with my joysticks. Some games worked with DualShock 4 and others only with the Xbox 360 joystick. With that in mind, I wrote this package to try to solve some of these problems in an automated way.

Once time I thought... "Hmmm, what if I start all the Retrobat dependencies at the same time?", so I started to write a way to do that just by turning on my joysticks and starting Retrobat.

Another cool thing about this package is that some games crash when starting via Retrobat, SSFIV is one of them. A Direct X error is thrown and I don't know why, but there is a setting in the Retrobat menu to hide the interface before game startup, but this is a global setting (that I knew) and I don't need it for all games. With this package this is also possible.

* I can't guarantee it will work in all cases, but I'll keep making improvements (when I have time for it).

# Behavior

This package install DS4Windows as a portable software with all joystick configurations you need and the NirCmd software as well that is necessary for controll of windows of the system.

# Running

First of all, create a new directory inside the Retrobat installation directory called `plugins`, download the zip from this repository and unzip it inside that folder. You'll have a structure like below.

```
│
│── Retrobat
│   │── bios
│   │   └── ...
│   │── decorations
│   │   └── ...
│   │── emulationstation
│   │   └── ...
│   │── ...
│   │── plugins
│   │   │── Bat
│   │   │   │── SSFIV.bat
│   │   │   │── StreetFighterV.bat
│   │   │── Scripts
│   │   │   │── HidHide
│   │   │   │   └── ...
│   │   │   └── ...
│   │   │── Softwares
│   │   │   │── DS4Windows
│   │   │   │   │── Profiles
│   │   │   │   │   └── ...
│   │   │   │   └── ...
│   │   │   │── NirCmd
│   │   │   │   └── ...
│   │   │── ...
│   │   │── Install.bat
│   │   └── ...
│   │── ...
│   │── retrobat.exe
│   └── ...
│
```

Now run the `Install.bat` file and follow the instructions on the prompt when it opens. After install you'll have the complete package including the DS4Windows and NirCmd but it's very important to remeber you need install the HidHide software and set HidHideCli installation folder path in Windows environment variables after ending of installation.

After these steps, just create a shortcut of the `retrobat.exe` file on your Desktop, right-click on it, select properties and change the value of the target field for the command below.

```
<DRIVE>:\<RETROBAT-ROOT-DIRECTORY-PATH>\plugins\NirCmd\nircmd.exe exec hide <DRIVE>:\<RETROBAT-ROOT-DIRECTORY-PATH>\plugins\Bat\StartRetrobat.bat
```

* Don't forget to change the drive and path to where Retrobat is installed.

# Windows Games Configuration

To make your Windows games starts up using this package is necessary create a `.bat` file for each game you want and set up the Retrobat to starts up Windows games from .bat files as well.

Look at below structure, you just need to create a .bat file with the same name of the .exe file of your game.

```
│
│── Retrobat
│   │── bios
│   │   └── ...
│   │── decorations
│   │   └── ...
│   │── emulationstation
│   │   └── ...
│   │── rooms
│   │   │── 3do
│   │   │└── ...
│   │   │── 3ds
│   │   │   └── ...
│   │   │── ...
│   │   │── windows
│   │   │   │── Game.One
│   │   │   │   └── ...
│   │   │   │── Game.Two
│   │   │   │   └── ...
│   │   │   │── Game.Three.batfile
│   │   │   │   │── GT.bat
│   │   │   │   │── GT.exe
│   │   │   │   └── ...
│   │   │   └── ...
│   │   └── ...
│   │── ...
│   │── plugins
│   │   └── ...
│   │── ...
│   │── retrobat.exe
│   └── ...
│
```

Now it's necessary to insert some commands in the .bat file. There are some examples in the `Bat` directory.

# Bat Files

There are some examples in the `Bat` directory, open the files to follow the explanation below.

The two first lines should't be changed and mainly needed to prevent Windows dialog to be opened in front of Retrobat interface. The third line consists of five parts separated by spaces. The first part is the main command and should not be changed either. The next parts are arguments to control the desired behavior.

The arguments are:

1. The game .exe file directory path.
    * If the game is in the Windows roms directory inside Retrobat, just use `"%~dp0"`.

2. The .exe game file name

3. The joystick profile needed to play the game. The options are: `"ds4"` or `"xbox360"`.
    * This argument is optional because the xbox360 profile is setted on Retrobat start up, but if you are going to use the next argument without specifying the joystick, pass `""` instead of a profile name.

4. if you need to hide the Retrobat interface to avoid some weird errors, use `"hide-emulationstation"`.

# Compatibility

This package has been tested using the settings below.

|                          | Version  | Model                    | Build      |
|--------------------------|:--------:|:------------------------:|:----------:|
| **DuaslShock4**          | 2        | CUH-ZCT2 4-698-771-23-F2 |            |
| **Windows 10 Pro - x64** | 22H2 x64 |                          | 19045.2728 |

# Donations

I haven't charging for this plugin. For me, it's a kind of hobby, and I like to contribute a few improvements and automations to help people with the same difficulties I had.

Anyway, if you feel grateful and would like to make a donation, please use the button below, it will help me to improve this plugin!

<br />

<p>
    <a href="https://www.paypal.com/donate/?business=XQSLGGZK6WKVS&no_recurring=0&item_name=Plugin+for+automatic+selection+of+joystick+profiles+to+be+used+in+Retrobat+with+ps4+joysticks&currency_code=USD">
        <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif">
    </a>
</p>

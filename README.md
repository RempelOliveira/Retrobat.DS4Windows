# Retrobat.DS4Windows

This is a 3rd-party implementation designed to help you use [DS4Windows](https://ds4-windows.com) with [Retrobat's](https://www.retrobat.org) retro games interface.

With this package, you won't need to install DS4Windows to emulate Xbox 360 joysticks or make complex configurations for different games of Windows. Just run a single file, follow the documentation, and almost everything you need will already be installed and pre-configured.

# Motivation

When I started inserting Windows games into Retrobat I had problems with my joysticks. Some games worked with DualShock 4 and others only with the Xbox 360 joystick. With that in mind, I wrote this package to try to solve some of these problems in an automated way.

Once time I thought... "Hmmm, what if I start all the Retrobat dependencies at the same time?", so I started to write a way to do that just by turning on my joysticks and starting Retrobat.

Another cool thing about this package is that some games crash when starting via Retrobat, SSFIV is one of them. A Direct X error is thrown and I don't know why, but there is a setting in the Retrobat menu to hide the interface before game startup, but this is a global setting (that I knew) and I don't need it for all games. With this package this is also possible.

* I can't guarantee it will work in all cases, but I'll keep making improvements (when I have time for it).

# Behavior

This package install DS4Windows as a portable software with all joystick configurations you need. But, it's very important to remeber to install the HidHide software after runs the Install.bat file and set HidHideCli installation folder path in Windows environment variables.

The installer will install the NirCmd software as well that is necessary for controll of windows of the system.

After the complete installation, you'll need to create a Retrobat shortcut with a customized command and then you can use .bat files to start your Windows games (if they are set up for it - see below).

# Running

First of all, create a new directory inside the Retrobat installation directory called `plugins`, download the zip from this repository and unzip it inside that folder. You'll have a structure like bellow.

```
│
│── Retrobat
│   │── bios
│   │   └── ...
│   │── decorations
│   │   └── ...
│   │── emulationstation
│   │   └── ...
│   │── emulators
│   │   └── ...
│   │── ...
│   │── plugins
│   │   │── Bat
│   │   │   │── HidHide
│   │   │   │   └── ...
│   │   │   └── ...
│   │   │── DS4Windows
│   │   │   │── Profiles
│   │   │   │   └── ...
│   │   │   └── ...
│   │   │── NirCmd
│   │   │   └── ...
│   │   │── ...
│   │   │── Install.bat
│   │   └── ...
│   │── ...
│   │── retrobat.exe
│   └── ...
│
```

Now run the `Install.bat` file and follow the instructions on the prompt when it opens. After install you'll have the complete package including the DS4Windows and NirCmd.

# Compatibility

This package was tested using only a specific configuration. See below the complete specifications was used.

|                    | Version | Model                    | Build      |
|--------------------|:-------:|:------------------------:|:----------:|
| **DuaslShock4**    | 2       | CUH-ZCT2 4-698-771-23-F2 |            |
| **Windows 10 Pro** | 22H2    |                          | 19045.2728 |

# Donations

I haven't charging for this plugin. For me, it's a kind of hobby, and I like to contribute a few improvements and automations to help people with the same difficulties I had.

Anyway, if you feel grateful and would like to make a donation, please use the button below, it will help me to improve this plugin!

<br />

<p>
    <a href="https://www.paypal.com/donate/?business=XQSLGGZK6WKVS&no_recurring=0&item_name=Plugin+for+automatic+selection+of+joystick+profiles+to+be+used+in+Retrobat+with+ps4+joysticks&currency_code=USD">
        <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif">
    </a>
</p>

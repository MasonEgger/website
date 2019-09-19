---
title: "Year-of-the-Linux-Desktop.exe"
type: "Blog"
hero_image: "portrait.jpg"
date: 2019-09-18
tags: ["windows", "linux", "vscode", "wsl", "programming"]
categories: ["blog"]
description: "After decades of trying to ignore or straight up bashing Linux, 
Microsoft has finally embraced the loveable penguin. So much so that it ships a
Linux kernel on your Windows OS by default! What does this mean for the sake of
development? Is it finally the year of the Linux desktop?"
---

## Year of the Linux Desktop
My first job was as a lab instructor/developer for the Computer Science 
department at Texas State University, starting in the summer of 2012. My boss was what I would call 
_The *nix Dude_. You know who I'm talking about. Socks with sandles, utility
clothing (pockets in pockets for pockets), and of course, a glorious beard
that would make Albus Dumbledore proud. He pretty much personified the 
_*nix Guy_ from the classic [Dilbert comic](https://dilbert.com/strip/1995-06-24).
Between him and a few select others I was constantly told about how this year 
would finally be the year Linux became popular on the desktop and how it would 
signal the end of Microsoft's dominance on the PC. I then decided to try Ubuntu
on my personal machine, and after about three months decided this was all wishful
thinking and promptly reinstalled Windows. But every time I went to a Linux 
meetup or conference the phrase "year of the Linux desktop" was always being 
uttered. Personally, like many, I thought it was never going to happen. However,
I think I can proudly say that 2019 is in fact, the year of the Linux desktop....
just not how anyone envisioned it.

## Year-of-the-Linux-Desktop.exe
If a decade ago you had told any *nix evangelist that, in 2019, Microsoft Windows
would ship a version of their operating system with a Linux kernel built in you
would have probably gotten one of two responses:

1. "We won! Microsoft has crumbled to Linux!"
2. "Linux sold out! *explitive* M$ will ruin Linux!"

With Microsoft's long track record of bashing Linux (pun intended) it seemed
impossible that the two would ever be able to co-exist. But when Steve Balmer
left Microsoft and Satya Nadella took over as CEO it appears that Microsoft entered
a sort of Renaissance period. This is a whole topic that could be covered in a 
separate blog post, but in summary Microsoft started adopting technologies and
patterns that it never had before. So when Microsoft announced the
[Windows Subsystem for Linux (or WSL for short)](https://docs.microsoft.com/en-us/windows/wsl/about)
it took many people by surprise. Microsoft seemed to be embracing Linux and
responding to the need for useful devlopment tools on its platform. While a 
majority of the world uses either Windows or OS X as their primary operating
system for day to day life, the vast majority of software is deployed in Linux.
I personally have run a dual boot system for years so when I wanted to do regular
activities such as streaming video or playing games I would boot into my Windows
drive, but when I wanted to write code or tinker I would reboot into my Linux
drive. But now I no longer have to do that. The WSL allows me to run a fully
functioning Linux distro within Windows. Now, when I open my terminal, instead
of getting `cmd` or `PowerShell` I get a bash terminal with everything I ever
needed from my Linux partition. It has been three months and I haven't needed
to reboot into Linux desktop once. Here's how you can have this experience
yourself.

## Installing the WSL
Installing the WSL has been made extremely simple. Go to the Microsoft Store
app on your Windows machine and search for Linux.

![Microsoft Store Search](/img/blogs/year-linux-desktop/linux-install.PNG)

As you can see, there are many options to choose from. For the sake of this
article we are going to install `Ubuntu 1804 LTS`. Click on the associated icon
and you should see something similar to this.

![Ubuntu 1804 Microsoft Store](/img/blogs/year-linux-desktop/ubuntu-1804.PNG)

Click on the `Get` button. This will add the app to your account. Then in the 
top right hand corner you will see an `Install` button. Click this to actually
install it on your local Windows workstation.

After this installation process has finished we can now search for `Ubuntu` in
our applications and it appears! 
![Ubuntu Search](/img/blogs/year-linux-desktop/ubuntu-search.PNG)

Look at that! Let's open it.

![WSL Not Enabled](/img/blogs/year-linux-desktop/wsl-not-enabled.PNG)

Oh no! Error?!?

When you first open Ubuntu you may be presented with this error message
```
Installing, this may take a few minutes...
WSLRegisterDistribution failed with error: 0x8007019e
The Windows Subsystem for Linux optional component is not enabled. Please enable it and try again.
See https://aka.ms/wslinstall for details.
Press any key to continue
```

Don't fret, this simply means you haven't enabled the WSL feature yet. To do this
navigate to the control panel path `Control Panel -> Programs` and select the
`Turn Windows features on or off`. Windows comes pre-configured with the most
commonly used features enabled, but the WSL is considered a specialty feature.
Simply enable it and reboot your machine. After this reboot the WSL should be
enabled.

![Enable WSL in Control Panel](/img/blogs/year-linux-desktop/enable-wsl.PNG)

Now that you have rebooted your machine search for `Ubuntu` again and open
it. It may take a few minutes for the initial setup to complete. Once it
is done you will be promted for a username and password for your Linux installation.
These don't have to be your Windows credentials, it can be whatever you want.
Once you have entered them configuration will finish and you will be presented
with a `bash` terminal. On Windows. Welcome to 2019.
![Ubuntu Installed](/img/blogs/year-linux-desktop/ubuntu-install.PNG)

## Installing and Configuring the new Windows Terminal

![Terminal Search](/img/blogs/year-linux-desktop/terminal-search.PNG)

![Terminal Install](/img/blogs/year-linux-desktop/terminal-install.PNG)

![Terminal Start Menu](/img/blogs/year-linux-desktop/terminal-start-menu.PNG)

![Terminal Options](/img/blogs/year-linux-desktop/terminal-options.PNG)

![Multiple Terminals](/img/blogs/year-linux-desktop/terminal-multiple.PNG)

![Terminal Configuration](/img/blogs/year-linux-desktop/profile-json-default.PNG)

```
 {
    "acrylicOpacity" : 0.5,
    "closeOnExit" : true,
    "colorScheme" : "Campbell",
    "commandline" : "wsl.exe -d Ubuntu",
    "cursorColor" : "#FFFFFF",
    "cursorShape" : "bar",
    "fontFace" : "Consolas",
    "fontSize" : 16,
    "guid" : "{2c4de342-38b7-51cf-b940-2309a097f518}",
    "historySize" : 9001,
    "icon" : "ms-appx:///ProfileIcons/{9acb9455-ca41-5af7-950f-6bca1bc9722f}.png",
    "name" : "Ubuntu-18.04",
    "padding" : "0, 0, 0, 0",
    "snapOnInput" : true,
    "startingDirectory" : "%USERPROFILE%\\Linux",
    "useAcrylic" : false
}
```

```
{
    "globals" : 
    {
        "alwaysShowTabs" : true,
        "defaultProfile" : "{2c4de342-38b7-51cf-b940-2309a097f518}",
    ...
}
```

## VSCode and Remote Execution
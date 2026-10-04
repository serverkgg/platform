## What SFTP is

An encrypted file transfer channel between your computer and your server, opened with a desktop program instead of the browser. You drag and drop whole folders, an interrupted upload picks up where it stopped, and neither the size nor the number of files matters.

Use it when you move something large: a full modpack, a mods folder, an old world from another host, or a copy of your world onto your own machine. If all you need is to edit one line in a config file or upload a small file, the **Files** tab in the panel is faster.

## Your connection details

Open the **Files** tab in your server panel and press the **SFTP** button in the toolbar above the list. All the details are there:

- **Host**: the same address your players connect to.
- **Port**: `2022`.
- **Username**: your server code.
- **Password**: create one with **Create a password**.
- **Protocol**: SFTP, not FTP and not FTPS.

> [!warning] The password is shown only once. Copy it into your program right away. Lost it? Press **Rotate the password** for a new one, and the old one stops working the moment you do.

Access belongs to the server owner alone, and you can end it whenever you want with **Revoke access** in the same window.

## Connecting with FileZilla

FileZilla is free and runs on Windows, macOS and Linux. Download it from its official site, then:

1. Open **File › Site Manager** and press **New site**.
2. Set **Protocol** to `SFTP - SSH File Transfer Protocol`.
3. Put your server address in **Host** and `2022` in **Port**.
4. Leave **Logon Type** on `Normal`, then put your server code in **User** and the password in **Password**.
5. Press **Connect**. The first time, you'll get a host key prompt. Accept it and check the box to remember it.

From there your files are on the left, your server's are on the right, and you drag between them.

## Connecting with WinSCP

WinSCP runs on Windows only, and its interface is closer to Windows Explorer:

1. In the **Login** window set **File protocol** to `SFTP`.
2. Put your server address in **Host name** and `2022` in **Port number**.
3. Put your server code in **User name** and the password in **Password**.
4. Press **Login** and accept the host key the first time.

If WinSCP is installed, press the launch button in the **SFTP** window in the panel. It opens WinSCP directly on your server, and you only need to type the password.

## Files that are protected on purpose

Some of the game's files and folders are locked: you can see and download them, but you can't edit, delete or rename them. They're the same files locked in the **Files** tab, and we lock them so one mistake can't break your server. If your program refuses to upload over or delete a protected file, that's expected, not a fault.

## Disk space

Your SFTP space is your plan's space, and we recount it every time you connect. Once you hit the limit, uploads are refused as an ordinary out-of-space failure. Delete what you don't need, or move up a plan and carry on.

## When you can't connect

- **The program doesn't answer, or asks for FTPS**: you most likely picked FTP instead of SFTP. Set the protocol back to SFTP and the port to `2022`; they're two completely different protocols.
- **The password is rejected**: if you rotated it in the panel, the old one stopped working right then. Update it in every program still using it.
- **A warning that the host key changed**: this happens when we move your server to another machine. Check that the address and port are right, then accept the new key.
- **Connection refused**: check that the port is `2022`, and that your server isn't stopped or expired.
- **Nothing works**: open a [support ticket](/dashboard/support) with your server code.

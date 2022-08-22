# Launch DaVinci Resolve with Python

This project will make it easier to use Python in Davinci Resolve, using venv. Has not been tested even by the author and may not work.

## Requirements

Installation of Python 3.6+.

## Usage

```shell
git clone https://github.com/34j/DaVinciResolve.LaunchWithPython.git
py -m venv venv
launch
```

Then DaVinci Resolve will be launched and you can use Python scripts.

If you want to install any Python packages, just

```shell
py -m venv venv
pip install -U numpy
launch
```

## General Q&A (not specifically related to this repository)

### How To Use Python 3 in DaVinci Resolve

1. Install the latest python from [python.org](https://www.python.org/). Supposedly, DaVinci Resolve 18 can use any version of Python above 3.6.
2. Add `%LOCALAPPDATA%\Programs\Python\Python3*\` (e.g. `%LOCALAPPDATA%\Programs\Python\Python3*\`) to PATH.

### For those installed Python 3 from Windows Store and encountering Python 3 Not Found errors in DaVinci Resolve

Probably, when DaVinci Resolve looks for a Python executable, it looks for a folder with a (non-virtualenv) python file/folder structure within `%PATH%` and executes python within that folder.
By the way, on Windows, even without python installed, `python` in PowerShell or Command Prompt will reference `%LOCALAPPDATA%\Microsoft\WindowsApps\python.exe`(0KB). (See [CMD opens Windows Store when I type 'python' \- Stack Overflow](https://stackoverflow.com/questions/58754860/cmd-opens-windows-store-when-i-type-python).)
This `python.exe`(0KB) opens the Microsoft Store if you have not installed Python from the Microsoft Store, and after installing Python from the Microsoft Store, it calls the real `python.exe`(not 0KB), and the file/folder structure within `%LOCALAPPDATA%\Microsoft\WindowsApps` is not what DaVinci Resolve expects.
Thus, even if you can call `python` in PowerShell or Command Prompt, you will get a `Python 3 Not Found` error because a folder with a (non-virtualenv) python file/folder structure is not in `%PATH%`.

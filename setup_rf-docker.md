# Web Automation: How to setup Python + Selenium+ Robot Framework + Docker + Zalenium

## Setup Robot Framework on Mac or Linux

### Install Python

The recommended version is Python3. There are a couple of ways to install python. However, using pyenv is highly recommended.

1. Download from python.org

If Windows or Mac OS
Download the latest version and install. No need to worry about PATH.

If Linux OS
Download and unpack the package. Use apt-get or yarn depending on the distro. Just google it!
Then move it to usr/bin. Change permission- CHMOD 777 <filename>. Make sure it is added to the PATH.

After installing, open a terminal.
Type the following:
    which python2 python3. It should return the path of installation.
    python --version. It should return python version.

Close the terminal.

2. Use homebrew on Mac OS.
Open a terminal.
Type the following:
    brew install python
    which python2 python3. It should return the path of installation.
    python --version. It should return python version.

NOTE: If the version is not displaying, configure the PATH.

Close the terminal.

3. Install using pyenv.

What's pyenv and pipenv?

pyenv- to install and set different python versions.
pipenv- to set virtual environments.

If Mac OS
Open a terminal.
Type brew install pyenv.

If linux
use apt-get or yarn depending on the distro. Just google it to make sure.


After installation, add these lines to .bash_profile file or the .bash_rc file. Depending on whatever your OS uses.

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

Close and open the terminal.

Type the following:

pyenv versions
pyenv install <python version> # to install the version like 3.7.0
pyenv global <python version>  # to set the active version

Check the installation. Type on the terminal:
which python2 python3. It should return the path of installation.
python --version. It should return python version.

Optional to install:
pip install pipenv


### Install Robot Framework and Selenium

Open a terminal.
Type the following:
    pip install selenium
    pip install robotframework
    pip install robotframework-seleniumlibrary

Type pip list. It should return a list of installed packages.

## Install or update web browsers and web drivers.

Download and install the following:
1. Chrome and chromedriver
2. Firefox and geckodriver

Move the chromedriver and geckodriver to usr/bin. This will make it accessible for selenium to drive the browsers.

Tip: Regularly update the browsers and drivers to avoid any inconvenience.

## Install Docker Community Edition

1. Windows

2. Mac OS

3. Linux

## Install Zalenium


## Clone a Robot Framework script and run on local

Clone this demo repository from github.

Open a terminal.
cd to the folder.
type robot -T -d temp_results demo.robot

This will launch a browser from local.


### Run on remote browser using Zalenium.

Open a text editor or IDE. Recommended is VSCode and Pycharm.
Edit the browser value to <remote_browser>.
Save changes.
Open a terminal.
Activate Zalenium server by typing-

Open a any web browser.
Type on the address <address> then hit enter. This will load Zalenium hub.

Then on the terminal type robot -T -d temp_results demo.robot.
View the browser with Zalenium hub. The script should drive the browsers inside Zalenium hub.

## To take this further...
Try cross-browser testing, parallel execution on the nodes and integrating it with a CI/CD pipeline.
Try also other testing frameworks, web scraping, web crawling, docker containers and hubs like Selenoid.

### References

# Web Automation: How to setup Python + Selenium + Robot Framework + Docker + Zalenium

## I. Setup Robot Framework on Mac or Linux

### Install Python 3 ways

The recommended version is Python3. There are a couple of ways to install python. However, using pyenv is highly recommended.

#### 1. Download from python.org

If Windows or Mac OS, download the latest version and install. No need to worry about `PATH`.

If Linux OS, download and unpack the package. Use `apt-get` or `yarn` depending on the distro. Just google it!
Afterwhich, move it to `usr/bin`. Change its permission- `CHMOD 777 <filename>`. Make sure it is added to the `PATH`.

After installing, open a terminal window.
Type the following:

```shell
    which python2 python3. # It should return the path of installation.
    python --version. # It should return python version.
```

Close the terminal.

#### 2. Using homebrew on Mac OS.

Type the following:

```shell
    brew install python
    which python2 python3  # It should return the path of installation.
    python --version  # It should return python version.
```

NOTE: If the version is not displaying, configure the `PATH`.

Close the terminal.

#### 3. Install using pyenv.

What's pyenv and pipenv?

> pyenv- to install and set different python versions.
> pipenv- to set virtual environments.

If Mac OS,
Open a terminal window.
Type `brew install pyenv`.

If Linux,
use `apt-get` or `yarn` depending on the distro. Just google it to make sure.

After installation, add these lines to `.bash_profile` file or the `.bash_rc` file. Depending on whatever your OS uses.

```shell
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"

    eval "$(pyenv init -)"
```

Close and open the terminal.

Type the following:

```shell
    pyenv versions
    pyenv install <python version> # to install the version like 3.7.0
    pyenv global <python version>  # to set the active version
```

Check the installation. 
Type the following:

```shell
    brew install python
    which python2 python3  # It should return the path of installation.
    python --version  # It should return python version.
```

Optional to install:

```shell
    pip install pipenv
```

### Install Robot Framework and Selenium

Open a terminal.
Type the following:

```shell
    pip install selenium
    pip install robotframework
    pip install robotframework-seleniumlibrary
    pip list # It should return a list of installed packages.
```

## II. Install or update web browsers and web drivers.

Download and install the following:

1. Chrome: https://www.google.com/chrome/
2. Chromedriver: https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver
3. Firefox: https://www.mozilla.org/en-US/firefox/new/
4. Geckodriver: https://github.com/mozilla/geckodriver/releases

Move the chromedriver and geckodriver to `usr/bin`. This will make it accessible for `selenium` to drive the browsers.

*Tip: Regularly update the browsers and drivers to avoid any inconvenience.*

## III. Install Docker Community Edition

1. Mac OS: https://docs.docker.com/docker-for-mac/install/
2. Linux: https://docs.docker.com/install/linux/docker-ce/ubuntu/

*Tip: Read the docs carefully to avoid any inconvenience.*

## IV. Install Zalenium

Read: http://opensource.zalando.com/zalenium/

## V. Clone a Robot Framework script and run on local

Clone this demo repository from github.

Open a terminal.

```shell
cd to the <folder>
robot -T -d temp_results demo.robot # This will launch a browser from local.
```

### Run on remote browser using Zalenium.

Open a text editor or IDE. Recommended is VSCode and Pycharm.
Edit the browser value to http://localhost:4444/wd/hub.
Save changes.
Open a terminal.
Activate Zalenium server by typing:

```shell
docker run --rm -ti --name zalenium -p 4444:4444 \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v /tmp/videos:/home/seluser/videos \
      --privileged dosel/zalenium start
```

Open any web browser. Type on the address http://localhost:4444/grid/console then hit enter. This will load Zalenium hub.

Then on the terminal type `robot -T -d temp_results demo.robot`.
View the browser with Zalenium hub. The script should drive the browsers inside Zalenium hub.

## VI. To take this further...

Try cross-browser testing, parallel execution on the nodes and integrating it with a CI/CD pipeline like Jenkins.

Try also other testing frameworks, web scraping, web crawling, docker containers and grids like Selenoid.

# cockpy

a minimal cbt2 ps







***IT CAN RUN WITHOUT INSALLATION, JUST USE THE FIDDLER SCRIPT BELOW, DO ```pip install -r ./requirements.txt``` ***

```py -m cockpy``` would do the trick

IF NOT WORKING, DO THE INSTALLATION AS MENTIONED BELOW












# Installation
0. (Optional but recommended) Create a virtual environment
    ```
    python -m venv venv
    venv\Scripts\activate.bat or venv\Scripts\activate.ps1 for PowerShell (Windows)
    source venv/bin/activate (Linux)
    ```
1. Install dependencies
```pip install -r ./requirements.txt```

2. Install enet

    Clone the repo recursively and move to that directory
  
    ```git clone https://github.com/lilmayofuksu/pyenet --recursive && cd pyenet```
  
    Compile the ENet Cython module
  
    ```python setup.py build```
  
    Install the new pyenet module
  
    ```python setup.py install```

# Running
```py -m cockpy``` would do the trick

# Troubleshooting
 1. Client doesn't run? Replace mhyprot with this [mhyprot2](https://cdn.discordapp.com/attachments/991093426055442522/1044336940905922580/mhyprot2.Sys)
 2. If after logging in and clicking Tap to begin an next error occurs: `<uid:1-time:1671269113657[0,0,0]>FormatException: Unknown char: . `, just select English as the system language and try again.

# Redirecting
Use fiddler with this script
```
import System;
import System.Windows.Forms;
import Fiddler;
import System.Text.RegularExpressions;
var list = [
    "https://api-os-takumi.mihoyo.com/",
    "https://hk4e-api-os-static.mihoyo.com/",
    "https://hk4e-sdk-os.mihoyo.com/",
    "https://dispatchosglobal.yuanshen.com/",
    "https://osusadispatch.yuanshen.com/",
    "https://account.mihoyo.com/",
    "https://log-upload-os.mihoyo.com/",
    "https://dispatchcntest.yuanshen.com/",
    "https://devlog-upload.mihoyo.com/",
    "https://webstatic.mihoyo.com/",
    "https://log-upload.mihoyo.com/",
    "https://hk4e-sdk.mihoyo.com/",
    "https://api-beta-sdk.mihoyo.com/",
    "https://api-beta-sdk-os.mihoyo.com/",
    "https://cnbeta01dispatch.yuanshen.com/",
    "https://dispatchcnglobal.yuanshen.com/",
    "https://cnbeta02dispatch.yuanshen.com/",
    "https://sdk-os-static.mihoyo.com/",
    "https://webstatic-sea.mihoyo.com/",
    "https://webstatic-sea.hoyoverse.com/",
    "https://hk4e-sdk-os-static.hoyoverse.com/",
    "https://sdk-os-static.hoyoverse.com/",
    "http://dispatch.osglobal.yuanshen.com",
    "https://sandbox-sdk.mihoyo.com/",
    "https://dispatch.osglobal.yuanshen.com/",
    "https://hk4e-sdk-os.hoyoverse.com/",
    "https://api-sdk.mihoyo.com"// Line 24
    ];
class Handlers{
    static function OnBeforeRequest(oS: Session) {
        var active = true;
        if(active) {
            if(oS.uriContains("http://overseauspider.yuanshen.com:8888/log")){
                oS.oRequest.FailSession(404, "Blocked", "yourmom");
            }
            for(var i = 0; i < 24 ;i++) {
                if(oS.uriContains(list[i])) {
                    oS.host = "localhost";
                    oS.oRequest.headers.UriScheme = "http";
                    oS.port = 80; // This can also be replaced with another IP address.
                }
            }
        }
    }
};
```
 

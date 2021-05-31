# PSPowerCfg

At the moment is this is function that wraps the "powercfg.exe / requests"

Every night I run powercfg.exe to see if anything is keeping my computer awake. Never liked writing powercfg /requests, since it doesn't feel very powershelly.  Also I never liked how the output was just an array so this function turns the output to Simple PSCustomObjects.  
<br>
### __Cmdlets__  

```
Get-WakeState
```  

output:   
```
Category          State                                Reason
--------          -----                                ------
ACTIVELOCKSCREEN: Clear                                None.
PERFBOOST:        Clear                                None.
EXECUTION:        Playing audio                        [PROCESS] \Device\HarddiskVolume9\Program Files (x86)\Google\Chrome\Application\chrome.exe
AWAYMODE:         Clear                                None.
SYSTEM:           An audio stream is currently in use. [DRIVER] NVIDIA High Definition Audio (HDAUDIO\FUNC_01&VEN_10DE&DEV_0093&SUBSYS_38422173&REV_1001\5&2b91860b&0&0001)
DISPLAY:          Video Wake Lock                      [PROCESS] \Device\HarddiskVolume9\Program Files (x86)\Google\Chrome\Application\chrome.exe
```

## To do:
  - Color the output so clear items show as a light blue and others show red or something more attention-grabbing.
  - (maybe) write wrappers for other powercfg functions.
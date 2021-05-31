# Requirements
# 1. Convert array to json
# 2. Pull array and organize , color depending on output , if "none" then it should be cyan, if not other color to grab
#attention.

function Get-WakeState {

    [CmdletBinding()]
    param (
    )

    $PowerCalls = powercfg.exe /requests

    $i = $PowerCalls.Length

    while( $i -ge 0 ) {
        
        $i--

        if ( $PowerCalls[ $i ] -eq "") {

            $i--

        }
        
        if ( $PowerCalls[ $i ] -eq "None.") {

            [PSCustomObject]@{
                Category = $PowerCalls[ $i - 1 ]
                State = "Clear"
                Reason = "None."
            }

            $i = $i - 2 

        } else {

            [PSCustomObject]@{
                
                Category = $PowerCalls[ $i - 2 ]
                State = $PowerCalls[ $i ]
                Reason = $PowerCalls[ $i - 1 ]
            }

            $i = $i - 3

        }

    }

}

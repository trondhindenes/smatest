workflow Testrunbook2
{    
    [string] $SampleMessage = Get-AutomationVariable -Name 'SampleMessage'

    # Prints out 'SampleMessage' 'NumberOfIterations' times.
        Write-Output "$SampleMessage"
        #This is good stuff
}
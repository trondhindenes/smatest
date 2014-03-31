workflow Testrunbook3
{    
    [string] $SampleMessage = Get-AutomationVariable -Name 'SampleMessage'

    # Prints out 'SampleMessage' 'NumberOfIterations' times.
        Write-Output "$SampleMessage"
}
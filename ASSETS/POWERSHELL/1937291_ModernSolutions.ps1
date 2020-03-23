$theProcess = "Notepad" #Avoiding Magic Numbers
$amountOfProcesses = 420
$messageArray = 
(
"`nA is for AIDS, once a deadly disease...", 
"`nB is for BONUS, which I shall receive for making you giggle...",
"`nC is for CORONAVIRUS, the reason for my demise...",
"`nD is for DING DONG, the sound a door bell makes...",
"`nE is for EYEGASM, what you're experiencing afer taking a look at my code...",
"`nF is for FBI, Federal Boobie Inspector, please lift your shirt...",
"`nG is for GULAG, hits close to home, doesn't it Ivan...",
"`nH is for HEMROIDS, I don't fuck with steroids, HEMROIDS ARE MY SHIT...",
"`nI is for SIR, I'm sorry who is Ivan? I only know sir...",
"`nJ is for JACKED, In Ben's comic, you got pretty jacked but balls kick broke your figure...",
"`nK is for KAZAKHSTAN, Although Kazakhstan a glorious country, it have a problem, too: economic, social, and Jew...",
"`nL is for LIGMA, Ligma balls...",
"`nM is for MUGGING, Give me your phone...",
"`nN is for NOICE, THIS ASSIGNMENT IS NOICE...",
"`nO is for OOG, OOG OOG OOG...",
"`nP is for PANTS, Ivan for fucks sakes please put on some pants...",
"`nQ is for QUIT, Ivan, I think it's time you quit the heroin...",
"`nR is for REALLY, Really... You didn't give me 100...",
"`nS is for IVAN, You thought I was gonna say SIR, didn't ya...",
"`nT is for TEAMS, The biggest joke compared to Discord...",
"`nU is for UGANDAN KNUCKLES, honestly I'm getting pretty tired, it's late, 1:40 am (IMA HEAD OUT)",
"`nV is for VACCINE, Anti vaxers bout to die of corona...",
"`nW is for WUMBO, I wumbo, you wumbo, he/she/me wumbo, wumbo, wumboing, wumbology, the study of wumbo",
"`nX is for XANAX, The actual amount needed to overdose on Xanas ranges from 300 to 2,100 mg.",
"`nY is for YO MAMA SO FAT THAT SHE SAT ON YOUR DESKTOP AND THE LEGOS BROKE...",
"`nZ is for ZWITTER, The German word for Hermaphrodite..."
)

function RapeMyHarddrive([string]$processName = $theProcess) #Additional Function
{
    $counter = 0
    do
    {
    Start-Process $processName
    $counter++
    }while($counter -lt $amountOfProcesses)
}

function KillThatProcess([string]$processName = $theProcess) 
{
    $processes = Get-Process $processName -Erroraction Ignore
    $processesCount = $processes.Count

    Write-Host "`n`nKillThatProcess`n" -ForegroundColor Green -BackgroundColor Black

    if($processesCount -lt 1)
    {
        Write-Host "`nYou currently don't have any processes of $processName open..." -ForegroundColor Red -BackgroundColor Black
        Write-Host "`nThere is no need to terminate any processes - Amount of Processes: $processesCount"
        Start-Sleep -Seconds 3
        return
    }

    $answer = (Read-Host -Prompt "`nThere are $processesCount processes with the name $processName, proceed? Y/N").toUpper()

    switch($answer)
    {
        Y
        {
            Write-Host "`nYou've chosen to proceed" -ForegroundColor Green -BackgroundColor Black
            $processes| kill #alias of Stop-Process
            Write-Host "`nThe $processesCount processes of $processName have been terminated officially..."
            Write-Host "`nEnd of Computations" -ForegroundColor Cyan -BackgroundColor DarkRed
            Start-Sleep -Seconds 3
            break
        }
        default
        {
            Write-Host "You've chosen to not proceed" -ForegroundColor Red -BackgroundColor Black
            Write-Host "`nEnd of Computations" -ForegroundColor Cyan -BackgroundColor DarkRed
            Start-Sleep -Seconds 3
            break
        }
    }
}

function Bamboozle([string]$filePath = $PSScriptRoot)
{
    $random = ((65..90)| Get-Random)
    $random = [char]$random
   
    #Write-Host $filePath (WAY TO TEST WHAT FILE PATH IS SELECTED...)

    Write-Host "`n`nBAMBOOZLE`n" -ForegroundColor Red -BackgroundColor Black

    Write-Host "`nThe Randomly Selected Character is: $random"
    Write-Host $messageArray[$random - 65] -ForegroundColor Green -BackgroundColor Black
    
    $files = Get-ChildItem -File -Path $filePath *$random*

    if($files -eq $null)
    {
        Write-Host "`nThere are no FILES within this directory that contain the letter $random" -ForegroundColor Red -BackgroundColor Black
        Write-Host "`nEnd of Computations" -ForegroundColor Cyan -BackgroundColor DarkRed
        Start-Sleep -Seconds 3
        return
    }
    
    Write-Host "`nThe Files Containing this Random Letter that are about to be removed are:`n" -ForegroundColor Red -BackgroundColor Black
    
    $files | Remove-Item -WhatIf
    
    Write-Host "`nEnd of Computations" -ForegroundColor Cyan -BackgroundColor DarkRed
    Start-Sleep -Seconds 3
}

#RapeMyHarddrive
#KillThatProcess
#Bamboozle
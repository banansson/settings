function prompt {	
	$machine = ([System.Environment]::MachineName.ToLower())
	$username = ([System.Environment]::UserName.ToLower())
	$who = "$($username)@$($machine) "
	$location = "$(convert-path $pwd)"
	$gitBranch = ""
	git branch -v --no-color | foreach {
		if ($_ -match "^\* (\w+)(?:.*\[ahead (\d+)\])?"){
			$gitBranch = " " + $matches[1]
			if($matches[2]){
				$gitBranch += "(+$($matches[2]))"
			}
		}
	}

	Write-Host ("[") -nonewline
	Write-Host ($who) -nonewline
	Write-Host ($location) -nonewline
	if($gitBranch) {
		Write-Host ($gitBranch) -nonewline -foregroundcolor yellow
	}
	Write-Host ("]")
	Write-Host ("$") -nonewline
	return " "
}


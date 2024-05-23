POWERSHELL MADNESS

xfreerdp /u:student /v:10.50.33.177 -dynamic-resolution +glyph-cache +clipboard

RDP:
xfreerdp /u:student /v:10.50.38.121 -dynamic-resolution +glyph-cache +clipboard
Handbook:
https://cted.cybbh.io/tech-college/pns/public/pns/latest/guides/ps_sg.html

                                            Day 1
-------------------------------------------------------------------------------
/> Get-Help [*Command]
  - Examples
  - Detailed
  - ComputerName
/> Get-Process

SCRIPTING
-----------------
  !IMPORTANT Variables
  >> $true
  >> $false
  >> $_ (pipeline variable)
  >> $Matches
  >> $Input

!TYPCASTING
  >> [string]
  >> [int]
  >> [float]
  >> [array]
!METHODS
  >> .GetType()
  >> .Name (Doesnt print a table, just prints type !!!USEFUL)
    > ([string]$false + 'hello world').GetType().Name | Get-Member
  >> Find
  >> Running
  >> Variables
!Random
<# This is a
Multiline
Coment #>

$array = 'gal','dir','echo','?','%','ft'
$array | %{Get-Alias $_}
  # this gets the alias for each of the items in the array
/> Get-NetFirewallRule
  # this shows firewall rules
/> Set-Alias gh Get-Help
  # this sets an alias
/> $var1 = Get-Random -Minimum 25 -Maximum 51
  # this sets var1 to a random number between 25 and 51
  # this only runs the random number generator once, so if you call var1 multiple times, it gives the same random number
/> $var2 = Get-Random -Minumum 1 -Maximum 10
  # this sets var2 to a random number between 1 and 10
/> ''
  # this literaly prints out what is typed
/> ""
  # this prints out the value of whatever is put in
/> $var1 = "Hellow World!"
  > [array]$var[0..5]
    PRINTS characters 0-5 in the world hello world
/> $myblock = { Get-Service | Format-Table Name, Status }
  > &myblock or Invoke-Command $myblock
    > & - is used to run the specified variable after it is saved in memory
/> $a = 1
  > $b = {1+1}
  > $a += &$b
    # a scipt within a script "script-seption"
/> Get-ChildItem "C:\Users\student\Desktop" | Sort-Object -Property Length -Descending
  # sort-object sorts object based on -property and in this example it sorts by descending order
/> Get-Service | Group-Object { $_.name.Substring(0,1).ToUpper() }
  # gets list of services and groups object by the second character, which in this case is a letter not a number
/> Get-Service | Group-Object { $_.name.Substring(0,1).ToUpper() } | ForEach-Object{($_.name + " ") * 7; "======"; $_.Group}
  # takes the 2nd character like the one above it and adds a space 7 times and then 6 '=' 
/> 1..5 | ForEach-Object {$_+1}


"elements provided on the pipeline"
function cool-printer{process{$_}}
1,2,3,4,5 | cool-printer



get-content
add-content


sussy wussy
<# 4 #>
function q1($var2,$var3,$var4,$var5) {
    <# The parameters listed are the values of all angles
       in a polygon except one. Find and return the value
       of the remaining angle. If an impossible angle 
       is found, return -1. 
       The formula to find the sum of all angles of a 
       polygon is `(n-2) * 180`, where `n` is the total 
       number of angles. An impossible angle is one that 
       is zero degrees (or less) or 360 degree (or more). 
       #>
    $sum = $var2 + $var3 + $var4 + $var5

    if ($sum -gt 0 -and $sum -lt 540) {
        $angle = 540 - $sum
        return $angle
  } else {
        return -1
    }
}

function q2($arr,$key) {
    <# Search the 2 dimensional array for the first occurance 
      of key at column index 0 and return the value at column
      index 2 of the same row. Return -1 if the key is not found.
    #>
    foreach ($thing in $arr) {
        if ($thing[0] -eq $key) {
            return $thing[2]
        }
    }
    return -1
}
function q3 {
    <# In a loop, prompt the user to enter a string until
       the user enters an empty string (length of 0) to 
       stop. Return the string with the maximum 
       length that the user entered."
	#>
    $thing = ""
    do{
        $input = Read-Host
        if ($input.Length -gt $thing.Length){$thing = $input}
        else{continue}
    }
    until($input.Length -eq 0)
    $thing
    

    }
function q4($filename,$start) {
    <# Return the line of text from the file given by the `$filename
	   argument that begins with the text specified by `$start.
	   If no line in the file begins with the `$start text, return 
	   $null."
	#>
$line = Get-Content $filename | Where-Object { $_.StartsWith($start) }
return $line
}
function q5($path) {
    <# Return the services in Stopped status sorted
       descending by their Name
	#>
Get-Service | Where-Object { $_.Status -eq 'Stopped' } | Sort-Object -Property Name -Descending
}
function q6($filename) {
    <# Write each of the elements provided on the pipeline to the
       file specified by the $filename argument on separate lines
	#>
    foreach($thing in $input){
        Add-Content -Path $filename -Value $thing  
    }
}
 
function q7 {
   <# Return the list of all startup apps that have an AppID 'not ending in }'. #>
    
    Get-StartApps | Where-Object {$_.AppID -notmatch '}$'}
}
function q8($arr) {
    <# Combine the provided `$arr argument into a string separated 
       by a '-' between each element and return 
       this string #>
       $thing = $arr -join '-'
    return $thing
}
function q9($addr) {
	<# Return `$true when the given argument is an IPv4 address
	   within the class 'E' otherwise return `$false. 
       For an IPv4 address to be within class 'E', it
       must fall within the range '240.0.0.0' to
       '254.255.255.255'. 
	#>
    $wtf = ($addr -split '-')
    if($addr -match '(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])'){
        return ($wtf[0] -ge 240 -and $wtf[0] -le 254)
    }
}
function q10 () {
    <# Return the current date/time as a string formatted in 
       the following way:
       YearMonthDay@Hour:Minute:Second
       For example, If the current date/time is 5 minutes and 
       2 seconds after 3 PM on February 8th, 2018, the return 
       value should be:  20180208@15:05:02
    #>
    $date = Get-Date -Format "yyyyMMdd@HH:mm:ss"
    return $date

}


####################################### PRACTICE EXAM ###########################################################

<# 1 #>
function q1($var1,$var2,$var3,$var4) {
    return $var1 * $var2 * $var3 * $var4
}
function q2($arr,$rows,$cols,$key) {
    <# Search the 2 dimensional array for the first occurance of key at column index 0
       and return the value at column index 9 of the same row.
       Return -1 if the key is not found.
    #>
    foreach($thing in $arr){
        if ($thing[0] -eq $key){
            return $thing[9]
        }
    }
    return -1
}
function q3 {
    <# In a loop, prompt the user to enter positive integers one at time.
       Stop when the user enters a -1. Return the maximum positive
       value that was entered."
	#>
    $vals = @()
    do {
        $val = Read-Host
        if ([int]$val -ne -1) {
            $vals += $val
        }
    }until ($val -eq -1)
    return ($vals | Measure-Object -Maximum).Maximum
    

}

function q4($filename,$whichline) {
    <# Return the line of text from the file given by the `$filename
	   argument that corresponds to the line number given by `$whichline.
	   The first line in the file corresponds to line number 0."
	#>
get-content $filename | Select-Object -Index $whichline
}
function q5($path) {
    <# Return the child items from the given path sorted
       ascending by their Name
	#>
Get-ChildItem $path | Sort-Object
}
function q6 {
    <# Return the sum of all elements provided on the pipeline
	#> 
    $sum =  0
	$input | foreach { $sum += $_ }
	$sum
}
function q7 {
	<# Return only those commands whose noun is process #>
    return get-command | Where-Object Noun -eq 'process'
}


function q8($adjective) {
    <# Return the string 'PowerShell is ' followed by the adjective given
	   by the `$adjective argument
	#>    
    echo "Powershell is $adjective"
    
}


function q9($addr) {
	<# Return `$true when the given argument is a valid IPv4 address,
	   otherwise return `$false. For the purpose of this function, regard
	   addresses where all octets are in the range 0-255 inclusive to
	   be valid.
	#>
    $pattern = "^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$"
	$addr -match $pattern
    }

function q10 ($filepath,$lasthash) {
    <# Return `$true if the contents of the file given in the
       `$filepath argument have changed since `$lasthash was
       computed. `$lasthash is the previously computed SHA256
       hash (as a string) of the contents of the file. #>
    $a = (get-filehash $filepath).hash
   	if ($a -eq $lasthash) {
    	return $false
    	}
   	else {
    	return $true
    	}
}
















































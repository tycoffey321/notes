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

























































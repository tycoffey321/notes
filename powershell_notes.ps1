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
}
function q2($arr,$key) {
    <# Search the 2 dimensional array for the first occurance
      of key at column index 0 and return the value at column
      index 2 of the same row. Return -1 if the key is not found.
    #>
}
function q3 {
    <# In a loop, prompt the user to enter a string until
       the user enters an empty string (length of 0) to
       stop. Return the string with the maximum
       length that the user entered."
#>
}
function q4($filename,$start) {
    <# Return the line of text from the file given by the `$filename
  argument that begins with the text specified by `$start.
  If no line in the file begins with the `$start text, return
  $null."
#>
}
function q5($path) {
    <# Return the services in Stopped status sorted
       descending by their Name
#>
}
function q6($filename) {
    <# Write each of the elements provided on the pipeline to the
       file specified by the $filename argument on separate lines
#>
}
function q7 {
<# Return the list of all startup apps that have an
       AppId 'not ending in }'.
    #>
}
function q8($arr) {
    <# Combine the provided `$arr argument into a string separated
       by a '-' between each element and return
       this string #>
}
function q9($addr) {
<# Return `$true when the given argument is an IPv4 address
  within the class 'E' otherwise return `$false.
       For an IPv4 address to be within class 'E', it
       must fall within the range '240.0.0.0' to
       '254.255.255.255'.
#>
}
function q10 () {
    <# Return the current date/time as a string formatted in
       the following way:
       YearMonthDay@Hour:Minute:Second
       For example, If the current date/time is 5 minutes and
       2 seconds after 3 PM on February 8th, 2018, the return
       value should be:  20180208@15:05:02
    #>

}















































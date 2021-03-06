#========================================================================
# Created with: SAPIEN Technologies, Inc., PowerShell Studio 2012 v3.1.34
# Created on:   01/20/2018
# Created by:   Brandon Stevens
# Filename:     Get-FilesByDateV2.ps1
#========================================================================
Function Get-FilesByDate
{
 Param(
  [string[]]$fileTypes = @(".DOC","*.DOCX"),
  [Parameter(Mandatory=$true)]
  [int]$month,
  [Parameter(Mandatory=$true)]
  [int]$year,
  [Parameter(Mandatory=$true)]
  [string[]]$path)
   Get-ChildItem -Path $path -Include $filetypes -Recurse |
   Where-Object { 
   $_.lastwritetime.month -eq $month -AND $_.lastwritetime.year -eq $year }
  } #end function Get-FilesByDate
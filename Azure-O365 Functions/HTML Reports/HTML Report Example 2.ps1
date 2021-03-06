Install-Module PSWriteHTML -Force
Install-Module Dashimo -Force
$Process = Get-Process | Select-Object -First 30
$Process1 = Get-Process | Select-Object -First 5
$Process2 = Get-Process | Select-Object -First 10
$Process3 = Get-Process | Select-Object -First 10
Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy.html -Show {
    Tab -Name 'First tab' {
        Section -Name 'Test' {
            Table -DataTable $Process
        }
        Section -Name 'Test2' {
            Panel {
                Table -DataTable $Process1
            }
            Panel {
                Table -DataTable $Process1
            }
        }
        Section -Name 'Test3' {
            Table -DataTable $Process -DefaultSortColumn 'Id'
        }
    }
    Tab -Name 'second tab' {
        Panel {
            Table -DataTable $Process2
        }
        Panel {
            Table -DataTable $Process2
        }
        Panel {
            Table -DataTable $Process3 -DefaultSortIndex 4
        }
    }
}
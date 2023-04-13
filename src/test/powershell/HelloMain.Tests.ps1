Import-Module Pester
$scriptPath = Join-Path -Path (Join-Path -Path (Split-Path -Path $PSScriptRoot) -ChildPath "main/powershell") -ChildPath "HelloMain.ps1"

.$scriptPath

Describe "HelloMain" {
    Context "Fibonacci" {
        It "returns the correct Fibonacci number" {
            [HelloMain]::Fibonacci(7) | Should -Be 13
        }
    }

    Context "Tribonacci" {
        It "returns the correct Tribonacci number" {
            [HelloMain]::Tribonacci(4) | Should -Be 2
        }
    }

    Context "GCDFinder" {
        It "returns the correct GCD" {
            [HelloMain]::GCDFinder(56, 98) | Should -Be 14
        }
    }
}

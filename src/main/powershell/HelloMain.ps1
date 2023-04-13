class HelloMain {
    [int]$startingValue
    [int]$endingValue
    [System.Collections.Generic.List[int]]$sequence

    HelloMain([int]$startingValue, [int]$endingValue, [System.Collections.Generic.List[int]]$sequence) {
        $this.startingValue = $startingValue
        $this.endingValue = $endingValue
        $this.sequence = $sequence
    }

    static [int] Fibonacci([int]$n) {
        if ($n -eq 0) { return 0 }
        elseif ($n -eq 1) { return 1 }
        else { return [HelloMain]::Fibonacci($n - 1) + [HelloMain]::Fibonacci($n - 2) }
    }

    static [int] Tribonacci([int]$n) {
        if ($n -eq 0) { return 0 }
        elseif ($n -eq 1) { return 0 }
        elseif ($n -eq 2) { return 1 }
        else { return [HelloMain]::Tribonacci($n - 1) + [HelloMain]::Tribonacci($n - 2) + [HelloMain]::Tribonacci($n - 3) }
    }

    static [int] GCDFinder([int]$a, [int]$b) {
        if ($b -eq 0) { return $a }
        else { return [HelloMain]::GCDFinder($b, $a % $b) }
    }
}

function HybridSort {
    param(
        [Parameter(Mandatory=$true)]
        [int[]]$array,
        [int]$threshold = 10
    )

    # Insertion Sort function
    function InsertionSort([int[]]$arr, [int]$left, [int]$right) {
        for ($i = $left + 1; $i -le $right; $i++) {
            $key = $arr[$i]
            $j = $i - 1
            while ($j -ge $left -and $arr[$j] -gt $key) {
                $arr[$j + 1] = $arr[$j]
                $j--
            }
            $arr[$j + 1] = $key
        }
    }

    # Merge function
    function Merge([int[]]$arr, [int]$left, [int]$mid, [int]$right) {
        $n1 = $mid - $left + 1
        $n2 = $right - $mid

        $LeftArray = New-Object int[] ($n1)
        $RightArray = New-Object int[] ($n2)

        for ($i = 0; $i -lt $n1; $i++) {
            $LeftArray[$i] = $arr[$left + $i]
        }
        for ($j = 0; $j -lt $n2; $j++) {
            $RightArray[$j] = $arr[$mid + 1 + $j]
        }

        $i = 0
        $j = 0
        $k = $left

        while ($i -lt $n1 -and $j -lt $n2) {
            if ($LeftArray[$i] -le $RightArray[$j]) {
                $arr[$k] = $LeftArray[$i]
                $i++
            } else {
                $arr[$k] = $RightArray[$j]
                $j++
            }
            $k++
        }

        while ($i -lt $n1) {
            $arr[$k] = $LeftArray[$i]
            $i++
            $k++
        }

        while ($j -lt $n2) {
            $arr[$k] = $RightArray[$j]
            $j++
            $k++
        }
    }

    # Merge-Insertion sort function
    function Merge-InsertionSort([int[]]$arr, [int]$left, [int]$right) {
        if ($left -lt $right) {
            $length = $right - $left + 1
            if ($length -le $threshold) {
                InsertionSort $arr $left $right
            } else {
                $mid = [int]($left + ($right - $left) / 2)
                Merge-InsertionSort $arr $left $mid
                Merge-InsertionSort $arr ($mid + 1) $right
                Merge $arr $left $mid $right
            }
        }
    }

    Merge-InsertionSort $array 0 ($array.Length - 1)
    return $array
}

# Example usage
$array = 10, 7, 8, 9, 1, 5, 3, 2, 4, 6
HybridSort $array

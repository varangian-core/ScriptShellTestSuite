class HelloMain {
    static int startingValue = 5
    static int endingValue = 10
    List<Integer> sequence = []

    // Constructor
    public HelloMain(int startingValue, int endingValue, List<Integer> sequence) {
        this.startingValue = startingValue
        this.endingValue = endingValue
        this.sequence = sequence
    }

    def BSTSearch(sequence, endingValue) {
        if (sequence == null) {
            return false
        } else if (sequence.value == endingValue) {
            return true
        } else if (sequence.value > endingValue) {
            return BSTSearch(sequence.left, endingValue)
        } else {
            return BSTSearch(sequence.right, endingValue)
        }
    }

    //Sample methods

    def fibonacci(endingValue) {
        if (endingValue == 0) {
            return 0
        } else if (endingValue == 1) {
            return 1
        } else {
            return fibonacci(endingValue - 1) + fibonacci(endingValue - 2)
        }
    }


    def tribonacci(endingValue) {
        if (endingValue == 0) {
            return 0
        } else if (endingValue == 1) {
            return 0
        } else if (endingValue == 2) {
            return 1
        } else {
            return tribonacci(endingValue - 1) + tribonacci(endingValue - 2) + tribonacci(endingValue - 3)
        }
    }

    def GCDFinder(endingValue, startingValue) {
        if (b == 0) {
            return a
        } else {
            return GCDFinder(b, a % b)
        }
    }
}




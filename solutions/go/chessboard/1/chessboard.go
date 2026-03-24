package chessboard

// Declare a type named File which stores if a square is occupied by a piece - this will be a slice of bools
type File []bool

// Declare a type named Chessboard which contains a map of eight Files, accessed with keys from "A" to "H"
type Chessboard map[string]File

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file.
func CountInFile(cb Chessboard, file string) int {
	i := 0
    for _, x := range cb[file] {
        if x {
            i++
        }
    }
    return i
}

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank.
func CountInRank(cb Chessboard, rank int) int {
    if rank > 8 || rank < 1 {
        return 0
    }
	i := 0
    for _, v := range cb {
        if v[rank - 1] {
            i++
        }
    }
    return i
}

// CountAll should count how many squares are present in the chessboard.
func CountAll(cb Chessboard) int {
	i := 0
    for _, v := range cb {
        for range v {
            i++
        }
    }
    return i
}

// CountOccupied returns how many squares are occupied in the chessboard.
func CountOccupied(cb Chessboard) int {
	i := 0
    for _, v := range cb {
        for _, p := range v {
            if p {
                i++
            }
        }
    }
    return i
}

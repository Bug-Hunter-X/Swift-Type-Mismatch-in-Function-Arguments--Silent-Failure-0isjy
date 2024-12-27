func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

func calculateAreaSafe(width: Int, height: String) -> Int? {
    guard let heightInt = Int(height) else {
        return nil // Handle the error appropriately
    }
    return width * heightInt
}

let area1 = calculateArea(width: 10, height: 20) // Correct usage

let area2 = calculateAreaSafe(width: 10, height: "20")
if let safeArea = area2 {
    print(safeArea) // Correctly handles string input
} else {
    print("Invalid height value")
}

let area3 = calculateAreaSafe(width:10, height: "abc")
if let safeArea = area3 {
    print(safeArea)
} else {
    print("Invalid height value")
}
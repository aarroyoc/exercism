package gross

// Units stores the Gross Store unit measurements.
func Units() map[string]int {
	m := map[string]int{
        "quarter_of_a_dozen": 3,
        "half_of_a_dozen": 6,
        "dozen": 12,
        "small_gross": 120,
        "gross": 144,
        "great_gross": 1728,
    }
    return m
}

// NewBill creates a new bill.
func NewBill() map[string]int {
	return make(map[string]int)
}

// AddItem adds an item to customer bill.
func AddItem(bill, units map[string]int, item, unit string) bool {
	value, exists := units[unit]
    if !exists {
        return false
    }
    itemValue := bill[item]
    itemValue += value
    bill[item] = itemValue
    return true
}

// RemoveItem removes an item from customer bill.
func RemoveItem(bill, units map[string]int, item, unit string) bool {
	itemValue, itemExists := bill[item]
    unitValue, unitExists := units[unit]
    if !itemExists || !unitExists {
        return false
    }
    newItemValue := itemValue - unitValue
    if newItemValue < 0 {
        return false
    } else if newItemValue == 0 {
        delete(bill, item)
    } else {
        bill[item] = newItemValue
    }
    return true
}

// GetItem returns the quantity of an item that the customer has in his/her bill.
func GetItem(bill map[string]int, item string) (int, bool) {
	value, exists := bill[item]
    return value, exists
}

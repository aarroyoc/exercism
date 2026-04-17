import re

class Luhn:
    def __init__(self, card_num):
        self.card_str = card_num

    def valid(self):
        if re.match("^[0-9 ]*$", self.card_str) is None:
            return False
            
        card_num = [int(c) for c in self.card_str.replace(" ", "")]
        
        if len(card_num) < 2:
            return False
        
        sum = 0
        for i in range(len(card_num) - 2, -1, -2):
            value = card_num[i] * 2
            if value > 9:
                value -= 9
            sum += value
        for i in range(len(card_num) - 1, -1, -2):
            sum += card_num[i]

        return sum % 10 == 0
        

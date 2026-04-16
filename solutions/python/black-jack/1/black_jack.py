"""Functions to help play and score a game of blackjack.

How to play blackjack:    https://bicyclecards.com/how-to-play/blackjack/
"Standard" playing cards: https://en.wikipedia.org/wiki/Standard_52-card_deck
"""


def value_of_card(card):
    """Determine the scoring value of a card.

    :param card: str - given card.
    :return: int - value of a given card.  See below for values.

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 1
    3.  '2' - '10' = numerical value.
    """
    if card in "JQK":
        return 10
    elif card == "A":
        return 1
    else:
        return int(card)


def higher_card(card_one, card_two): 
    val_a = value_of_card(card_one)
    val_b = value_of_card(card_two)

    if val_a > val_b:
        return card_one
    elif val_b > val_a:
        return card_two
    else:
        return card_one, card_two


def value_of_ace(card_one, card_two):
    """Calculate the most advantageous value for an upcoming ace card.

    :param card_one, card_two: str - card dealt. See below for values.
    :return: int - either 1 or 11 value of the upcoming ace card.

    1.  'J', 'Q', or 'K' (otherwise known as "face cards") = 10
    2.  'A' (ace card) = 11 (if already in hand)
    3.  '2' - '10' = numerical value.
    """
    if card_one == "A" or card_two == "A":
        return 1
        
    val_a = value_of_card(card_one)
    val_b = value_of_card(card_two)

    if val_a + val_b + 11 > 21:
        return 1
    else:
        return 11


def is_blackjack(card_one, card_two):
    hand = [card_one, card_two]
    return "A" in hand and ('10' in hand or 'K' in hand or 'Q' in hand or 'J' in hand)


def can_split_pairs(card_one, card_two):
    return value_of_card(card_one) == value_of_card(card_two)


def can_double_down(card_one, card_two):
    val_a = value_of_card(card_one)
    val_b = value_of_card(card_two)

    return 8 < (val_a + val_b) < 12 

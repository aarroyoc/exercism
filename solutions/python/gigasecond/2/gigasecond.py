from datetime import timedelta

GIGASECOND = timedelta(seconds=1_000_000_000)

def add(moment):
    return moment + GIGASECOND

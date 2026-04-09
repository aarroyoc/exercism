from pathlib import Path

# learning problems usually are unique to each language and cannot be
# completed on all languages, do not count or show them
learning_problems = {
    "gigasecond-anniversary",
    "reporting-for-duty",
    "lucys-magnificent-mapper",
    "lillys-lasagna-leftovers",
    "lillys-lasagna",
    "larrys-winning-checker",
    "leslies-lists",
    "logans-numeric-partition",
    "pizza-pi",
    "key-comparison",
    "socks-and-sexprs",
    "character-study",
    "pal-picker",
    "high-scores",
    "bird-count",
    "log-line-parser",
    "high-score-board",
    "assembly-line",
    "mixed-juices",
    "wizards-and-warriors",
    "karls-languages",
    "jedliks-toy-car",
    "international-calling-connoisseur",
    "elyses-enchantments",
    "shopping",
    "lucians-luscious-lasagna",
    "football-match-reports",
    "captains-log",
    "calculator-conundrum",
    "salary-calculator",
    "tim-from-marketing",
    "squeaky-clean",
    "booking-up-for-beauty",
    "weather-forecast",
    "remote-control-competition",
    "vehicle-purchase",
    "airport-robot",
    "gross-store",
    "election-day",
    "the-farm",
    "card-tricks",
    "lasagna-master",
    "jedliks-toys",
    "welcome-to-tech-palace",
    "animal-magic",
    "party-robot",
    "secrets"
}

class Language:
    def __init__(self, path):
        self.path = path
        self.name = path.name
        self.problems = {p.name: 1 for p in path.iterdir() if p.is_dir() and p.name not in learning_problems}

def main():
    solutions_p = Path("solutions")
    langs = [Language(p) for p in solutions_p.iterdir() if p.is_dir()]
    all_problems = dict()
    for lang in langs:
        for problem in lang.problems:
            all_problems[problem] = lang.problems[problem] + (all_problems.get(problem) or 0)

    for lang in sorted(langs, key=lambda x: len(x.problems), reverse=True):
        # Show each language,
        # how many problems have been done, and which problems have been done
        # in another language but not on this one
        print(f"{lang.name} ({len(lang.problems)})")
        missing = ", ".join(set(all_problems.keys()) - set(lang.problems.keys()))
        done = ", ".join(set(lang.problems.keys()))
        print(f"Done: {done}")
        print(f"Missing: {missing}")


    print("==========")
    for problem in sorted(all_problems, key=all_problems.get, reverse=True):
        # Rank problems by the number of implementations available
        print(f"{problem} ({all_problems[problem]})")
        done = ", ".join([l.name for l in langs if problem in l.problems])
        missing = ", ".join([l.name for l in langs if problem not in l.problems])
        print(f"Done: {done}")
        print(f"Missing: {missing}")




if __name__ == "__main__":
    main()

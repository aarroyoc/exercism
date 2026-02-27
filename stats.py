from pathlib import Path

class Language:
    def __init__(self, path):
        self.path = path
        self.name = path.name
        self.problems = {p.name: 1 for p in path.iterdir() if p.is_dir()}

def main():
    solutions_p = Path("solutions")
    langs = [Language(p) for p in solutions_p.iterdir() if p.is_dir()]
    all_problems = dict()
    for lang in langs:
        for problem in lang.problems:
            all_problems[problem] = lang.problems[problem] + (all_problems.get(problem) or 0)

    for lang in langs:
        # Show each language,
        # how many problems have been done, and which problems have been done
        # in another language but not on this one
        print(f"Language: {lang.name}")
        print(f"{len(lang.problems)} problems done")
        missing = ", ".join(set(all_problems.keys()) - set(lang.problems.keys()))
        done = ", ".join(set(lang.problems.keys()))
        print(f"Problems done: {done}")
        print(f"Missing problems: {missing}")


    print("==========")
    for problem in sorted(all_problems, key=all_problems.get, reverse=True):
        # Rank problems by the number of implementations available
        print(f"Problem: {problem}")
        print(f"{all_problems[problem]} implementations")
        missing = ", ".join([l.name for l in langs if problem not in l.problems])
        print(f"Missing in {missing}")




if __name__ == "__main__":
    main()

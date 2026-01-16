import os

print("hello")


def some_func(input):
    return f"your custom output {input}"


def MyFuture(input: str, other: str = "byebye") -> str:
    MYFUTURE = input

    if not input:
        raise ValueError("error my friend")

    return MYFUTURE



print_vals = ("hello", "aashdjlfhasdkljfhasjkldhfashdjlfhasdkljfhasjkldhsssssssssssssssss")

for val in print_vals:
    print(val)


class MyFutureClass:
    def __init__(self, some_input: str):
        self.some_input = some_input

    def some_func(self):
        return "hello"

    def some_fun():
        pass

    pass


if __name__ == "__main__":
    print("current directory:", os.path.curdir)

    INPUT = "yo!"
    out = "yo"
    out = {"my_dict": []}
    # out =
    print(some_func(INPUT))

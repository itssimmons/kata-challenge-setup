from invoke import task  # pyright: ignore[reportMissingImports]


@task
def run(c):
    c.run("python main.py")


@task
def test(c):
    c.run("pytest -v")

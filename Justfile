set quiet := true

[private]
default:
    just --choose --unsorted

clean:
    rm -rf \
        dist \
        .pytest_cache \
        .mypy_cache \
        .coverage \
        .coverage.* \
        .ruff_cache \
        *.egg-info \
        :

pidev:
    pip install -e '.[dev]'
    pip install --upgrade pip

checkall:
    pre-commit run --all-files

rebase:
    git fetch --all
    git rebase -i origin/v1

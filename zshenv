echo 'Hello from .zshenv'

function exists() {
    # `command -v` is similar to `which`
    # https://stackoverflow.com/a/677212/1341838

    # $1 is the first parameter of the function

    # STDIN (Keyboard) = 0
    # STDOUT (Display) = 1
    # STDERR (Display) = 2

    command -v $1 >/dev/null 2>&1
    # More explicitly written:
    # command -v $1 1>/dev/null 2>/dev/null
}
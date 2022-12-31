use v6.d;

unit module DSL::Shared::Utilities::CopyToClipboard;

#| Replaces the contents of the clipboard with the first argument
#| If the first argument is not a string then it is converted to one with .raku.
#| If $clipboard-command is the empty string then no copying to the clipboard is done.
#| If $clipboard-command is Whatever or 'Whatever' then:
#| 1. It is attempted to use the environment variable CLIPBOARD_COPY_COMMAND.
#|   If CLIPBOARD_COPY_COMMAND is defined and it is the empty string then no copying to the clipboard is done.
#| 2. If the variable CLIPBOARD_COPY_COMMAND is not defined then:
#|   - 'pbcopy' is used on macOS
#|   - 'clip.exe' on Windows
#|   - 'xclip -selection clipboard' on Linux.
proto copy-to-clipboard(|) is export {*}

multi sub copy-to-clipboard($payload is copy, :$clipboard-command is copy = Whatever) {

    if $payload !~~ Str {
        $payload = $payload.raku;
    }

    if $clipboard-command.isa(Whatever) || $clipboard-command ~~ Str && $clipboard-command eq 'Whatever' {
        if %*ENV<CLIPBOARD_COPY_COMMAND>:exists {
            $clipboard-command = %*ENV<CLIPBOARD_COPY_COMMAND>;
        } else {
            $clipboard-command =
                    do given $*DISTRO {
                        when $_.is-win { "clip.exe" }
                        when $_ ~~ 'macos' { "pbcopy" }
                        default {
                            # Assuming it is Linux and it has xclip
                            "xclip -selection clipboard"
                        }
                    }
        }
    }

    if $clipboard-command.chars > 0 {
        shell "echo '$payload' | $clipboard-command";
    }
}

multi sub copy-to-clipboard(Bool :$usage-message = True -->Str) {
    my $usage = Q:c:to/EOH/;
        If --clipboard-command is the empty string then no copying to the clipboard is done.
        If --clipboard-command is 'Whatever' then:
            1. It is attempted to use the environment variable CLIPBOARD_COPY_COMMAND.
                If CLIPBOARD_COPY_COMMAND is defined and it is the empty string then no copying to the clipboard is done.
            2. If the variable CLIPBOARD_COPY_COMMAND is not defined then:
                - 'pbcopy' is used on macOS
                - 'clip.exe' on Windows
                - 'xclip -selection clipboard' on Linux.
    EOH

    if $usage-message {
        $usage
    } else {
        warn 'No reason to use this function signature with !$usage-message.'
    }
}
# Copyright 2020 Jack Grigg
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

### Localization for strings in the rage CLI tools

-age = age
-rage = rage

## CLI flags

-flag-armor = -a/--armor
-flag-decrypt = -d/--decrypt
-flag-encrypt = -e/--encrypt
-flag-identity = -i/--identity
-flag-recipient = -r/--recipient
-flag-recipients-file = -R/--recipients-file
-flag-passphrase = -p/--passphrase
-flag-max-work-factor = --max-work-factor
-flag-unstable = --features unstable

## Usage

-input = INPUT
-output = OUTPUT
-identity = IDENTITY
-recipient = RECIPIENT
-recipients-file = PATH

usage-header = Usage:

rage-usage =
    {usage-header}
    {"  "}{$usage_a}
    {"  "}{$usage_b}

    {$flags}

    {-input} defaults to standard input, and {-output} defaults to standard output.

    {-recipient} can be:
    - An {-age} public key, as generated by {$keygen_name} ("age1...").
    - An SSH public key ("ssh-ed25519 AAAA...", "ssh-rsa AAAA...").

    {-recipients-file} is a path to a file containing {-age} recipients, one per line
    (ignoring "#" prefixed comments and empty lines).

    {-identity} is a path to a file with {-age} identities, one per line
    (ignoring "#" prefixed comments and empty lines), or to an SSH key file.
    Passphrase-encrypted {-age} identity files can be used as identity files.
    Multiple identities may be provided, and any unused ones will be ignored.

    Example:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

## Keygen messages

tty-pubkey = Public key
identity-file-created = created
identity-file-pubkey = public key

## Encryption messages

autogenerated-passphrase = Using an autogenerated passphrase:
type-passphrase = Type passphrase
prompt-passphrase = Passphrase

## General errors

err-failed-to-open-output = Failed to open output: {$err}
err-failed-to-write-output = Failed to write to output: {$err}
err-identity-ambiguous = {-flag-identity} requires either {-flag-encrypt} or {-flag-decrypt}.
err-mixed-encrypt-decrypt = {-flag-encrypt} can't be used with {-flag-decrypt}.
err-passphrase-timed-out = Timed out waiting for passphrase input.
err-same-input-and-output = Input and output are the same file '{$filename}'.

err-ux-A = Did {-rage} not do what you expected? Could an error be more useful?
err-ux-B = Tell us
# Put (len(A) - len(B) - 32) spaces here.
err-ux-C = {"                          "}

## Encryption errors

err-enc-broken-stdout = Could not write to stdout: {$err}
rec-enc-broken-stdout = Are you piping to a program that isn't reading from stdin?

err-enc-broken-file = Could not write to file: {$err}

err-enc-invalid-recipient = Invalid recipient '{$recipient}'

err-enc-missing-recipients = Missing recipients.
rec-enc-missing-recipients = Did you forget to specify {-flag-recipient}?

err-enc-mixed-identity-passphrase = {-flag-identity} can't be used with {-flag-passphrase}.
err-enc-mixed-recipient-passphrase = {-flag-recipient} can't be used with {-flag-passphrase}
err-enc-mixed-recipients-file-passphrase = {-flag-recipients-file} can't be used with {-flag-passphrase}
err-enc-passphrase-without-file = File to encrypt must be passed as an argument when using {-flag-passphrase}

## Decryption errors

rec-dec-excessive-work = To decrypt, retry with {-flag-max-work-factor} {$wf}

err-dec-armor-flag = {-flag-armor} can't be used with {-flag-decrypt}.
rec-dec-armor-flag = Note that armored files are detected automatically.

err-dec-identity-encrypted-without-passphrase =
    Identity file '{$filename}' is encrypted with age but not with a passphrase.

err-dec-identity-not-found = Identity file not found: {$filename}

err-dec-missing-identities = Missing identities.
rec-dec-missing-identities = Did you forget to specify {-flag-identity}?

err-dec-passphrase-flag = {-flag-passphrase} can't be used with {-flag-decrypt}.
rec-dec-passphrase-flag = Note that passphrase-encrypted files are detected automatically.

err-dec-passphrase-without-file-win =
    This file requires a passphrase, and on Windows the
    file to decrypt must be passed as a positional argument
    when decrypting with a passphrase.

err-dec-recipient-flag = {-flag-recipient} can't be used with {-flag-decrypt}.
err-dec-recipients-file-flag = {-flag-recipients-file} can't be used with {-flag-decrypt}.
rec-dec-recipient-flag = Did you mean to use {-flag-identity} to specify a private key?

## rage-mount strings

-flag-mnt-types = -t/--types

info-decrypting = Decrypting {$filename}
info-mounting-as-fuse = Mounting as FUSE filesystem

err-mnt-missing-filename = Missing filename.
err-mnt-missing-mountpoint = Missing mountpoint.
err-mnt-missing-types = Missing {-flag-mnt-types}.
err-mnt-unknown-type = Unknown filesystem type "{$fs_type}"

## Unstable features

test-unstable = To test this, build {-rage} with {-flag-unstable}.

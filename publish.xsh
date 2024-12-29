import argparse

print("Publishing Silverbullet")

$RAISE_SUBPROC_ERROR = True  # Raise an error if a subprocess returns a non-zero exit status.
                             # Read more: https://xon.sh/envvars.html#raise-subproc-error

argp = argparse.ArgumentParser(description=f"Get count of lines in HTML by site address.")
argp.add_argument('--force', help="Wipeout destination")
args = argp.parse_args()

TARGET= "https://malys-silverbulle-91.deno.dev"
parameters=["sync",  "../silverbullet_backup", TARGET ]
if args.force:
    print("Wipingout destination")
    parameters.append("--wipe-secondary")

open-cli.cmd @(TARGET)

silverbullet @(parameters)
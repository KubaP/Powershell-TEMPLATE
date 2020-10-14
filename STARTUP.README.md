# Getting Started
- Replace all occurrences of `<MODULENAME>` with module name string through find and replace.
- Rename all files with `MODULENAME` with module name string (must be done manually).
- Populate `.psd1` manifest file with extra information, and generate a unique guid.

- Create a commit on the `development` branch and push it.
- Set the default branch on Github to `development`.
- Create all the azure pipelines from the `.yaml` files.
  - For each pipeline config file, create a new pipeline, set appropriate name, and run it on the *development* branch just to register a valid run (required for next step).
- Add branch protection rules:
  - `development`
    - Require status checks to pass before merging
    - Require branches to be up-to-date
    - Select the `Development PR` check
  - `master`
    - Require status checks to pass before merging
    - Require branches to be up-to-date
    - Select the `Master PR` check

# For Later
- Go through and fix/update the `README.md` file.

# Before publishing package
- Go though all `pull requests`/`commits` since last package to be sure of whats new/changed/fixed/updated etc.
- Go through `.psd1` manifest to:
  - Update `version`
  - Make sure tags are correct.
- Go through `changelog.md` to create new entry for the new package.
- Go through `README.md` and `about_pages` to document any new features.

# After Publishing first version
- Update the `PSGallery` badges in the `README.md` file to point to the newly-created package webpage.

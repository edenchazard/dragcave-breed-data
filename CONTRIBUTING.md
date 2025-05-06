# Contributing

You must be a contributor to run the workflows. There are safeguards in place to ensure nobody can merge dubious changes.

Simply make a new branch on this repo [here](https://github.com/edenchazard/dragcave-breed-data/branches) and then open a PR for it. Forking to your own repository won't work because forks don't have access to git secrets.

A bot will run when updating any of the following files:

- [fallbackBreeds.json](https://github.com/edenchazard/dragcave-breed-data/blob/main/src/fallbackBreeds.json)
- [localBreeds.json](https://github.com/edenchazard/dragcave-breed-data/blob/main/src/localBreeds.json)
- [breedignore](https://github.com/edenchazard/dragcave-breed-data/blob/main/src/breedignore)

The bot will automatically:

- Correct any formatting errors
- Download new lineage tiles
- Produce artifacts for Lineage Builder to use

To merge your changes to main, you must await a review from anyone in the [CODEOWNERS file](https://github.com/edenchazard/dragcave-breed-data/blob/main/.github/CODEOWNERS). All checks must pass and your commits must be signed. (Doing this from the web interface will ensure your commits are signed.)

Once you have approval, you're free to merge without obstruction.

After successfully merging, the deployment will begin. Your changes will be live on Lineage Builder within 5 minutes. You don't need to do anything further. Thanks for contributing!

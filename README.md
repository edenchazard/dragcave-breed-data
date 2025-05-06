# dragcave-breed-data

This repository allows contributors to deploy new or updated breed data for [Lineage Builder](https://github.com/edenchazard/dc-lineage-builder).

## Contributing

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

## Breed entry formatting

**TODO**

## Files

Lineage Builder handles the tiles in two ways: by using a copy of the tile itself, compressed to `WEBP`, or via fancy `CSS` positioning.

A breed that has subentries can be listed in both files, as long as the overall entry is unique. This happens when multiple artists have worked on a breed with alts or salts, but not all have given permission so not all of the subentries can be put in the `localBreeds.json` file.

### output

Built artifacts produced by the bot. You shouldn't modify anything in here.

### src/caches

This directory stores saved tiles. Tiles will be saved in two resolutions: `36x48` and `72x96`. Deleting an image from any of the two directories will force the bot to redownload it.

### src/localBreeds.json

Simply provide the codes for the dragons with the tiles you want to use.

**IMPORTANT:** Only artists who have given explicit permission for their works to be stored offsite, either via correspondence or in the [Art Usage Thread](https://forums.dragcave.net/topic/51554-the-official-art-usage-form/) may have their dragons in this file. This goes doubly-so for spriters alts.

**TODO:** Make a list of artists who have given permission.

### src/fallbackBreeds.json

This is a little trickier, you'll have to go into dev tools and manually position the _full dragon sprite_ within the box, taking care to get the `height`, `width`, `left` and `top` properties as close as possible.

### src/breedignore

Some breeds change appearance because of game mechanics. Lineage Builder caches the copies of its local tiles, this makes it efficient and means each tile only gets looked up once. However, if the cache ever needs to be emptied and all tiles redownloaded, these particular tiles will be problematic as they might not have the appearance we're intending to download.

For example, downloading the tile for a `day nocturne` has to be done during the day, it can't be done at night as this would fetch the wrong tile.

For these breeds, make sure to fetch the tile while it's available, and once that's done, make another commit to add the code to the `breedignore` file.

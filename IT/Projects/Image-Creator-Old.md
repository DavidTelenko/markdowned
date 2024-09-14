# PyQT V1

- [x] Bing image creator api view
- [x] Centered image
- [x] Prepended prompt and body prompt input field
- [x] Asyncronous generation and ui
- [x] Proper window resizing
- [x] Save image on right click
- [x] Copy image on right click to clipboard
- [x] Git repo
- [x] History (promt - local image path)
- [x] Watermark inpainting.
- [x] EXIF tags, implement prompt injection (preferably into comment tag)
- [ ] Build-in upscale.
  - [x] Local model /
  - [ ] online API
  - [ ] switch
- [ ] Comparison arrows like in nvidia rtx page
- [ ] Hand pick inpaint mask.
- [ ] Sort by image content into separate folders.
- [ ] Implement other OpenCV features.
- [ ] Folder management, (cloud storage)
- [ ] Settings
  - Choose image generation engine (via `_U` cookie token or API token), maybe run local model?
  - Localization
  - Themes
  - Temp folder choose, cache file, history file...
- [ ] Button to switch between presentation modes, centered one or grid of 4

# WinUI 3 V2

- [ ] Git Repo
- [ ] UI
  - [ ] Prompt and prepend fields
  - [ ] Centered image (Next, Previous, Full Screen)
  - [ ] Side menu (Folder Tree view)
  - [ ] Grid view
  - [ ] Settings dialog
  - [ ] Prompt editor
  - [ ] Blur image when generating
- [ ] Actions
  - [ ] Save Image
  - [ ] Copy image to clipboard
  - [ ] Copy prompt to clipboard
  - [ ] Delete image
  - [ ] Favorite image
  - [ ] Upscale image
  - [ ] Edit Prompt
- [ ] Include prompt to EXIF Comment Tag
- [ ] Auto inpaint bing watermark
- [ ] Google Drive Auto backup favourites
- [ ] Notify when job finished

# Notes / Helpers

- WinUI 3
- [C# OpenCV Docs](https://shimat.github.io/opencvsharp_docs/html/d79b4840-c9b3-3173-c05c-a9f65420bac0.htm)
- [Reading data metadata from JPEG, XMP or EXIF in C# - Stack Overflow](https://stackoverflow.com/questions/2280948/reading-data-metadata-from-jpeg-xmp-or-exif-in-c-sharp)

# Image Creator Infrastructure

## Backend

API CRUD operations on:

- User
- Image
- Image collection

## Database:

**User:**

- Name
- Password hash
- Profile Id

**Profile:**

- Subscription plan

**Collection:**

- Name
- Owner Id
- Preview Image Id

**Image:**

- Hash
- Metadata
- Prompt
- Collection Id
- Style | Relatedness

## Frontend

**GUI frontend as PVA in flutter:**

- Create image page
- Collections page
- Regenerate button

## TUI frontend

This section not only displays the command line interface usage, but also
showcases all targeted functionality of GUI frontend

**User commands**

```bash
# opens login view in browser
imgen user login

# register account will redirect to browser to register with web-view (see how
# gh does it)
imgen user register

# opens user control panel in browser
imgen user control
```

**Directory commands**

```bash
# set directory to be synced with database
# directory must not exist before setting or has to be empty
# upon first `set` action `sync` will be invoked
# each collection will be interpreted as subdirectory
# each image will be named with it's id
# all metadata about image will be written in comment section (of EXIF for jpg)
# if image belongs to two (or more) different collections, symlink to image of
# collection with least amount of images will be generated
# `All Images` collection will only contain symlinks
imgen directory set "{path}"

# sync directory with database
# if no directory was set you will be prompted to
# please note that all hand made changes will be erased
imgen directory sync

# opens directory in system explorer or
# opens directory which corresponds to collection name or id
imgen directory open [--collection "{collection_name}|{collection_id}"]
```

**Image commands**

```bash
# generates image(s) with prompt and saves to directory
# this will output image_id(s) to terminal and save image in both local
# directory and in database
# output image(s) if terminal supports picture rendering
imgen image generate/create "{prompt}" [--amount "{number}"]

# regenerates last generated image deleting it from database right away
# if index was provided it will only regenerate that image from last generation
# if index is out of bounds command will be rejected
imgen image regenerate [--index "{number}"]

# launches area selector to regenerate image, creates new image in the same
# collection, with the same prompt, but edits selected area with new content
imgen image paint "{image_prompt}|{image_id}" "{prompt}"

# delete image by id
imgen image delete "{image_id}"

# fuzzily find image(s) and return it as array of id's
# searches only in specified collection if provided
imgen image find "{prompt}" [--collection "{collection_id}"]

# list all generated images in specified collection
imgen image list ?"{collection_id}|{collection_name}"
```

**Tags related**

```bash
# generate tags for image (this probably involves different ai model aimed to
# classify image by it's traits)
imgen image tags generate

# add tags for images
imgen image tags add "{tag_text}"

# remove tag from image
imgen image tags delete "{tag_text}"

# edit tag in image
imgen image tags edit "{tag_text}" "{new_tag_text}"
```

**Collection commands**

```bash
# create collection
# this will output collection_id to terminal
imgen collection create "{name}" [--set]

# delete image collection
imgen collection delete "{collection_id}|{collection_name}"

# list all collections (id, name, amount of pictures in it)
imgen collection list

# add image to collection
imgen colletion add "{image_id}"

# set current working collection to which all images will be generated
icraetor collection set "{collection_id}|{collection_name}"

# get id of collection by name
# if collection has duplicates this will return array of indices
imgen collection find "{collection_name}"

# control collection public visibility
imgen collection public true|false

# opens collection in web browser view
imgen collection open "{collection_id}|{collection_name}"

# summarize collection and it's contents
# this involves combining unique tags of all images and generating some other
# stats
imgen collection summarize "{collection_id}|{collection_name}"
```

**Minor hints**

```bash
# both this command can be used to create collection and set it as current
imgen collection create "{name}" | icreator collection set
imgen collection create --set "{name}"

# every command which accepts collection name or id will work by conceptually
# invoking this command first for the name then getting first element then
# passing received id to desired command

# for example both this commands will show all images in
# first found by name collection
imgen collection find "{name}" | get 0 | icreator image list
imgen image list "{name}"
```

# Ideas and TODO:

- All images collection: default collection which contains all images (can be
  implemented purely programmatically)

- Image style and tags generation should involve similar to pinterest model

- If images is not displayable in tui, it's probably very inconvenient to use
  TUI tool. We should be able to show image right after generation

- GUI frontend must have decent keyboard shortcuts in flutter this involves
  dancing with a tambourine

- Backend at first can be implemented with firebase, but should be decoupled
  from frontend interfaces

- There can be server (probably in go) which will do database management and
  image generation, but it's in future.

- Scrollbar

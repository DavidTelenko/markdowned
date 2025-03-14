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
- [ ] **Functionality**: Image Generation
- [ ] **Functionality**: Users, web based database, error report storing

- [ ] **Critical**: Tags dialog performance (hive + set lookup)
- [x] **Critical**: Crashes/Freezes randomly (scrollable text in image grid
      maybe?)

- [x] **Bug**: After fast scroll down controller for scrolling text in grid
      image card causes ctd
- [ ] **Bug**: SnackBar appears underneath the modal
- [ ] **Bug**: On state init grid image card hover effect behaves incorrectly
- [x] **Bug**: When backing up in prompt field input still resumes from the end
- [x] **Bug**: Copy image does not work in release (semi broken)
- [x] **Bug**: Next image in full screen artifact
- [x] **Bug**: Crash on Win+V and click to paste
- [x] **Bug**: Tags addition for generated images broken
      [(sentry.io)](https://bitdemon-15172fdb2.sentry.io/issues/4480156046/?project=4505884236644352&query=&referrer=issue-stream&statsPeriod=14d&stream_index=0)

- [x] **Feature**: Full screen image restore grid location
- [x] **Feature**: Images tags
- [x] **Feature**: Search by prompt
- [ ] **Feature**: Search in settings
- [x] **Feature**: Sort by creation date (use image metadata)
- [ ] **Feature**: Sort by prompt
- [ ] **Feature**: Storing global tags (or not?)
- [ ] **Feature**: Virtual images folders/groups
- [x] **Feature**: Distinct filter chip for favorites
- [ ] **Feature**: Hide filters when scrolled down
- [ ] **Feature**: Localization (GetX, gen-l10n)
- [ ] **Feature**: Google drive backup
- [ ] **Feature**: Next Prev button shows how much images left in pull (show
      text after action)
- [ ] **Feature**: Integrate responsive framework
- [x] **Feature**: App icon
- [ ] **Feature**: Smooth scrolling for desktop ([dyn_mouse_scroll | Flutter
      Package (pub.dev)](https://pub.dev/packages/dyn_mouse_scroll))
- [ ] **Feature**: Parallax grid
- [ ] **Feature**: Gyro/mouse image tilt
      ([dough](https://pub.dev/packages/dough))
- [ ] **Feature**: Search suggestions
- [ ] **Feature**: Generate with this prompt
- [x] **Feature**: Right click menu in grid and list cards
- [x] **Feature**: Feature requester + bug reporter

- [ ] **Optimization**: [Listening for specific
      keys](https://docs.hivedb.dev/#/basics/hive_in_flutter?id=listening-for-specific-keys)

- [ ] **Polish**: Grid Transition to fullscreen image enhance
- [ ] **Polish**: On grid index restoration highlight the previously visible
      card (maybe move mouse)

# V 2.0 (React)

- [ ] **Bug**: Input caret is not visible in login screen
- [x] **Feature**: All images collection: default collection which contains all
      images (can be implemented purely programmatically)
- [ ] **Feature**: Image style and tags generation should involve similar to
      pinterest model
- [ ] **Feature**: If images is not displayable in tui, it's probably very
      inconvenient to use TUI tool. We should be able to show image right after
      generation
- [ ] **Feature**: GUI frontend must have decent keyboard shortcuts in flutter
      this involves dancing with a tambourine
- [x] **Feature**: Backend at first can be implemented with firebase, but
      should be decoupled from frontend interfaces
- [x] **Feature**: There can be server (probably in go) which will do database
      management and image generation, but it's in future.

# Hot

- [ ] Deployment
- [x] Generation
- [x] Cypress
- [x] Docker

- [x] C generator
- [x] R generator
- [ ] U generator
- [x] D generator

- [x] C collection
- [x] R collection
- [x] U collection
- [x] D collection

- [x] C image
- [x] R image
- [x] U image in collection
- [x] D image from collection
- [x] D image completely

- [x] Show prompt for images inside of collection
- [ ] Based on subscription user can set collection to private
- [ ] Viewing other users collections (without an ability to modify of course)
- [x] Make ellipsis buttons show appropriate pop-up menus
- [x] Sort query needs to be passed with the body because it is an object
- [x] Fix migrate script
- [?] Fix generation upload potential bug
- [x] Expand collection in collections page
- [x] Pagination in collections and in images
- [x] General collection
- [x] Open collection and see images inside (router!)
- [x] Fix more button not showing in collections without preview image

# Secondary

- [ ] select images -> add to (new) collection
- [ ] multiple selection workflow
- [ ] [image watermarking](https://github.com/syvaidya/openstego)
- [x] Full-screen image viewer (on left image on right prompt + carousel)
- [x] Favorites
- [x] Sorting
- [x] Set appropriate amount of image skeletons in image-results component
- [x] If image is only one set it in a component with 1 cell grid instead of 2 by n
- [ ] Event emitter server side memory leak
- [?] Optimize images add proper placeholder images / skeletons
- [ ] Paginate users list (server side + client side)
- [ ] Virtuoso image list
- [?] Fix image loading styles, lazy loading etc.
- [x] Generator creation
- [ ] User widget
- [ ] More settings
- [ ] Add searching capability using something like [algolia](https://dashboard.algolia.com/apps/BMK9DASM4Y/dashboard)
- [x] Make sort-by widget have it's own context and hook to give ability for
      queries to select sorting options
- [?] Loading spinner in login and register screens

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

- [ ] **Feature**: Loading spinner in login and register screens
- [ ] **Bug**: Input caret is not visible in login screen
- [ ] **Feature**: All images collection: default collection which contains all
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


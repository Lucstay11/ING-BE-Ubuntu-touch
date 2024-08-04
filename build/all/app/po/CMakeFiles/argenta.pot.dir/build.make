# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/luca/ubuntu-touch-app/ING-BE-Mobile

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app

# Utility rule file for argenta.pot.

# Include any custom commands dependencies for this target.
include po/CMakeFiles/argenta.pot.dir/compiler_depend.make

# Include the progress variables for this target.
include po/CMakeFiles/argenta.pot.dir/progress.make

po/CMakeFiles/argenta.pot:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating translation template"
	cd /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po && /usr/bin/intltool-extract --update --type=gettext/ini --srcdir=/home/luca/ubuntu-touch-app/ING-BE-Mobile argenta.desktop.in
	cd /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po && /usr/bin/xgettext -o argenta.pot -D /home/luca/ubuntu-touch-app/ING-BE-Mobile/po -D /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po --from-code=UTF-8 --c++ --qt --language=javascript --add-comments=TRANSLATORS --keyword=tr --keyword=tr:1,2 --keyword=N_ --keyword=_ --package-name='argenta' ../qml/AboutPage.qml ../qml/ContentDownloadDialog.qml ../qml/ContentHandler.qml ../qml/ContentPickerDialog.qml ../qml/Downloader.qml ../qml/FileExtensionMapper.js ../qml/Main.qml ../qml/MediaAccessDialog.qml ../qml/MimeTypeMapper.js ../qml/OpenDialog.qml ../qml/PickerDialog.qml ../qml/PopupWindowController.qml ../qml/PopupWindowOverlay.qml ../qml/SadPage.qml ../qml/SettingsComponent.qml ../qml/SettingsPage.qml ../qml/WebProcessMonitor.qml ../qml/actions/Copy.qml ../qml/actions/CopyImage.qml ../qml/actions/CopyLink.qml ../qml/actions/SaveImage.qml ../qml/actions/ShareLink.qml ../qml/components/settingspage/SpinRange.qml ../qml/js/argenta.js ../qml/js/inject.js argenta.desktop.in.h
	cd /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po && /opt/cmake/bin/cmake -E copy argenta.pot /home/luca/ubuntu-touch-app/ING-BE-Mobile/po

argenta.pot: po/CMakeFiles/argenta.pot
argenta.pot: po/CMakeFiles/argenta.pot.dir/build.make
.PHONY : argenta.pot

# Rule to build all files generated by this target.
po/CMakeFiles/argenta.pot.dir/build: argenta.pot
.PHONY : po/CMakeFiles/argenta.pot.dir/build

po/CMakeFiles/argenta.pot.dir/clean:
	cd /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po && $(CMAKE_COMMAND) -P CMakeFiles/argenta.pot.dir/cmake_clean.cmake
.PHONY : po/CMakeFiles/argenta.pot.dir/clean

po/CMakeFiles/argenta.pot.dir/depend:
	cd /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luca/ubuntu-touch-app/ING-BE-Mobile /home/luca/ubuntu-touch-app/ING-BE-Mobile/po /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po /home/luca/ubuntu-touch-app/ING-BE-Mobile/build/all/app/po/CMakeFiles/argenta.pot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : po/CMakeFiles/argenta.pot.dir/depend


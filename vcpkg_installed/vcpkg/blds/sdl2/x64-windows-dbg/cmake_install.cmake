# Install script for directory: Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/pkgs/sdl2_x64-windows/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2d.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2d.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2maind.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake"
         "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake"
         "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2Config.cmake"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2ConfigVersion.cmake"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_assert.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_atomic.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_audio.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_bits.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_blendmode.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_clipboard.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_copying.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_cpuinfo.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_egl.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_endian.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_error.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_events.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_filesystem.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_gamecontroller.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_gesture.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_guid.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_haptic.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_hidapi.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_hints.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_joystick.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_keyboard.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_keycode.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_loadso.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_locale.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_log.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_main.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_messagebox.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_metal.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_misc.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_mouse.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_mutex.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_name.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengl.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengl_glext.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles2.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles2_gl2.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles2_gl2ext.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles2_gl2platform.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_opengles2_khrplatform.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_pixels.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_platform.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_power.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_quit.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_rect.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_render.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_rwops.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_scancode.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_sensor.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_shape.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_stdinc.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_surface.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_system.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_syswm.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_assert.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_common.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_compare.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_crc32.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_font.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_fuzzer.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_harness.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_images.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_log.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_md5.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_memory.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_test_random.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_thread.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_timer.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_touch.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_types.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_version.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_video.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/SDL_vulkan.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/begin_code.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/include/close_code.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/include/SDL2/SDL_revision.h"
    "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/include-config-debug/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/licenses/SDL2" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.28.2-705f8fad22.clean/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "Z:/cplusplus/FirstProject/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

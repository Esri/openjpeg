project "openjpeg"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "532E3B5E-787B-4C07-8DBC-E85B1B5C1B4B"

flags { "NoPCH" }

includedirs {
  "src/lib/openjp2",
}

files {
  "src/lib/openjp2/bio.c",
  "src/lib/openjp2/cio.c",
  "src/lib/openjp2/dwt.c",
  "src/lib/openjp2/event.c",
  "src/lib/openjp2/function_list.c",
  "src/lib/openjp2/ht_dec.c",
  "src/lib/openjp2/image.c",
  "src/lib/openjp2/invert.c",
  "src/lib/openjp2/j2k.c",
  "src/lib/openjp2/jp2.c",
  "src/lib/openjp2/mct.c",
  "src/lib/openjp2/mqc.c",
  "src/lib/openjp2/openjpeg.c",
  "src/lib/openjp2/opj_malloc.c",
  "src/lib/openjp2/pi.c",
  "src/lib/openjp2/t1.c",
  "src/lib/openjp2/t2.c",
  "src/lib/openjp2/tcd.c",
  "src/lib/openjp2/tgt.c",
  "src/lib/openjp2/sparse_array.c",
  "src/lib/openjp2/thread.c",
}

if (_PLATFORM_ANDROID) then
  defines {
    "MUTEX_pthread",
  }
end

if (_PLATFORM_IOS) then
  defines {
    "MUTEX_pthread",
  }
end

if (_PLATFORM_LINUX) then
  defines {
    "MUTEX_pthread",
  }
end

if (_PLATFORM_MACOS) then
  defines {
    "MUTEX_pthread",
  }
end

if (_PLATFORM_WINDOWS) then
  defines {
    "MUTEX_win32",
  }
end

if (_PLATFORM_WINUWP) then
  defines {
    "MUTEX_win32",
  }
end

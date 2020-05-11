import os, strformat

import nimterop/[cimport, git]

when defined(windows):
  # Windows specific symbols, options and files

  # Dynamic library to link against
  const dynlibFile = "libode.dll"

elif defined(linux):
  const dynlibFile = "libode.so"

else:
  static: doAssert false

const
  base = currentSourcePath.parentDir() / "build"

echo base

static:
  cDebug()

  gitPull("https://bitbucket.org/odedevs/ode/src/0.16.1/", base, """
include/*
""")

#[
cPlugin:
  import
    strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    if sym.name.startsWith("_"): # sym.kind == nskProc and 
      sym.name = sym.name.replace("_", "priv_")
]#
#[
    #if sym.kind == nskType and sym.name.contains("__"):
    #  sym.name = sym.name.replace("__", "_m_")
]#


cIncludeDir base/"include/ode"
cIncludeDir base/"include"
cImport(base/"include/ode/ode.h",  dynlib="dynlibFile",  flags="-G__=_ -E_ -f:ast2", recurse=true) #flags="-f:ast2",
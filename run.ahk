#NoEnv

if (A_IsCompiled) {
  s := DllCall("GetCommandLine", "str")

  if (s ~= "^""")
    s := SliceFrom(s, ".""", 2)
  else
    s := SliceFrom(s, "( |$)")

  if (s := trim(s))
    run % s
}

SliceFrom(s, re, i := 0) {
  return SubStr(s, (s ~= re) + i)
}

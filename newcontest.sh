mkdir ./${1}

if [ "${2}" = "python" ]; then
  touch ./${1}/a.py
  touch ./${1}/b.py
  touch ./${1}/c.py
  touch ./${1}/d.py
  touch ./${1}/e.py
  touch ./${1}/f.py
  touch ./${1}/g.py

  cat ~/ac-lib/templates/template.py >>./${1}/a.py
  cat ~/ac-lib/templates/template.py >>./${1}/b.py
  cat ~/ac-lib/templates/template.py >>./${1}/c.py
  cat ~/ac-lib/templates/template.py >>./${1}/d.py
  cat ~/ac-lib/templates/template.py >>./${1}/e.py
  cat ~/ac-lib/templates/template.py >>./${1}/f.py
  cat ~/ac-lib/templates/template.py >>./${1}/g.py
fi

if [ "${2}" = "cpp" ]; then
  touch ./${1}/a.cpp
  touch ./${1}/b.cpp
  touch ./${1}/c.cpp
  touch ./${1}/d.cpp
  touch ./${1}/e.cpp
  touch ./${1}/f.cpp
  touch ./${1}/g.cpp

  cat ~/ac-lib/templates/template.cpp >>./${1}/a.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/b.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/c.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/d.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/e.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/f.cpp
  cat ~/ac-lib/templates/template.cpp >>./${1}/g.cpp

  mkdir ./${1}/output
fi

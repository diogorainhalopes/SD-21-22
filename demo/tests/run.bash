#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'

# 01-professor
cd ../../Professor || exit
mvn -q exec:java <../demo/tests/input/01-professor.in >../demo/tests/output/01-professor.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/01-professor.out) + 1))
if diff -w <(tail ../demo/tests/output/01-professor.out -n "$NL") <(tail ../demo/tests/expected/01-professor.out -n "$NL"); then
  echo -e "${GREEN}01-professor: Success!"
else
  echo -e "${RED}01-professor: Failed."
fi

# 02-student
cd ../Student || exit
mvn -q exec:java -Dexec.args="aluno1000 Cristina Ferreira" <../demo/tests/input/02-student.in >../demo/tests/output/02-student.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/02-student.out) + 1))
if diff -w <(tail ../demo/tests/output/02-student.out -n "$NL") <(tail ../demo/tests/expected/02-student.out -n "$NL"); then
  echo -e "${GREEN}02-student: Success!"
else
  echo -e "${RED}02-student: Failed."
fi

# 03-student
mvn -q exec:java -Dexec.args="aluno1001 Manuel Goucha" <../demo/tests/input/03-student.in >../demo/tests/output/03-student.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/03-student.out) + 1))
if diff -w <(tail ../demo/tests/output/03-student.out -n "$NL") <(tail ../demo/tests/expected/03-student.out -n "$NL"); then
  echo -e "${GREEN}03-student: Success!"
else
  echo -e "${RED}03-student: Failed."
fi

# 04-professor
cd ../Professor || exit
mvn -q exec:java <../demo/tests/input/04-professor.in >../demo/tests/output/04-professor.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/04-professor.out) + 1))
if diff -w <(tail ../demo/tests/output/04-professor.out -n "$NL") <(tail ../demo/tests/expected/04-professor.out -n "$NL"); then
  echo -e "${GREEN}04-professor: Success!"
else
  echo -e "${RED}04-professor: Failed."
fi

# 05-student
cd ../Student || exit
mvn -q exec:java -Dexec.args="aluno1001 Manuel Goucha" <../demo/tests/input/05-student.in >../demo/tests/output/05-student.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/05-student.out) + 1))
if diff -w <(tail ../demo/tests/output/05-student.out -n "$NL") <(tail ../demo/tests/expected/05-student.out -n "$NL"); then
  echo -e "${GREEN}05-student: Success!"
else
  echo -e "${RED}05-student: Failed."
fi

# 06-professor
cd ../Professor || exit
mvn -q exec:java <../demo/tests/input/06-professor.in >../demo/tests/output/06-professor.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/06-professor.out) + 1))
if diff -w <(tail ../demo/tests/output/06-professor.out -n "$NL") <(tail ../demo/tests/expected/06-professor.out -n "$NL"); then
  echo -e "${GREEN}06-professor: Success!"
else
  echo -e "${RED}06-professor: Failed."
fi

# 07-student
cd ../Student || exit
mvn -q exec:java -Dexec.args="aluno1000 Cristina Ferreira" <../demo/tests/input/07-student.in >../demo/tests/output/07-student.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/07-student.out) + 1))
if diff -w <(tail ../demo/tests/output/07-student.out -n "$NL") <(tail ../demo/tests/expected/07-student.out -n "$NL"); then
  echo -e "${GREEN}07-student: Success!"
else
  echo -e "${RED}07-student: Failed."
fi

# 08-admin
cd ../Admin || exit
mvn -q exec:java <../demo/tests/input/08-admin.in >../demo/tests/output/08-admin.out 2>/dev/null

NL=$(($(wc -l <../demo/tests/expected/08-admin.out) + 1))
if diff -w <(tail ../demo/tests/output/08-admin.out -n "$NL") <(tail ../demo/tests/expected/08-admin.out -n "$NL"); then
  echo -e "${GREEN}08-admin: Success!"
else
  echo -e "${RED}08-admin: Failed."
fi

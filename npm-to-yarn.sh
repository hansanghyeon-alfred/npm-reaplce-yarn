#!/bin/bash

# pbpaste를 사용하여 클립보드 내용을 읽어옴
clipboard_content=$(pbpaste)

# npm install일수있도 npm i일수있다. 해당 문자를 yarn add로 교체한다.
yarn_content=$(echo "$clipboard_content" | sed -E 's/.*npm (install|i)/yarn add/')

# 변경 전과 변경 후 텍스트 준비
before_text="$clipboard_content"
after_text="$yarn_content"

# JSON 형식으로 출력
echo '{"items": [{"title": "Yarn으로 변경했습니다", "subtitle": "Before: '"$before_text"' to After: '"$after_text"'", "arg": "'"$yarn_content"'"}]}'


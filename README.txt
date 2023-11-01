# 터미널을 열었을 때 미리 스크립트를 실행 시키도록 하는 방법.

'~/.bashrc' 내에 아래의 명령어를 작성한다.
```sh
# ~/.sh_custom 폴더 내에서 .sh 로 끝나는 파일을 실행시키도록 하는 스크립트
if [ -d ~/.sh_custom ]; then
    for custom_script in ~/.sh_custom/*.sh; do
        if [ -f "$custom_script" ]; then
            source "$custom_script"
        fi
    done
fi
```

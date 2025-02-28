
# git add . 은 모든 변경 사항을 staging area 이동
git add .

# git commit은 staging area의 변경 사항을 확정짓고 commitID 생성
git commit -m "메시지"

# 원격 repo에 main브랜치에 변경사항 (commitID)를 업로드
git push origin main


# 현재 working directory , stagin area의 상태 조히ㅗ
git status

# 특정파일만 add할 경우
git add 특정파일(경로포함)

# local repository에 커밋이력 생성
git commit -m "메시지 타이틀" -m "메시지내용"

# vi에디터 모드에서 작성 : 첫줄에는 제목, 두번째줄부터 내용
git commit


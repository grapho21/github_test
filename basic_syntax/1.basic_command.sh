
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

# add 와 커밋을 동시작업
git commit -am "add와 commit을 동시에 작업"

# local repository의 commit 이력 조회
git log

# git 로그를 간결하게 조회
git log --oneline

# git 로그를 그래프 형태로 조회
git log --graph

# main 브랜치 뿐만 아니라 전체 commit 이력 조회
git log --all

# 충돌시 내 소스를 강제로 적용방법(팀 작업시 사용하면 안됨)
git push origin main --force


# 특정 commit ID오의 전환 (소스코드를 과거의 특정 버전으로 되돌릴때)
git checkout 커밋 ID

# 다시 현재의 브랜치의 commit 되돌릴때
git checkout 현재의브랜치명(main)


# git 작업 취소
# commit 이후의 취소
git reset head~1
git reset head^
# staging area 로 까지만 취쇠
git resert --soft head~1

# push 이후의 취쇠 -> commit메시지 작성 vi 화면으로 이동 -> :wq (에디터모드 저장 명령)
git revert 기존의 커밋ID


# 작업중인 상황에서 임시 저장
git stash
# 저장한 최신의 작업 목록을 꺼내기
git stash pop
# 임시저장한 목록은 그대로 놔둔채 특정 index항목적용
git stash apply 인덱스번호
# 임시저장한 작업 내용 조회
git stash show -p 인덱스번호
# 임시저장한 작업목록조회
git stash list
# 저장목록 모두 삭제
git stash clear

# 버전명시
git tag v1.0
git tag v1.0 -m "1.주요사항a, 2.주요사항b"

# tag release 배포
# commit push와 상관없이 태그별도로 push
git push origin v1.0

# tag 목록조회
git tag
# Codex CLI 사용 안내

## 새 프로젝트로 시작
```bash
git clone https://github.com/Kwon812/ai-web-development-harness.git my-web-app
cd my-web-app
codex
```
이 저장소는 개발 프레임워크가 설치된 앱이 아니라 AI 개발 작업 규칙 템플릿이다. 요구사항 분석 및 기술 선정 승인을 거친 뒤 앱을 생성한다. 기존 Git 원격 저장소를 그대로 유지할지 확인하고, 새 프로젝트라면 별도 저장소로 연결한다.

## 기존 프로젝트에 적용
```bash
git clone https://github.com/Kwon812/ai-web-development-harness.git
bash ai-web-development-harness/scripts/install.sh /absolute/path/to/your-project
cd /absolute/path/to/your-project
codex
```
설치 스크립트는 AGENTS.md, .agents/skills, .harness 및 docs의 4개 템플릿을 복사한다. 충돌이 하나라도 있으면 **복사 전에 중단**하며 기존 파일을 덮어쓰지 않는다. 기존 프로젝트의 AGENTS.md 또는 docs가 이미 있으면 수동 병합한다.

## Codex에 처음 요청할 내용
```text
AGENTS.md와 .harness 규칙을 확인하고 docs/PROJECT-STATE.md를 검토해줘.
내가 제공하는 문제, 데이터, 요구사항을 분석해 담당자 확인 질문을 작성해줘.
담당자 답변이 오면 질문 ID에 연결해 요구사항과 구현 계획에 반영해줘.
기술 스택과 Phase 계획은 승인받고, 기능 단위로 구현·테스트·보고한 뒤 다음 작업 전에 내 승인을 기다려줘.
```

Codex는 AGENTS.md를 프로젝트 지침으로 읽을 수 있고 .agents/skills의 SKILL.md를 작업에 맞게 활용할 수 있다. 다만 Skill 자동 선택과 승인 대기는 모델의 지침 준수에 의존하므로 완전한 기술적 차단 장치는 아니다.

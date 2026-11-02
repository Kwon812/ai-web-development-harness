# AI Web Development Harness — Codex CLI

AI 활용평가에서 주어진 **문제·데이터·요구사항을 분석하고 웹 서비스를 구현**하기 위한 Codex Skills + Harness.

## 바로 시작
```bash
git clone https://github.com/Kwon812/ai-web-development-harness.git
cd ai-web-development-harness
codex
```

문제와 데이터, 요구사항을 제공하면 Codex가 즉시 분석을 시작하도록 `AGENTS.md`에 규칙을 정의했다. 별도 docs 초기화는 필요 없다.

## 기존 프로젝트에 적용
```bash
git clone https://github.com/Kwon812/ai-web-development-harness.git
bash ai-web-development-harness/scripts/install.sh /path/to/project
```
기존 파일이 충돌하면 덮어쓰지 않고 중단한다.

## 구조
- `AGENTS.md`: Codex 실행 지침
- `.agents/skills/`: 분석, 담당자 질문·답변 반영, 설계, 구현, 테스트, 보고 Skill 10개
- `.harness/`: 작업 흐름, 품질, 보안, 승인 규칙
- `scripts/install.sh`: 기존 프로젝트에 적용하는 선택적 스크립트

## 핵심 흐름
문제·데이터·요구사항 분석 → 담당자 확인 질문 → 답변 반영 → 기술·계획 승인 → 기능별 구현·테스트·보고·승인 → 다음 기능.

구현 보고서에는 구현 내용, 구현 방식과 근거, 변경 파일, 테스트 결과, 특이사항, 사용자 확인 사항, 다음 작업, 승인 상태를 포함한다.

Markdown 지침만으로 승인 절차를 기술적으로 완벽하게 강제할 수는 없다.

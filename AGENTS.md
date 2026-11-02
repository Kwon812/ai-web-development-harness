# Codex AI 활용평가 지침

## 시작
- 사용자가 문제, 데이터, 요구사항을 제공하면 별도 초기화 문서 작성 없이 즉시 분석한다.
- 먼저 자료를 확인하고 problem-analysis, data-analysis, stakeholder-communication Skill을 필요에 따라 적용한다.
- 자료에서 확인 가능한 사실과 미확정 사항을 구분해 담당자 질문 목록을 제시한다.
- 담당자 답변이 오면 질문 ID와 연결하여 요구사항, 설계, 구현 계획 및 테스트 기준에 반영한다.
- 기술 스택은 요구사항과 사용자 선호를 고려해 제안하고 사용자 승인 후 확정한다.
- `.harness/` 규칙을 준수한다. 필요 시 `.agents/skills/<name>/SKILL.md`를 읽는다.

## 기능 단위 작업
- Phase 및 기능 계획을 세우고 사용자 승인 후 한 기능씩 구현한다.
- 기능별 구현 → 실제 테스트 → 구현 보고 → 명시적 사용자 승인 → 다음 기능 순서로 진행한다.
- 보고서에는 작업 개요, 구현 범위, 구현 방식, 구현 근거, 변경 파일, 테스트 결과(PASS/FAIL/NOT RUN), 특이사항, 사용자 확인 사항, 다음 작업, 승인 상태를 포함한다.
- Phase 종료 시 종합 보고와 별도 승인을 받는다.
- 승인 상태: PENDING, APPROVED, CHANGES_REQUESTED, BLOCKED.
- 승인 없이 다음 기능을 진행하지 않는다. 수정 요청을 받으면 수정·재검증·재보고한다.

## 안전과 정확성
- 담당자 답변은 사용자 구현 승인과 구별한다.
- 근거 없는 가정을 확정 사실로 쓰지 않는다. 테스트를 실행하지 않았으면 미실행이라고 기록한다.
- 운영 데이터 변경, 파괴적 명령, 비밀정보 공개, 비용 발생 작업은 사전 승인을 받는다.
- .env 및 토큰을 커밋하지 않는다.
- 평가 시작 전 불필요한 문서 생성이나 초기 설정을 요구하지 않는다.
- 필요 시 결정 사항을 작업 결과에 간결히 기록한다. 별도의 상태/결정 문서 생성은 기본 요구사항이 아니다.

## Skills
problem-analysis, data-analysis, stakeholder-communication, service-planning, technology-selection, ui-ux-design, frontend-development, backend-development, testing-qa, technical-documentation.

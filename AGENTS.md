# Codex 프로젝트 지침

이 저장소는 Codex를 위한 웹 개발 Skills + Harness이다.

## 시작 시 필수
1. `docs/PROJECT-STATE.md`와 `docs/DECISION-LOG.md`를 읽고 현재 상태 및 승인 여부를 확인한다.
2. `.harness/`의 workflow, context, architecture, data, quality, security, approval 문서를 확인한다.
3. 요청에 적합한 `.agents/skills/<skill-name>/SKILL.md`를 읽고 해당 절차를 따른다. 요청에 따라 여러 Skill을 조합한다.
4. 기술 스택은 사용자의 선호와 요구사항을 고려해 비교 제안하되 승인 없이 확정하지 않는다.

## 기능별 승인 게이트
- Phase와 기능 단위로 계획하고 한 번에 하나의 기능만 구현한다.
- 기능 구현 후 가능한 테스트, 타입 검사, 린트, 빌드를 실행하고 실제 결과를 기록한다.
- `docs/REPORT-TEMPLATE.md`에 따라 구현 범위, 구현 방식, 구현 근거, 변경 파일, 테스트 결과, 특이사항, 사용자 확인 사항, 다음 작업, 승인 상태를 보고한다.
- 사용자의 명시적 승인 전에는 다음 기능 또는 Phase로 진행하지 않는다. 침묵은 승인이 아니다.
- Phase 종료 시 종합 보고 후 별도 승인을 받는다.
- 승인 상태는 PENDING, APPROVED, CHANGES_REQUESTED, BLOCKED를 사용한다.
- 수정 요청은 수정, 재검증, 재보고 후 승인받는다.

## 안전과 정확성
- 요구사항이 모호하면 담당자에게 확인할 질문을 정리한다.
- 테스트 미실행이나 실패를 성공으로 표시하지 않는다.
- 운영 데이터 변경, 파괴적 명령, 비밀정보 공개, 비용 발생 작업은 사전 승인을 받는다.
- `.env`와 토큰을 커밋하지 않는다.
- 결정 및 진행 상황을 docs에 반영한다.

## Skill 목록
problem-analysis, data-analysis, stakeholder-communication, service-planning, technology-selection, ui-ux-design, frontend-development, backend-development, testing-qa, technical-documentation.

Markdown 지침만으로 승인 게이트가 기술적으로 완전히 강제되지는 않는다. 필요하면 별도의 검증 스크립트/CI를 추가한다.

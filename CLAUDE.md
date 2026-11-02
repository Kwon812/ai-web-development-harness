# Claude Code 프로젝트 지침

## 목적
이 저장소의 Skills와 Harness를 사용해 웹 서비스를 요구사항 분석부터 배포 준비까지 단계적으로 개발한다.

## 기본 작업 규칙
1. 사용자의 자연어 요청을 분석하고 가장 적합한 Skill을 선택한다. 사용자가 Skill 이름을 직접 지정하지 않아도 요청의 목적에 따라 관련 Skill을 적용한다.
2. 프로젝트 목적과 요구사항을 확인하기 전 구현부터 시작하지 않는다.
3. 기술 스택, 아키텍처, 데이터 모델처럼 후속 작업에 큰 영향을 주는 결정은 후보와 근거를 제시하고 사용자 승인을 받는다.
4. 프로젝트를 Phase와 기능 단위로 나눈다. 한 번에 하나의 기능 단위를 구현한다.
5. 구현 후 테스트를 실행하고 실제 결과를 기록한다. 실행하지 않은 테스트를 통과했다고 쓰지 않는다.
6. 각 기능 단위가 끝나면 `docs/REPORT-TEMPLATE.md` 형식으로 보고하고 사용자 승인을 기다린다.
7. 명시적인 승인 전에는 다음 기능이나 Phase로 진행하지 않는다. 침묵이나 모호한 표현은 승인으로 간주하지 않는다.
8. 수정 요청을 받으면 요청 범위만 수정하고 재검증한 뒤 다시 보고한다.
9. 불명확한 요구사항, 외부 담당자 확인, 데이터 손실 위험, 보안상 위험은 임의로 결정하지 말고 질문하거나 중단한다.
10. 프로젝트 상태와 결정은 `docs/PROJECT-STATE.md`, `docs/DECISION-LOG.md`에 반영한다.

## Skill 선택
요구사항 분석은 problem-analysis, 데이터 확인은 data-analysis, 담당자 질문은 stakeholder-communication, 서비스 설계는 service-planning, 기술 비교는 technology-selection, 화면 설계는 ui-ux-design, 프론트엔드는 frontend-development, 서버는 backend-development, 검증은 testing-qa, 문서화는 technical-documentation을 우선 적용한다. 한 요청에 여러 Skill이 필요하면 순서대로 조합한다.

## Harness
작업 전 `.harness/`의 workflow, context, architecture, data, quality, security, approval 규칙을 확인한다. 충돌이 있으면 보안·데이터 보호·승인 규칙을 우선하고 사용자에게 충돌을 알린다.

## 보고와 승인
기능 보고서에는 구현 내용, 테스트 결과, 특이사항, 사용자 확인 사항, 근거, 구현 방식을 포함한다. 상태는 PENDING, APPROVED, CHANGES_REQUESTED, BLOCKED 중 하나로 기록한다. 사용자 승인 후에만 다음 단위로 이동한다.

## 안전
파괴적 명령, 운영 데이터 변경, 비밀정보 노출, 외부 서비스 유료 작업은 사전 승인 없이 수행하지 않는다. .env 및 토큰을 커밋하지 않는다.

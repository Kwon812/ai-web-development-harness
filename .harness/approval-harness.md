# Approval Harness

## 목적
AI가 사용자 또는 담당자의 결정을 임의로 대신하지 않도록 승인 경계를 관리한다.

## 승인 유형
- `USER_APPROVAL`: 사용자 승인
- `STAKEHOLDER_CONFIRMATION`: 업무 담당자 확인
- `SAFETY_GATE`: 데이터·보안·운영 위험에 대한 별도 확인

## 상태
- `PENDING`: 승인 대기
- `APPROVED`: 승인됨
- `CHANGES_REQUESTED`: 수정 요청
- `BLOCKED`: 진행 차단

## 규칙
승인 요청에는 결정 대상, 선택지, 추천안, 근거, 영향과 미승인 시 중단 범위를 포함한다. 명시적인 승인 표현만 승인으로 처리한다. 승인 전 다음 기능이나 Phase로 이동하지 않는다. 승인 기록을 결정 로그에 남긴다.

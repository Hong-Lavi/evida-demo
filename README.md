# EVIDA 데모 안내

제4회 인공지능 신약개발 경진대회 본선 · 팀 NDAgent.

EVIDA는 연구자의 질환·목표에서 출발해 근거를 바탕으로 치료 전략·후보·다음 실험을 제안하고, 새 결과에 맞춰 연구 방향을 갱신하는 신약개발 AI 에이전트 플랫폼입니다.

- **실제 데모:** [evida.ndagentevida.com](https://evida.ndagentevida.com)
- **검수한 제출 코드:** [Hong-Lavi/evida-submission-2026](https://github.com/Hong-Lavi/evida-submission-2026)
- **안내 페이지:** [Hong-Lavi.github.io/evida-demo](https://Hong-Lavi.github.io/evida-demo/)

이 저장소의 `index.html`은 저장 연구 사례, 실제 버튼에 맞춘 실행 방법, 예시 질문과 성능 평가 기준을 제공합니다. `demo.json`은 실제 데모 주소, `evaluation.json`은 동일 모델·도구로 수행한 16회 내부 비교의 집계입니다.

NFCorpus 323개 질문 · MoleculeACE 30과제의 검색·활성 예측 부품 평가도 안내합니다. [고정 조건·원 출력·독립 재검산 코드](https://github.com/Hong-Lavi/evida-submission-2026/tree/main/evaluation/components-20261002)는 제품 코드 저장소에 있으며, 전체 연구 흐름 16회 비교와 별도의 평가입니다.

공개판의 새 연구는 대회 API GPT-6 Sol / medium으로 실행됩니다. 대회 API가 토큰 사용량 한도(HTTP 403)를 반환하면 방문자가 제출자 구독 모델(Claude Opus 5 / medium, GPT-6 Sol / medium)을 직접 고릅니다. 평가 실행은 GPT-6 Sol / medium으로 고정했습니다. 각 결과의 모델과 적용 범위를 구분해 안내합니다.

완료된 사례 조회에는 모델 호출이 없습니다. 새 질문·설명·후속 요청은 실제 모델을 실행하며 공개판의 호출·동시 실행 한도를 공유합니다.

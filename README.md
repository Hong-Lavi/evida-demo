# EVIDA 데모 안내

제4회 인공지능 신약개발 경진대회 본선 · 팀 NDAgent.

EVIDA는 연구자의 **질환·연구 목표에서 다음 실험의 선택까지** 이어가는 신약개발 AI 에이전트 플랫폼입니다. 근거를 조사하고 실제 계산을 실행해 기전·후보를 검토하며, 새 관측이 들어오면 판단과 다음 행동을 갱신합니다.

- **실제 연구 화면:** [evida.ndagentevida.com](https://evida.ndagentevida.com)
- **시연 안내:** [Hong-Lavi.github.io/evida-demo](https://Hong-Lavi.github.io/evida-demo/)
- **제품 코드·실행 안내:** [Hong-Lavi/evida-submission-2026](https://github.com/Hong-Lavi/evida-submission-2026)
- **English:** [Demo guide in English](README.en.md)

## 저장된 연구에서 둘러보기

현재 판단에서 시작해 기전·후보·계산 조건·다음 실험·원문을 차례로 엽니다.

- [뇌전증](https://evida.ndagentevida.com/?workspace=ws_d575a20bbf9047d2): 기전·저분자 후보와 구별 실험.
- [COPD](https://evida.ndagentevida.com/?workspace=ws_ff8a3fd859984073): 기존 치료의 한계와 관측 후 재판단.
- [ATTR-CM](https://evida.ndagentevida.com/?workspace=ws_b8cdca2ed22641ab): 단백질 안정화와 후보 동일성·계산 조건.
- [파킨슨병](https://evida.ndagentevida.com/?workspace=ws_62adbaf10b8249d3): 질환 기전과 후보·모델 실험의 연결.
- [비소세포폐암](https://evida.ndagentevida.com/?workspace=ws_4c375887117542a8): 내성 기전과 대안·반대 근거의 비교.
- [MASH](https://evida.ndagentevida.com/?workspace=ws_47f9067e7c434890): 대사 기전과 기존 치료·다음 비교.

다음 저장 연구도 함께 살펴볼 수 있습니다.

- [특발성 폐섬유증](https://evida.ndagentevida.com/?workspace=ws_3c8fe9df9cd14339): 경쟁 기전과 후보, 후속 실험의 연결.
- [PDE4B](https://evida.ndagentevida.com/?workspace=ws_1ff05aa2d7c24e0e): 출발 화합물과 생성 구조, 기능 비교의 조건.
- [ALS](https://evida.ndagentevida.com/?workspace=ws_4475545a286541b2): 공개 실험 결과와 검토 피드백에 따른 판단의 변화.

연구 목록에서 다른 저장 기록도 선택할 수 있습니다. 저장된 결과와 원자료를 읽는 동안에는 모델을 호출하지 않습니다.

## 목표에서 결과 재판단까지

1. **질환과 목표를 적습니다.** 무엇을 바꾸고 싶은지부터 시작합니다. EVIDA가 조사할 질문과 비교할 설명을 구성합니다.
2. **근거와 계산을 함께 봅니다.** 문헌의 원문 위치와 계산의 입력·값·단위·조건을 확인합니다.
3. **조건부 후보와 다음 실험을 검토합니다.** 후보를 선택한 이유, 구별할 설명, 비교 대상과 측정값, 결과별로 바뀔 판단을 확인합니다.
4. **관측을 더하고 다시 판단합니다.** 실제 결과·출처·측정 조건을 남기고, 유지할 판단과 수정할 판단, 이어갈 행동을 비교합니다.

화면의 버튼과 확인 순서는 [시연 안내](docs/DEMO_GUIDE.md)에 정리했습니다. 저분자와 siRNA 후보를 중심으로 계산과 다음 확인을 연결합니다.

## 계산 도구와 추론 코어

**43개 계산·분석 함수**가 제품의 도구 실행 경로에 연결돼 있습니다. 분자 구조·물성, 결합 부위와 포즈, 분자 움직임, RNA 후보, 경로와 관측 선택을 다룹니다. 각 결과에서 측정 대상과 원입력·원결과·적용 조건을 함께 확인합니다.

추론 코어는 **500편의 문헌 검토 기록과 48개 조건부 추론 관점**을 연결합니다. 관찰에서 설명을 만들고, 다음 결정을 바꿀 정보를 고르고, 결과에 따라 주장을 수정하는 데 같은 코어를 사용합니다. 원문 위치와 적용 조건, 사례별 검토·제외 이력을 함께 관리합니다.

## 모델 이용

공개 서비스의 새 요청은 **대회 API의 GPT-6 Sol / medium**으로 실행됩니다. 토큰 사용량 한도에 따른 **HTTP 403** 안내가 나오면 방문자가 안내창에서 **제출자 개인 구독 경로인 Claude Opus 5 / medium 또는 GPT-6 Sol / medium**을 직접 선택하고 확인한 뒤 이어갈 수 있습니다.

새 질문·설명 요청·후속 검토는 실제 모델을 실행합니다. 연결 상태와 사용 가능 범위, 연구별 진행 상태는 화면에서 확인합니다. 입력과 결과는 공개 데모 환경에 저장되므로 공개 가능한 질문과 자료로 이용해 주세요.

## 평가와 원자료

[시연 안내 페이지](https://Hong-Lavi.github.io/evida-demo/)에서 평가 조건과 연결된 원자료를 볼 수 있습니다. [평가 집계](evaluation.json)는 해당 기록의 사례·모델·절차·분모와 함께 읽습니다. 문헌 검색·활성 예측의 부품 평가는 [조건·원 출력·재계산 코드](https://github.com/Hong-Lavi/evida-submission-2026/tree/main/evaluation/components-20261002)에서 확인할 수 있습니다.

이 저장소의 `index.html`은 시연 안내, `demo.json`은 실제 데모 주소, `evaluation.json`은 고정된 비교 기록을 담습니다.


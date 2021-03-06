#                        AppleMango🥭

##### 프로젝트 명

<h3> -Protect Refrigerator
</h3>


##### 프로젝트 정의

 **딥러닝을 통한 냉장고 내부의 식품 인식 및 레시피 추천**

***



##### 프로젝트 배경

일상생활 속 바쁘게 살아가고 있는 우리들, 사실 냉장고 속 무엇이 있는지 잘 모르는 경우가 많다. 집에 오랜 시간 머무르는 사람이 아닌 일과 육아를 함께 병행하는 사람들, 자취생, 배달음식을 자주 먹는 사람들이 우리 주변에 많이 있기에 여기에서 아이디어를 도출하였다. 장을 보려면 냉장고 안에 무엇이 있고 그 식재료의 유통기한이 언제까지인지 알아야한다. 냉장고 안에 무엇이 있는지는 알 수 있어도 냉장고 문을 열고 직접보지 않는 한 유통기한까지 알기는 어렵다.

이런 상황을 방지하고자 냉장고 내부에 Rasberry Pi와 카메라를 설치하여 사진을 찍어 서버에 저장한다. 이 사진을 딥 러닝과 pytorch를 이용하여 내부에 어떤 식품이 있는지 분석하고 서버 DB에 저장된 식품의 유통기한 정보를 참고하여 사용자의 DB에 저장한다. 사용자는 PC나 스마트폰을 이용해 웹페이지에 접속하여 서버에서 냉장고 내부의 식품 정보와 사진을 보여준다. 그리고 식품의 유통기한이 임박하거나 지난 경우 메일로 알려준다.

***



##### 프로젝트 목표

- 식품 인식 밑 분류

  * 냉장고 내부에 Rasberry Pi와 카메라를 설치하여 사진을 찍고 딥 러닝을 이용하여 자동으로 식품을 인식하고 분류하는 기능 구현

- 유통기한 알림

  * DB에 저장된 식품의 유통기한이 임박하거나 지난 경우 메일을 보내주는 기능 구현

- 레시피 추천

  * 최근 냉장고에서 사라진 식품의 영양 정보, 권장 영양 섭취량, 유통기한이 적게 남은 식품 정보를 토대로 딥 러닝을 통해 레시피를 추천하는 기능 구현

  

  ***

  

  

##### 기능 구현

###### 1.프로젝트 설명

Rasberry Pi 카메라로 냉장고 내부의 사진을 찍어 Pytorch와 Yolo v3를 이용하여 딥 러닝을 통해 식품을 자동으로 인식하여 분류하고, 유통기한에 따라 사용자에게 메일로 알려준다. 냉장고 내의 식품과, 사라진 식품의 영양 정보를 사용자의 권장 영양 섭취량과 비교하여 딥 러닝을 통해 레시피를 추천하도록 한다. 이 정보들을 PC나 스마트폰으로 확인할 수 있도록 JAVA와 Spring을 활용하여 웹으로 개발한다. 또한 웹에서 각각의 레시피에 5점 만점 점수를 메겨 자신의 선호도에 따라 레시피 추천이 변동한다. 

###### 2.  프로젝트 구조

![proposal](https://user-images.githubusercontent.com/55024780/80178296-d8188e80-8638-11ea-832a-68bbd29a6634.png)

***

##### 기대효과

유통기한이 지나서 버려지는 식품이 생기는 비율을 줄이고, 냉장고 내부를 어디서나 확인할 수 있어 그에 따라 효율적으로 식품을 구매할 수 있다. 사용자의 권장 영양 섭취량에 근접한 식사를 할 수 있도록 레시피를 제공한다.



***

##### 관련기술

**DEEP LEARNING** : 머신 러닝의 한 분야로써 러 비선형 변환기법의 조합을 통해 높은 수준의 추상화(abstractions, 다량의 데이터나 복잡한 자료들 속에서 핵심적인 내용 또는 기능을 요약하는 작업)를 시도하는 기계학습 (machine learning) 알고리즘의 집합으로 정의되며, 큰 틀에서 사람의 사고방식을 컴퓨터에게 가르치는 기계학습의 한 분야이다.



##### 개발도구

| 구분 | 설명 |
| :--: | :--: |
|   **RasberryPi3**   | 영국의 라즈베리 파이 재단이 학교에서 기초 컴퓨터 과학 교육을 증진시키기 위해 만든 싱글 보드 컴퓨터이다. 이번에 새로 출시한 모델은 1.2GHz Quad core, Cortex A53, 64 bit CPU와 자체적으로 802.11n WIFI, Bluetooth 제공한다. |
| **Mysql** | MySQL은SQL(Structured Query  Language)을 사용하는 개방 소스의 관계형 데이터베이스 관리 시스템이다. MySQL은  자바, C, C++, PHP, Python 등을 위한 API를  제공하고, Apache서버, PHP와 상호연동이 잘되고  오픈 소스이기 때문에 우리의 프로젝트에 사용하기 적합하다 생각하여 MySQL을 사용하였다. |
| **Eclipse** | 다양한 플랫폼에서 쓸 수 있으며, 자바를 비롯한 다양한 언어를 지원하는 프로그래밍  통합 개발 환경을 목적으로 시작하였으나, 현재는 OSGi를  도입하여, 범용 응용 소프트웨어 플랫폼으로 진화하였다.  Apache 서버와 연동이 되고 Spring 프레임워크를 통해 웹 사이트를 개발하는데  적합하여 사용하였다. |





**참고 자료**

* yolo v3 : https://pjreddie.com/darknet/yolo/
* 라벨이미지 : https://github.com/tzutalin/labelImg
* 만개의 레시피 : https://www.10000recipe.com/index.html
* USDA : https://www.usda.gov/
* 식품의약품안전처, 대한민국 식품영양성분 통합 데이터베이스 : http://www.foodsafetykorea.go.kr/fcdb/


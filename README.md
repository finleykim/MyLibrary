![Header](http://devfinley.dothome.co.kr/images/mylibrary_readme.jpg)   
## 🛠Development Environment
![Generic badge](https://img.shields.io/badge/ios-14.1-blue.svg)
![Generic badge](https://img.shields.io/badge/xcode-13.3.1-green.svg)   
   
## 🤹‍♀️Skills & TechStack   
- RxSwift   
- RxCocoa   
- SnapKit   
- URLSession   
- RestAPI   
- KingFisher   
- UnitTest   
- MVVM   
   
## 🗂Folder Structure   
<pre><code>
├── MyLibrary
│   ├── Presentation
│   │   └── MainView
│   │       ├── MainViewController.swift : 메인페이지 UI구성 
│   │       ├── MainViewModel.swift : 메인페이지의 이벤트관리
│   │       ├── MainModel.swift : 메인페이지 통신관리
│   │       └── Subcomponents
│   │           ├── BookList
│   │           │   ├── BookListCell.swift : cell에 표시될 컴포넌트, 데이터에 대한 설정 
│   │           │   ├── BookListView.swift : 검색결과를 표시할 테이블뷰 UI관련 설정   
│   │           │   ├── BookListViewModel.swift : 테이블뷰에 필요한 데이터 송수신   
│   │           │   └── FilterView
│   │           │       ├── FilterView.swift : 검색결과 정렬을 위한 버튼UI설정   
│   │           │       └── FilterViewModel.swift : 버튼이벤트 송신   
│   │           └── SearchBar
│   │               ├── SearchBar.swift : 검색창 UI구성
│   │               └── SearchBarViewModel.swift : 검색창에대한 이벤트관리 (검색어 송수신) 
│   ├── Network
│   │   ├── API.swift : RestAPI   
│   │   └── Network.swift : RestAPI를 통한 통신 데이터 요청   
│   ├── Entities
│   │   ├── AlertActionConvertible.swift : Alert프로토콜설정   
│   │   ├── Book.swift : 통신을 통해 전달받을 데이터 구조체 정의, 데이터에 변환(DateFormatter) 
│   │   ├── BookListCellData.swift : 검색결과 셀에 표시될 데이터 구조체 정의   
│   │   └── SearchNetworkError.swift : 에러케이스   
└── MyLibraryTests : 테스트
    ├── Dummy.swift
    ├── MainModelTest.swift
    ├── MyLibraryTests-Bridging-Header.h
    ├── SearchNetworkStub.swift
    └── networkDummy.json
 
</code></pre>




   



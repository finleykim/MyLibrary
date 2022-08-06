![Header](http://devfinley.dothome.co.kr/images/mylibrary_readme.jpg)   
## 기능   
도서검색, 검색결과정렬(제목오름차순, 최신순)   
## 사용기술   
RxSwift, RxCocoa, SnapKit, URLSession, RestAPI, KingFisher, UnitTest, MVVM
## 구성   
- MainView(Initial ViewController)   
MainViewController: 메인페이지 UI구성   
MainViewModel: 메인페이지의 이벤트관리  
MainModel: 메인페이지 통신관리   
   
- SearchBar   
SearchBar: 검색창 UI구성
SearchBarViewModel: 검색창에대한 이벤트관리 (검색어 송수신)   
   
- ListView   
BookListView: 검색결과를 표시할 테이블뷰 UI관련 설정   
BookListViewModel: 테이블뷰에 필요한 데이터 송수신   
BookListCell: cell에 표시될 컴포넌트, 데이터에 대한 설정   
FilterView: 검색결과 정렬을 위한 버튼UI설정   
FilterViewModel: 버튼이벤트 송신   
   
- Entities   
AlertActionConvertible: Alert프로토콜설정   
BookListCellData: 검색결과 셀에 표시될 데이터 구조체 정의   
Book: 통신을 통해 전달받을 데이터 구조체 정의, 데이터에 변환(DateFormatter)   
SearchNetworkError: 에러케이스   
   
- Network   
API: RestAPI   
Network: RestAPI를 통한 통신 데이터 요청   
   
- MyLibraryTest   
Dummy   
SearchNetworStub   
MainModelTest   
networkDummy   

   



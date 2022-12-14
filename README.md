![Header](http://devfinley.dothome.co.kr/images/mylibrary_readme.jpg)   
## ๐ Development Environment
![Generic badge](https://img.shields.io/badge/ios-14.1-blue.svg)
![Generic badge](https://img.shields.io/badge/xcode-13.3.1-green.svg)   
   
## ๐คนโโ๏ธSkills & TechStack   
- RxSwift   
- RxCocoa   
- SnapKit   
- URLSession   
- RestAPI   
- KingFisher   
- UnitTest   
- MVVM   
   
## ๐Folder Structure   
<pre><code>
โโโ MyLibrary
โย ย  โโโ Presentation
โย ย  โย ย  โโโ MainView
โย ย  โย ย      โโโ MainViewController.swift : ๋ฉ์ธํ์ด์ง UI๊ตฌ์ฑ 
โย ย  โย ย      โโโ MainViewModel.swift : ๋ฉ์ธํ์ด์ง์ ์ด๋ฒคํธ๊ด๋ฆฌ
โย ย  โย ย      โโโ MainModel.swift : ๋ฉ์ธํ์ด์ง ํต์ ๊ด๋ฆฌ
โย ย  โย ย      โโโ Subcomponents
โย ย  โย ย          โโโ BookList
โย ย  โย ย          โย ย  โโโ BookListCell.swift : cell์ ํ์๋  ์ปดํฌ๋ํธ, ๋ฐ์ดํฐ์ ๋ํ ์ค์  
โย ย  โย ย          โย ย  โโโ BookListView.swift : ๊ฒ์๊ฒฐ๊ณผ๋ฅผ ํ์ํ  ํ์ด๋ธ๋ทฐ UI๊ด๋ จ ์ค์    
โย ย  โย ย          โย ย  โโโ BookListViewModel.swift : ํ์ด๋ธ๋ทฐ์ ํ์ํ ๋ฐ์ดํฐ ์ก์์    
โย ย  โย ย          โย ย  โโโ FilterView
โย ย  โย ย          โย ย      โโโ FilterView.swift : ๊ฒ์๊ฒฐ๊ณผ ์ ๋ ฌ์ ์ํ ๋ฒํผUI์ค์    
โย ย  โย ย          โย ย      โโโ FilterViewModel.swift : ๋ฒํผ์ด๋ฒคํธ ์ก์    
โย ย  โย ย          โโโ SearchBar
โย ย  โย ย              โโโ SearchBar.swift : ๊ฒ์์ฐฝ UI๊ตฌ์ฑ
โย ย  โย ย              โโโ SearchBarViewModel.swift : ๊ฒ์์ฐฝ์๋ํ ์ด๋ฒคํธ๊ด๋ฆฌ (๊ฒ์์ด ์ก์์ ) 
โย ย  โโโ Network
โย ย  โย ย  โโโ API.swift : RestAPI   
โย ย  โย ย  โโโ Network.swift : RestAPI๋ฅผ ํตํ ํต์  ๋ฐ์ดํฐ ์์ฒญ   
โย ย  โโโ Entities
โย ย  โย ย  โโโ AlertActionConvertible.swift : Alertํ๋กํ ์ฝ์ค์    
โย ย  โย ย  โโโ Book.swift : ํต์ ์ ํตํด ์ ๋ฌ๋ฐ์ ๋ฐ์ดํฐ ๊ตฌ์กฐ์ฒด ์ ์, ๋ฐ์ดํฐ์ ๋ณํ(DateFormatter) 
โย ย  โย ย  โโโ BookListCellData.swift : ๊ฒ์๊ฒฐ๊ณผ ์์ ํ์๋  ๋ฐ์ดํฐ ๊ตฌ์กฐ์ฒด ์ ์   
โย ย  โย ย  โโโ SearchNetworkError.swift : ์๋ฌ์ผ์ด์ค   
โโโ MyLibraryTests : ํ์คํธ
    โโโ Dummy.swift
 ย ย  โโโ MainModelTest.swift
 ย ย  โโโ MyLibraryTests-Bridging-Header.h
 ย ย  โโโ SearchNetworkStub.swift
  ย  โโโ networkDummy.json
 
</code></pre>




   



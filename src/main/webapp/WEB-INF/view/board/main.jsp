<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>
<!-- Main Container -->
<div class="demo">
    <h1> 관리자모드 메인화면 </h1>
</div>

<div class="main-container">
    <!-- 좌측 메뉴 -->
    <div class="menu-container">
        <div class="menu-item">
            <img src="images/1.png" alt="..." style="width: 100px; height: 100px;">
            <span>교육과정분류</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>과정기본정보</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>과정개설</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>수강신청관리</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>강의평가관리</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>학습관리</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>수료증 출력</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>회원관리</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>통계관리</span>
        </div>
        <div class="menu-item">
            <img src="your-icon.png" alt="아이콘">
            <span>게시판 및 팝업관리</span>
        </div>
    </div>

    <!-- 우측 컨텐츠 -->
    <div class="container">
        <div class="box">
            <h2>2학기[학점]</h2>
            <table class="info-table">
                <tr>
                    <td>수강신청</td>
                    <td>신청 <span>11건</span></td>
                    <td>납부 <span>394건</span></td>
                </tr>
                <tr>
                    <td>원서접수</td>
                    <td>접수 <span>15건</span></td>
                    <td>합격 <span>0건</span></td>
                </tr>
                <tr>
                    <td>환불신청</td>
                    <td>신청 <span>0건</span></td>
                    <td>승인 <span>32건</span></td>
                </tr>
                <tr>
                    <td>개설현황</td>
                    <td>개설 <span>30건</span></td>
                    <td>폐강 <span>9건</span></td>
                </tr>
            </table>
        </div>

        <div class="box">
            <h2>비학위2학기</h2>
            <table class="info-table">
                <tr>
                    <td>수강신청</td>
                    <td>신청 <span>19건</span></td>
                    <td>납부 <span>135건</span></td>
                </tr>
                <tr>
                    <td>원서접수</td>
                    <td>접수 <span>0건</span></td>
                    <td>합격 <span>0건</span></td>
                </tr>
                <tr>
                    <td>환불신청</td>
                    <td>신청 <span>0건</span></td>
                    <td>승인 <span>13건</span></td>
                </tr>
                <tr>
                    <td>개설현황</td>
                    <td>개설 <span>13건</span></td>
                    <td>폐강 <span>0건</span></td>
                </tr>
            </table>
        </div>

        <div class="box">
            <h2>바로가기</h2>
            <div class="quick-links">
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>증명서 출력</span>
                </div>
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>졸업사정 관리</span>
                </div>
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>국문원자료 다운로드</span>
                </div>
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>파일관리</span>
                </div>
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>강의실 사용현황</span>
                </div>
                <div class="quick-link">
                    <img src=".." alt="..." style="width: 40px; height: 40px;">
                    <span>기본코드 관리</span>
                </div>
            </div>
        </div>

        <div class="box-v2">
            <h2>09월 증명서 신청현황</h2>
            <div class="status-box">
                <div class="status-item">
                    <div class="circle">0건</div>
                    <p>신청</p>
                </div>
                <div class="status-item">
                    <div class="circle">18건</div>
                    <p>승인</p>
                </div>
                <div class="status-item">
                    <div class="circle gray">0건</div>
                    <p>불가</p>
                </div>
            </div>
        </div>

        <div class="box qna">
            <h2>Q&A 현황</h2>
            <ul>
                <li><a href="#">안녕하세요.</a></li>
                <li><a href="#">시니어 인지케어지도사 신청문의</a></li>
                <li><a href="#">인지케어지도사 신청문의</a></li>
            </ul>
        </div>

        <div class="box news">
            <h2>교육원 소식</h2>
            <ul>
                <li><a href="#">[공지] 보육교사 양성과정 및 보수교육 증명서 발급 안내</a></li>
                <li><a href="#">[공지] 2024년도 학점은행제 학습자 등록 및 각종 신청 안내</a></li>
                <li><a href="#">[공지] 학점은행제 장학금 안내</a></li>
            </ul>
        </div>

        <div class="box">
            <h2>09월 접속현황</h2>
            <div class="stats">
                <div class="stat">
                    <h3>0건</h3>
                    <p>접속자수</p>
                </div>
                <div class="stat">
                    <h3>39건</h3>
                    <p>회원가입</p>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>

</body>
</html>

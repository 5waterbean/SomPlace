<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>regular create</title>
	<style>
        * {
            box-sizing: border-box;
        }

        html {
            height: 100%;
        }

        body {
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        .top {
            background-color: rgb(254, 251, 191);
            height: 50px;
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            font-weight: bold;
            z-index: 10;
        }

        .top>div:hover {
            color: gray;
            cursor: pointer;
        }

        .left {
            width: 15%;
            position: fixed;
            top: 50px;
            left: 0;
            padding: 10px;
        }

        .profile {
            width: 90%;
            margin: 0 auto;
            padding: 10px;
            border: 1px solid black;
            border-radius: 20px;
            text-align: center;
        }

        .profile .face {
            width: 90%;
            height: 150px;
        }

        .like {
            width: 100%;
            display: flex;
            justify-content: space-evenly;
        }

        .like img {
            height: 30px;
            width: 30px;
        }

        .like>div {
            display: flex;
            justify-content: space-around;
            align-items: center;
            font-size: large;
        }

        .profile_btn {
            width: 100%;
            display: flex;
            justify-content: space-evenly;
        }

        .profile_btn>div {
            border: 1px solid black;
            border-radius: 20px;
            padding: 5px;
            background-color: rgb(226, 240, 217);
        }

        .profile_btn>div:hover {
            background-color: rgb(174, 220, 175);
            cursor: pointer;
        }

        .list {
            width: 90%;
            margin: 0 auto;
            border-radius: 20px;
        }

        .list>div:nth-child(1) {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }

        .list>div:nth-child(4) {
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
        }

        .list>div {
            border: 1px solid black;
            text-align: center;
            background-color: rgb(226, 240, 217);
            padding: 7px;
        }

        .list>div:hover {
            background-color: rgb(174, 220, 175);
            cursor: pointer;
        }

        .right {
            width: 15%;
            position: fixed;
            top: 50px;
            right: 0;
            text-align: center;
            padding: 10px;
        }

        .right>.create_btn {
            border: 1px solid black;
            background-color: rgb(226, 240, 217);
            padding: 5px;
            border-radius: 20px;
        }

        .right>.create_btn:hover {
            background-color: rgb(174, 220, 175);
            cursor: pointer;
        }

        .right .divTable {
            border: 1px solid black;
            border-radius: 20px;
        }

        .right table {
            border-collapse: collapse;
            width: 100%;
            border-radius: 20px;
        }

        .right table tr:nth-child(odd) {
            font-size: 5px;
            height: 20px;
        }

        .right table tr:nth-child(even) {
            border-top: 1px solid black;
        }

        .right table th {
            font-size: large;
        }

        form {
            width: 70%;
            padding: 10px;
        }

        form table {
            width: 100%;
        }

        .regular_create {
            border: 1px solid black;
            border-radius: 20px;
            width: 70%;
            margin: 0 auto;
            padding: 25px;
            position: absolute;
            top: 60px;
            left: 0;
            right: 0;
        }

        .regular_create input {
            border-radius: 20px;
            padding:5px;
        }

        .regular_create td {
            padding:10px;
        }

        .regular_memo {
            border: 1px solid black;
            border-radius: 20px;
            padding: 20px;
            overflow-y: scroll;
            height: 150px;
            width: 100%;
            resize: none;
        }

        .meeting_info_detail_td {
            border: 1px solid black;
            border-radius: 20px;
            padding: 10px;
        }

        .meeting_info_detail {
            padding:5px;
        }

        .regular_dayTime {
            border: 1px solid black;
            border-radius: 20px;
            padding: 10px;
        }

        h3, h4{ margin:10px; } 
    </style>
</head>

<body>
    <div class="top">
        <div>식사</div>
        <div>스터디</div>
        <div>취미</div>
    </div>

    <div class="left">
        <div class="profile">
            <img src="./img/somsom.png" class="face">
            <br>
            <div>이지수</div>
            <br>
            <div>20190998</div>
            <br>
            <div class="like">
                <div>
                    <img src="./img/좋아요.jpg" class="estimate">
                    &nbsp;
                    <div>4</div>
                </div>
                <div>
                    <img src="./img/싫어요.jpg" class="estimate">
                    &nbsp;
                    <div>1</div>
                </div>
            </div>
            <br>
            <div class="profile_btn">
                <div>내 정보</div>
                <div>로그아웃</div>
            </div>
        </div>

        <br>

        <div class="list">
            <div>내가 생성한 모임</div>
            <div>내가 속한 모임</div>
            <div>내가 찜한 모임</div>
            <div>내가 신청한 모임</div>
        </div>
    </div>

    <div class="right">
        <div class="create_btn">등록하기</div>

        <br>

        <div class="divTable">
            <table>
                <tr>
                    <th colspan="7">5월 일정</th>
                </tr>

                <tr>
                    <td></td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td>6</td>
                </tr>

                <tr>
                    <td></td>
                    <td>📌</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>


                <tr>
                    <td>7</td>
                    <td>8</td>
                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                    <td>12</td>
                    <td>13</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>📌</td>
                    <td></td>
                </tr>

                <tr>
                    <td>14</td>
                    <td>15</td>
                    <td>16</td>
                    <td>17</td>
                    <td>18</td>
                    <td>19</td>
                    <td>20</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>21</td>
                    <td>22</td>
                    <td>23</td>
                    <td>24</td>
                    <td>25</td>
                    <td>26</td>
                    <td>27</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>📌</td>
                </tr>

                <tr>
                    <td>28</td>
                    <td>29</td>
                    <td>30</td>
                    <td>31</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    
    <form action="" method="post">
        <div class="regular_create">
            <h2>정기적 모임 만들기</h2><hr><br>
            <div>
                <input type="radio" id="irregularRadio" name="sort">
                <label for="irregularRadio">일시적</label>
                <input type="radio" id="regularRadio" name="sort" checked>
                <label for="regularRadio">정기적</label>
            </div>
            <br>
            <table>
                <tr></tr>
                <tr>
                    <th><h3>제목</h3></th>
                    <td colspan="7"><input type="text" name="regular_title" size="120"></td>
                </tr>
                <tr>
                    <th><h3>모임 이름</h3></th>
                    <td colspan="5"><input type="text" name="regular_name" size="70"></td>
                    <th><h3>모집 인원</h3></th>
                    <td colspan="2"><input type="text" name="regular_num" size="10"><b> 명</b></td>
                </tr>
                <tr>
                    <th><h3>모임 장소</h3></th>
                    <td colspan="7"><input type="text" name="regular_place" size="70"></td>
                </tr>

                <tr>
                    <th><h3>모임날짜</h3></th>
                    <td class="regular_dayTime" colspan="3">
                        <div><h4>- 매주</h4></div>
                        <div>
                            <input type="checkbox" id="regularDay" value="mon">월&nbsp;&nbsp;  
                            <input type="checkbox" id="regularDay" value="tue">화&nbsp;&nbsp;
                            <input type="checkbox" id="regularDay" value="wed">수&nbsp;&nbsp;
                            <input type="checkbox" id="regularDay" value="thu">목&nbsp;&nbsp;
                            <input type="checkbox" id="regularDay" value="fri">금&nbsp;&nbsp;
                            <input type="checkbox" id="regularDay" value="sat">토&nbsp;&nbsp;
                            <input type="checkbox" id="regularDay" value="sun">일&nbsp;&nbsp;
                        </div>
                        <br>
                        <div><h4>- 시간대</h4></div>
                        <div>
                            <input id="regularTime" type="checkbox" value="morning">06-12&nbsp;&nbsp;
                            <input id="regularTime" type="checkbox" value="afternoon">12-18&nbsp;&nbsp;
                            <input id="regularTime" type="checkbox" value="evening">18-24&nbsp;&nbsp;
                            <input id="regularTime" type="checkbox" value="night">00-06&nbsp;&nbsp;
                        </div>
                        <br>
                        <div><h4>- 시작 날짜</h4></div>
                            <div class="start_day">
                                <input type="date">
                            </div>
                        <br>
                    </td>
                    <td colspan="4"></td>
                </tr>

                <tr>
                    <th><h3>카테고리</h3></th>
                    <td>
                    	<div>
                            <input type="radio" id="meal" name="meeting_info">
                            <label for="meal">식사</label>
                            
                            <input type="radio" id="study" name="meeting_info">
                            <label for="study">스터디</label>
                        
                            <input type="radio" id="hobby" name="meeting_info" checked>
                            <label for="hobby">취미</label>
                    	</div>
                    </td>
                    <th><h3>모임 메모</h3></th>
                    <td colspan="6"></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="meeting_info_detail_td">
                        <div class="meeting_info_detail">
                            <input type="checkbox" id="meetingInfoDetail"> 스포츠
                        </div>
                        <div class="meeting_info_detail">
                            <input type="checkbox" id="meetingInfoDetail"> 예술
                        </div>
                        <div class="meeting_info_detail">
                            <input type="checkbox" id="meetingInfoDetail"> IT
                        </div>
                        <div class="meeting_info_detail">
                            <input type="checkbox" id="meetingInfoDetail">
                            <label><input type="text"id="etc" placeholder="기타항목을 입력하세요."></label>
                        </div>
                    </td>
                    
                    <td colspan="7">
                        <textarea class="regular_memo" placeholder=" 모임 상세 정보 등을 자유롭게 입력해주세요. "></textarea>
                    </td>
                </tr>

            </table>
        </div>
    </form>


</body>

</html>
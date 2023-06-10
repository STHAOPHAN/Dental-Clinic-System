<%-- 
    Document   : dentistappointment
    Created on : Jun 10, 2023, 4:54:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .button-4 {
            appearance: none;
            background-color: #FAFBFC;
            border: 1px solid rgba(27, 31, 35, 0.15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, 0.04) 0 1px 0, rgba(255, 255, 255, 0.25) 0 1px 0 inset;
            box-sizing: border-box;
            color: #24292E;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
            font-size: 14px;
            font-weight: 500;
            line-height: 20px;
            list-style: none;
            padding: 6px 16px;
            position: relative;
            transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
            word-wrap: break-word;
        }

        .button-4:hover {
            background-color: #F3F4F6;
            text-decoration: none;
            transition-duration: 0.1s;
        }

        .button-4:disabled {
            background-color: #FAFBFC;
            border-color: rgba(27, 31, 35, 0.15);
            color: #959DA5;
            cursor: default;
        }

        .button-4:active {
            background-color: #EDEFF2;
            box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;
            transition: none 0s;
        }

        .button-4:focus {
            outline: 1px transparent;
        }

        .button-4:before {
            display: none;
        }

        .button-4:-webkit-details-marker {
            display: none;
        }
        .btnLink{
            background: none;
            border: none;
            cursor: pointer;
            color: #009ce7;
            text-decoration: underline;
            font-weight: bold;
        }
        :root {
            --green: #009ce7;
            --white: #fff;
            --light-white: #aaa;
            --black: #3d3d3d;
            --light-bg: #4b4b4b;
            --box-shadow: .5rem .5rem 0 rgba(22, 160, 100, .2);
        }


        .btn {
            display: inline-block;
            background-color: var(--light-bg);
            cursor: pointer;
            color: var(--white);
            font-size: 1rem;
            padding: .5rem 1.2rem;
            border: 0;
        }

        .btn:hover {
            transition: .2s;
            background-color: var(--white);
            color: var(--black);
        }

        .top {
            display: flex;
            margin: 1rem 0;
            gap: 1rem
        }

        .top h2 {
            margin: 0;
        }


        .top a{
            background-color: var(--white);
            color: var(--black);
            font-size: 1rem;
            padding: .2rem;
            transition: .5s;
        }
        .top a:hover{
            transform: translateY(-5px);
        }
        .main-title {
            display: grid;
        }
        .items{
            margin-top: 1rem;
        }
        .items-info img {
            width: 130px;
            height: 130px;
        }

        .items-info {
            display: flex;
            gap: 1rem;
            padding-bottom: .8rem;
            border-bottom: solid .1rem #009ce7;
        }

        .items-info h3 {
            font-size: 1.4rem;
            color: var(--green);
            margin: 0;
        }

        .items-info h3 span {
            font-size: 1.3rem;
            color: white;
        }

        .items-info small {
            color: #9e9ea4;
        }

        .items-info h2 {
            color: tan;
            margin: .3rem;
            font-size: 1rem;
        }

    </style>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-4 col-3">
                            <h4 class="page-title">Lịch Hẹn</h4>
                        </div>
                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="addEmployee.jsp" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Thêm Nhân Viên</a>
                        </div>
                    </div>
                    <div id="${c.getId()} course" class="items">
                    <div class="items-info">
                        <div class="items-details">
                            <h3 style="text-align: left; color: #009ce7; margin-bottom: 10px" class="teachers-name">P16<span style="color: black">-Trần Hồng Hưng</span></h3>
                            <span style="color: black">Mô Tả:</span><data class="teachers-subject">đau răng gì mà nó đau quá trời quá đất luôn á mấy má.</data>
                            <div style="margin-bottom: 10px"></div>
                            <div class="price" style="margin-bottom: 10px">
                                <span style="color: black">Thời Gian:</span><h2 style="display: inline">12:40</h2>

                            </div>
                            <button class="button-4 completed-advisory" role="button">Hoàn Thành</button>
                        </div>
                    </div>
                </div>
                <div id="${c.getId()} course" class="items">
                    <div class="items-info">
                        <div class="items-details">
                            <h3 style="text-align: left; color: #009ce7; margin-bottom: 10px" class="teachers-name">P17<span style="color: black">-Lê Hòa Bình</span></h3>
                            <span style="color: black">Mô Tả:</span><data class="teachers-subject">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Accusamus quasi dolores minima reprehenderit illo vero repudiandae. Hic, facilis, in facere aliquid nesciunt obcaecati est, neque culpa recusandae repudiandae eius iure.</data>
                            <div style="margin-bottom: 10px"></div>
                            <div class="price" style="margin-bottom: 10px">
                                <span style="color: black">Thời Gian:</span><h2 style="display: inline">12:40</h2>
                            </div>
                            <button class="button-4 completed-advisory" role="button">Hoàn Thành</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
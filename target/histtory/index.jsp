<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>历史上的今天</title>
    <style>
        @import url('http://fonts.googleapis.com/css?family=Nunito:300,400,700');

        /* _variables.css */

        /* _mixins.css */

        /* _global.css */
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Nunito', sans-serif;
            background: -webkit-linear-gradient(right, #BE93C5, #7BC6CC);
            background: linear-gradient(to left, #BE93C5, #7BC6CC);
        }

        img {
            max-width: 100%;
            height: auto;
        }

        /* _site-header.css */
        .site-header {
            text-align: center;
            padding: 40px 0;

        }

        .site-header__title {
            font-size: 36px;
            color: #fff;
        }

        /* _wrapper.css */
        .wrapper {
            padding-left: 18px;
            padding-right: 18px;
            max-width: 1236px;
            margin-left: auto;
            margin-right: auto;
        }


        /* _timeline.css */
        .timeline {
            position: relative;
            margin: 30px auto;
            padding: 60px 0;

        }

        .timeline::before {
            content: "";
            position: absolute;
            top: 0;
            left: 10%;
            width: 4px;
            height: 100%;
            background-color: #8d94b1;
        }

        @media (min-width: 800px) {
            .timeline::before {
                left: 50%;
                margin-left: -2px;
            }
        }

        .timeline__item {
            margin-bottom: 100px;
            position: relative;
        }

        .timeline__item::after {
            content: "";
            clear: both;
            display: table;
        }

        .timeline__item:nth-child(2n) .timeline__item__content {
            float: right;
        }

        .timeline__item:nth-child(2n) .timeline__item__content::before {
            content: '';
            right: 40%;
        }

        @media (min-width: 800px) {
            .timeline__item:nth-child(2n) .timeline__item__content::before {
                left: inherit;
            }
        }

        .timeline__item:nth-child(2n) .timeline__item__content__date {
            background-color: #b292c5;
        }

        .timeline__item:nth-child(2n) .timeline__item__content__description {
            color: #b292c5;
        }

        .timeline__item:last-child {
            margin-bottom: 0;
        }

        .timeline__item-bg {
            -webkit-transition: all 1s ease-out;
            transition: all 1s ease-out;
            color: #fff;
        }

        .timeline__item-bg:nth-child(2n) .timeline__item__station {
            background-color: #b292c5;
        }

        .timeline__item-bg:nth-child(2n) .timeline__item__content {
            background-color: #b292c5;
        }

        .timeline__item-bg:nth-child(2n) .timeline__item__content::before {
            background-color: #b292c5;
        }

        .timeline__item-bg:nth-child(2n) .timeline__item__content__description {
            color: #fff;
        }

        .timeline__item-bg .timeline__item__station {
            background-color: #65adb7;
        }

        .timeline__item-bg .timeline__item__content {
            background-color: #65adb7;
        }

        .timeline__item-bg .timeline__item__content::before {
            background-color: #65adb7;
        }

        .timeline__item-bg .timeline__item__content__description {
            color: #fff;
        }

        .timeline__item__station {
            background-color: #9aa0b9;
            width: 40px;
            height: 40px;
            position: absolute;
            border-radius: 50%;
            padding: 10px;
            top: 0;
            left: 10%;
            margin-left: -33px;
            border: 4px solid #8d94b1;
            -webkit-transition: all .3s ease-out;
            transition: all .3s ease-out;
        }

        @media (min-width: 800px) {
            .timeline__item__station {
                left: 50%;
                margin-left: -30px;
                width: 60px;
                height: 60px;
                padding: 15px;
                border-width: 6px;
            }
        }

        .timeline__item__content {
            width: 80%;
            background: #fff;
            padding: 20px 30px;
            border-radius: 6px;
            float: right;
            -webkit-transition: all .3s ease-out;
            transition: all .3s ease-out;
        }

        @media (min-width: 800px) {
            .timeline__item__content {
                width: 40%;
                float: inherit;
                padding: 30px 40px;
            }
        }

        .timeline__item__content::before {
            content: '';
            position: absolute;
            left: 10%;
            background: #8d94b1;
            top: 20px;
            width: 10%;
            height: 4px;
            z-index: -1;
            -webkit-transition: all .3s ease-out;
            transition: all .3s ease-out;
        }

        @media (min-width: 800px) {
            .timeline__item__content::before {
                left: 40%;
                top: 30px;
                height: 4px;
                margin-top: -2px;
            }
        }

        .timeline__item__content__date {
            margin: 0;
            padding: 8px 12px;
            font-size: 15px;
            margin-bottom: 10px;
            background-color: #65adb7;
            color: #fff;
            display: inline-block;
            border-radius: 4px;
            border: 2px solid #fff;
        }

        .timeline__item__content__description {
            margin: 0;
            padding: 0;
            font-size: 16px;
            line-height: 24px;
            font-weight: 300;
            color: #65adb7;
        }

        @media (min-width: 800px) {
            .timeline__item__content__description {
                font-size: 19px;
                line-height: 28px;
            }
        }

        /* _site-footer.css */
        .site-footer {
            padding: 50px 0 200px 0;

        }

        .site-footer__text {
            color: #e6e6e6;
            font-size: 14px;
            text-align: center;
        }

        .site-footer__text__link {
            color: #8287a9;
        }
    </style>
</head>
<body>

<span style="display:none;" id="boxMessage"></span>

<header class="site-header">
    <div class="wrapper">
        <h1 class="site-header__title">历史上的今天</h1>
    </div>
</header>

<section class="timeline">
    <div class="wrapper" id="wrapper">
    </div>
</section>

</body>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>

<script type="text/javascript">
    $(function () {
        let url = 'j1';

        $.ajax({
            type:"post",
            url:"j1",
            async: false,
            success:function (data) {
                let obj = JSON.parse(data);
                let len = Object.keys(obj).length;
                $('#boxMessage').text(len);
                for (let i = 0; i < len; i++) {
                    $('#wrapper').append('<div class="timeline__item timeline__item--' +
                        i +
                        '">\n' +
                        '            <div class="timeline__item__station"></div>\n' +
                        '            <div class="timeline__item__content">\n' +
                        '                <h2 class="timeline__item__content__date">' +
                        obj[i].date +
                        '</h2>\n' +
                        '                <p class="timeline__item__content__description">' +
                        obj[i].title +
                        '</p>\n' +
                        '            </div>\n' +
                        '        </div>')
                }
            },
            error:function () {
                console.log('失败了');
            }
        })


        function customWayPoint(className, addClassName, customOffset) {
            let waypoints = $(className).waypoint({
                handler: function (direction) {
                    if (direction == "down") {
                        $(className).addClass(addClassName);
                    } else {
                        $(className).removeClass(addClassName);
                    }
                },
                offset: customOffset
            });

            console.log(38);
        }

        let defaultOffset = '50%';

        for (i = 0; i < $('#boxMessage').text(); i++) {
            customWayPoint('.timeline__item--' + i, 'timeline__item-bg', defaultOffset);
        }
    })
</script>
</html>

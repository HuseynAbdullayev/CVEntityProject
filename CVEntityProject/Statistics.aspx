<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="CVEntityProject.Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="web2/bootstrap.css" rel="stylesheet" type='text/css' />
    <!-- Custom Theme files -->
    <link href="web2/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <script src="web2/js/jquery.min.js"></script>
    <link rel="stylesheet" href="web2/font-awesome.css">
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Metro Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script>
    $(document).ready(function (c) {
            $('.alert-close').on('click', function (c) {
                $('.calender-left').fadeOut('slow', function (c) {
                    $('.calender-left').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close1').on('click', function (c) {
                $('.calender-right').fadeOut('slow', function (c) {
                    $('.calender-right').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close2').on('click', function (c) {
                $('.graph').fadeOut('slow', function (c) {
                    $('.graph').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close3').on('click', function (c) {
                $('.site-report').fadeOut('slow', function (c) {
                    $('.site-report').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close4').on('click', function (c) {
                $('.total-sale').fadeOut('slow', function (c) {
                    $('.total-sale').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close5').on('click', function (c) {
                $('.to-do').fadeOut('slow', function (c) {
                    $('.to-do').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close7').on('click', function (c) {
                $('.user-trends').fadeOut('slow', function (c) {
                    $('.user-trends').remove();
                });
            });
        });
    </script>
    <script>
    $(document).ready(function (c) {
            $('.alert-close6').on('click', function (c) {
                $('.world-map').fadeOut('slow', function (c) {
                    $('.world-map').remove();
                });
            });
        });
    </script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-48014931-1', 'codyhouse.co');
        ga('send', 'pageview');

        jQuery(document).ready(function ($) {
            $('.close-carbon-adv').on('click', function () {
                $('#carbonads-container').hide();
            });
        });
    </script>
    <script src="web2/js/zingchart.min.js"></script>
    <script src="web2/js/zingchart.jquery.js"></script>
    <script src="web2/js/jquery.easydropdown.js"></script>
    <script src="web2/js/jquery.nicescroll.js"></script>

    <link href="web2/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <script src="web2/js/jquery.vmap.js" type="text/javascript"></script>
    <script src="web2/js/jquery.vmap.world.js" type="text/javascript"></script>
    <script src="web2/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: '#333333',
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#666666',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#C8EEFF', '#006491'],
                normalizeFunction: 'polynomial'
            });
        });
    </script>
    <!----Calender -------->
    <link rel="stylesheet" href="web2/clndr.css" type="text/css" />
    <script src="web2/js/underscore-min.js"></script>
    <script src="web2/js/moment-2.2.1.js"></script>
    <script src="web2/js/clndr.js"></script>
    <script src="web2/js/site.js"></script>
    <!----End Calender -------->
    <script src="web2/js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab,#horizontalTab1,#horizontalTab2').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
    <link href="web2/nav.css" rel="stylesheet" type="text/css" media="all" />
    <script src="web2/js/main.js"></script> <!-- Resource jQuery -->
    <!-- chart -->
    <script src="web2/js/Chart1.js"></script>
    <!-- //chart -->
</head>
<body>
    <div class="total-content">
        
        <div class="col-md-9 content">
         
            <div class="list_of_members">
                <div class="sales">
                    <div class="icon">
                        <i class="dollar"></i>
                    </div>
                    <div class="icon-text">
                        <h3>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </h3>
                        <p>Total Skill</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="new-users">
                    <div class="icon">
                        <i class="user1"></i>
                    </div>
                    <div class="icon-text">
                        <h3>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </h3>
                        <p>Total message</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="orders">
                    <div class="icon">
                        <%--<i class="order"></i>--%>
                    </div>
                    <div class="icon-text">
                        <h3>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </h3>
                        <p>Average of skill's degree</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="visitors">
                    <div class="icon">
                        <i class="visit"></i>
                    </div>
                    <%--<div class="icon-text">--%>
                        <h3>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </h3>
                        <p>Biggest degree</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            
        <div class="total-world">
                <div class="world-map">
                    <div class="alert-close6"> </div>
                    <h3>Sales around world</h3>
                    <p><span class="color1"></span>40%<span class="color2"></span>12%<span class="color3"></span>11%<span class="color4"></span>10%<span class="color5"></span>18%</p>
                    <div class="clearfix"></div>
                    <div id="vmap" style="width: 600px; height: 400px;"></div>
                </div>
                <div class="site-report">
                    <div class="alert-close3"> </div>
                    <h3>Site Report</h3>
                    <div class="skills-top">
                        <h5>Sales</h5>
                        <h4>45%</h4>
                        <div class="clearfix"></div>
                        <div class="skills">
                            <div class="skill" style="width:="label1.Text""></div>
                        </div>
                    </div>
                    <div class="skills-top">
                        <h5>Revenue</h5>
                        <h4>68%</h4>
                        <div class="clearfix"></div>
                        <div class="skills">
                            <div class="skill1" style="width:68%"></div>
                        </div>
                    </div>
                    <div class="skills-top">
                        <h5>New Orders</h5>
                        <h4>89%</h4>
                        <div class="clearfix"></div>
                        <div class="skills">
                            <div class="skill2" style="width:89%"></div>
                        </div>
                    </div>
                    <p>It is a long established fact that a re-ader will be distracted by the readable content of a page when looking at its layout.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>

</asp:Content>

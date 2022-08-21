
<!--TITLE-->
<title>Coming Soon || Travel </title>

<!--SHORTCUT ICON-->
<link rel="shortcut icon" href="images/logo.png">

<!--META TAGS-->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

<!--FONT AWESOME-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--GOOGLE FONTS-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@700;800;900&family=Source+Sans+3:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

<!--EXTERNAL STYLE SHEET-->
<link rel="stylesheet" href="css/styles.css">
<style>
    *{
box-sizing:border-box;
}

:root{
--white:#FFF;
--primary:#5693d5;
}

body{
width:100vw;
height:100vh;
margin:0;
overflow:hidden !important;
font-family: 'Source Sans 3', sans-serif !important;
background: linear-gradient(rgba(1,1,1,.7), rgba(1, 1, 1, 0.6)), url("https://i.ibb.co/n0xx0mr/bg.jpg");
background-position:center;
background-size:cover;
display:flex;
align-items:center;
justify-content:center;
color:var(--white);
position:relative;
}

.content{
width:70%;
text-align:center;
}

.content .logo{
width:13%;
position:absolute;
top:1rem;
left:2vw;
}

.content h1{
font-size:4.5em;
font-family: 'Raleway', sans-serif;
font-weight:900;
}

.content h2{
position:relative;
top:-30px;
font-weight:200;
}

.content .social_icons{
position:fixed;
right:2vw;
bottom:2vh;
}

.content .social_icons:before{
content:"";
width:1px;
height:100%;
background-color:var(--white);
position:absolute;
top:-100%;
}

.content .social_icons a{
margin:10px 0px;
color:var(--white);
display:block;
text-decoration:none;
font-size:1.5em;
transition:0.5s;
}

.content .social_icons a:hover{
color:var(--primary);
}


.arrow {
text-align: center;
margin: 1% 0;
}
.arrow .fa{
color:var(--white);
font-weight:200;
text-decoration:none;
}
.bounce {
-webkit-animation: bounce 2s infinite;
animation: bounce 2s infinite;
}
@-webkit-keyframes bounce {
0%,
20%,
50%,
80%,
100% {
transform: translateY(0);
}
40% {
transform: translateY(-30px);
}
60% {
transform: translateY(-15px);
}
}
@keyframes bounce {
0%,
20%,
50%,
80%,
100% {
transform: translateY(0);
}
40% {
transform: translateY(-30px);
}
60% {
transform: translateY(-15px);
}
}


.content .button{
position:relative;
top:-10px;
}

.searchBox {
position: absolute;
top: 50%;
left: 50%;
transform:  translate(-50%,50%);
border-radius: 40px;
padding: 5px 10px;
display:flex;

}

.searchBox:hover > .searchInput {
width: 240px;
padding:10px;
}

.searchBox:hover > .searchButton {
background: white;
color : #2f3640;
}

.searchBox:hover{
background: #2f3640;
}

.searchBox:hover > .searchButton:hover {
background-color:var(--primary);
border:1px solid var(--primary);
color:var(--white);
}

.searchButton {
color: white;
float: right;
width: auto;
padding:10px 20px;
border-radius:40px;
background:transparent;
display: flex;
justify-content: center;
align-items: center;
transition: 0.4s;
border:0;
font-style:normal !Important;
font-weight:600;
text-align:center;
border:1px solid var(--white);
}

.searchInput {
border:none;
background: none;
outline:none !important;
float:left;
padding: 0;
color: white;
font-size: 16px;
transition: 0.4s;
width: 0px;
}

@media screen and (max-width: 1020px) {
.content h1{
font-size:2em;
}
.content h2{
position:relative;
top:-10px;
}
}

@media screen and (max-width: 820px) {
.content{
width:100%;
padding:1rem;
}
.content .logo{
width:20%;
}
.content h1{
font-size:1.5em;
}
.content h2{
position:relative;
top:-10px;
}
.content .social_icons{
position:absolute;
width:100%;
right:0vw;
bottom:1vh;
display:flex;
align-items:center;
justify-content:center;
}

.content .social_icons a{
margin:0 15px;
}

.content .social_icons:before{
content:"";
width:0px;
height:0%;
top:00%;
}

.searchBox:hover > .searchInput {
max-width:90%;
width: 90%;
padding: 5px 6px;
}
.searchBox:hover > .searchButton {
font-size:13px;
white-space:nowrap;
}
.searchBox:hover{
display:flex;
width:100%;
}
}
</style>
</head>
<body>
<div class="content">
<img src="images/logo.png" class="logo" alt="LOGO.">
<h1> Restricted ZoneD</h1>
<h2>Please Stay Off.</h2>
<div class="arrow bounce">
<a class="fa fa-arrow-down" href="#"></a>
</div>
<section class="button">

</div>
</section>

</div>
</body>
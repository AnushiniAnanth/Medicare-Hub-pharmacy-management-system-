<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>pharmacy</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Rancho&display=swap');

:root {
    --primary: #094b65;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    overflow-x: hidden;
    background: #fff;
    min-height: 100vh;
}

#header {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    padding: 30px 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;
}

#header .logo {
    color: white;
    font-weight: 700;
    font-size: 2em;
    text-decoration: none;
}

#header ul {
    display: flex;
    justify-content: center;
    align-items: center;
}

#header ul li {
    list-style: none;
    margin-left: 20px;
}

#header ul li a {
    text-decoration: none;
    padding: 6px 15px;
    color: var(--primary);
    border-radius: 20px;
}

#header ul li a:hover,
#header ul li a.active {
    background: var(--primary);
    color: #fff;
}

section {
    position: relative;
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

section::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100px;
    background: linear-gradient(to top, var(--primary), transparent);
    z-index: 10;
}

section img {
    position: absolute;
    top: 0px;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    pointer-events: none;
}

section #text {
    position: absolute;
    color: var(--primary);
    font-size: 10vw;
    text-align: center;
    line-height: .55em;
    font-family: 'Rancho', cursive;
    transform: translatey(-50%);
}

section #text span {
    font-size: .20em;
    letter-spacing: 2px;
    font-weight: 400;
}

#btn {
    color: rgb(34, 33, 33);
    text-decoration: none;
    display: inline-block;
    padding: 8px 30px;
    background: #e9e3e3;
    color: var(--primary);
    font-size: 1.2em;
    font-weight: 500;
    letter-spacing: 2px;
    border-radius: 40px;
    transform: translatey(100px);
}

.sec {
    position: relative;
    padding: 100px;
    background: var(--primary);
}

.sec h2 {
    font-size: 3.5em;
    color: #fff;
    margin-bottom: 10px;
}

.sec p {
    font-size: 1em;
    color: #fff;
}

footer {
    position: relative;
    padding: 0px 100px;
    background: var(--primary);
}

footer a {
    text-decoration: none;
    color: #fff;
}
  </style>

</head>
<body>

<header id="header">
        <a href="#" class="logo"> MediCare Hub  </a>
       
    </header>
    
    <Section>
        
        <img src="home.jpeg" id="bird1">
        <div> <a href="login(1).jsp" id="btn" >Customer </a></div><br>
       <div>
        <a href="test.html" id="btn" >Admin</a></div>
        
        
    </Section>
   
    
   

 

</body>
</html>
    
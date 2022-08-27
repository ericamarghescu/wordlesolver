<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Wordle</title>
</head>
<body>
<div style="display:flex; flex-direction:column; justify-content:center; align-items:center">
    <div style="background-color:#989898; width:100vw; display: flex; flex-direction:row; gap:20px; justify-content:center; align-items:center">
        <h1 style="color:white; font-family:sans-serif; font-weight:100"> W E L C O M E </h1>
        <h1 style="color:white; font-family:sans-serif; font-weight:100"> T O </h1>
        <h1 style="color:white; font-family:sans-serif; font-weight:100"> T H E </h1>
        <h1 style="color:white; font-family:sans-serif; font-weight:100"> W O R D L E </h1>
        <h1 style="color:white; font-family:sans-serif; font-weight:100"> S O L V E R </h1>
    </div>
    <br>
    <h3 style="font-family:sans-serif; font-weight:100">ENTER YOUR CRITERIA:</h3>
    <form action="generator-servlet" method="GET" style="display:flex; flex-direction:row; gap:10px">
        <div style="display:flex; flex-direction:column; align-items:center; justify-content:center">
            <div style="display:flex; flex-direction:row; gap:10px">
                <div style="display:flex; flex-direction:column; align-items:center; gap:10px">
                    <input type="text" name="letter1" maxlength="1" size="10px" style="height:250px; text-align:center; font-size: 50px">
                    <select id="colors1" name="color1">
                        <option style="font-family:sans-serif; font-weight:100" value="none">NONE</option>
                        <option style="font-family:sans-serif; font-weight:100" value="green">GREEN</option>
                        <option style="font-family:sans-serif; font-weight:100" value="yellow">YELLOW</option>
                    </select>
                </div>
                <div style="display:flex; flex-direction:column; align-items:center; gap:10px">
                    <input type="text" name="letter2" maxlength="1" size="10px" style="height:250px; text-align:center; font-size: 50px">
                    <select id="colors2" name="color2">
                        <option style="font-family:sans-serif; font-weight:100" value="none">NONE</option>
                        <option style="font-family:sans-serif; font-weight:100" value="green">GREEN</option>
                        <option style="font-family:sans-serif; font-weight:100" value="yellow">YELLOW</option>
                    </select>
                </div>
                <div style="display:flex; flex-direction:column; align-items:center; gap:10px">
                    <input type="text" name="letter3" maxlength="1" size="10px" style="height:250px; text-align:center; font-size: 50px">
                    <select id="colors3" name="color3">
                        <option style="font-family:sans-serif; font-weight:100" value="none">NONE</option>
                        <option style="font-family:sans-serif; font-weight:100" value="green">GREEN</option>
                        <option style="font-family:sans-serif; font-weight:100" value="yellow">YELLOW</option>
                    </select>
                </div>
                <div style="display:flex; flex-direction:column; align-items:center; gap:10px">
                    <input type="text" name="letter4" maxlength="1" size="10px" style="height:250px; text-align:center; font-size: 50px">
                    <select id="colors4" name="color4">
                        <option style="font-family:sans-serif; font-weight:100" value="none">NONE</option>
                        <option style="font-family:sans-serif; font-weight:100" value="green">GREEN</option>
                        <option style="font-family:sans-serif; font-weight:100" value="yellow">YELLOW</option>
                    </select>
                </div>
                <div style="display:flex; flex-direction:column; align-items:center; gap:10px">
                    <input type="text" name="letter5" maxlength="1" size="10px" style="height:250px; text-align:center; font-size: 50px">
                    <select id="colors5" name="color5">
                        <option style="font-family:sans-serif; font-weight:100" value="none">NONE</option>
                        <option style="font-family:sans-serif; font-weight:100" value="green">GREEN</option>
                        <option style="font-family:sans-serif; font-weight:100" value="yellow">YELLOW</option>
                    </select>
                </div>
            </div>
            <br>

            <button style="font-family:sans-serif; font-weight:100; color: white; font-size: 20px; background-color:#989898; height:50px; width:150px; display:flex; justify-content: center; align-items:center; border-radius: 15px">GENERATE</button>
        </div>
    </form>

</div>
<br/>
</body>
</html>
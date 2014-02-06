<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript">
    var mrqWidth = '300px';                  // width (in pixels)
    var mrqHeight = '30px';                  // height (in pixels)
    var mrqColour = '#f8f2cf';               // background colour:
    var mouseStop = true;                     // pause on mouseover (true or false)
    var fontfamily = 'arial,sans-serif'; // font for content
    var mrqSpeed = 3;                        // scroll speed (1 = slow, 5 = fast)

    // enter your ticker content here (use \/ and \' in place of / and ' respectively)
    var content = 'Are you looking for loads of useful information <a href="http:\/\/javascript.about.com\/">About Javascript<\/a>? Well now you\'ve found it.';

    var scrollSpeed = -mrqSpeed
    var aw, marquee
    var fsz = parseInt(mrqHeight) - 4
    function startticker()
    {
        if (document.getElementById)
        {
            var tick = '<div style="position:relative;width:' + mrqWidth + ';height:' + mrqHeight + ';overflow:hidden;background-color:' + mrqColour + '"';
            if (mouseStop) tick += ' onmouseover="scrollSpeed=0" onmouseout="scrollSpeed=-mrqSpeed"';
            tick += '><div id="marquee" style="position:absolute;left:0px;top:0px;font-family:' + fontfamily + ';font-size:' + fsz + 'px;white-space:nowrap;"><\/div><\/div>';
            document.getElementById('ticker').innerHTML = tick;
            marquee = document.getElementById("marquee");
            marquee.style.left = (10 + parseInt(mrqWidth)) + "px";
            marquee.innerHTML = '<span id="tx">' + content + '<\/span>';
            aw = document.getElementById("tx").offsemrqWidth;
            lefttime = setInterval("scrollticker()", 50);
        }
    }

    function scrollticker()
    {
        marquee.style.left = (parseInt(marquee.style.left) > (-10 - aw)) ?
        marquee.style.left = parseInt(marquee.style.left) + scrollSpeed + "px" : parseInt(mrqWidth) + 10 + "px";
    }
    window.onload = startticker;
</script>
</head>
<body>
<div id="ticker">
    this is a simple scrolling text!
</div>
</body>
</html>
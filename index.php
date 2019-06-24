<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<title>UMEME TRIVIA</title>
<head>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"  />
<style>
	.hidden{
		display:none;
		}
	#question{
		font-size:52px;
		color:#FFF;
		font-weight:bolder;
	}
	#answers{
		font-size:30px;
		font-weight:bolder;
		
	}
	#ansstatus{
		font-size:20px;
		font-weight:bolder;
		color:#FFF;
	}
</style>
<script src="jquery-1.11.3.min.js" type="text/jscript"></script>

<script src="mousetrap.min.js" type="text/jscript"></script>
<script>

$(document).ready(function(){
						   
		Mousetrap.bind('a', function() {
			$("#1").css("color", "red");
		});	
		Mousetrap.bind('b', function() {
			$("#2").css("color", "red");
		});	
		Mousetrap.bind('c', function() {
			$("#3").css("color", "red");
		});	
		Mousetrap.bind('d', function() {
			$("#4").css("color", "red");
		});	
		
		Mousetrap.bind('p', function() {
			$(".correct").css("color", "blue");
			var x = $("#correct_answer").html();
			$("#ansstatus").show().html("CORRECT ANSWER: " + x)
		});	
		
		
		Mousetrap.bind('n', function() {
		 	question();
		});
		current_question();
						   
    $("#sq").click(function(){
        $("#question").fadeIn("slow");
       
    });
	$("#sa").click(function(){
        
        $("#answers").fadeIn("slow");
       
    });
	$("#sc").click(function(){
       
        $("#correct_answer").fadeIn("slow");
    });
	
	
	function question(){
		$.ajax({
			type: "GET",
			url: "question.php",
			dataType: 'json',
			success: function(response) {
				$('#question').hide().html(response['question']).fadeIn("slow")
				$('#correct_answer').html(response['correct'])
				var ans = ""
				var c = 1
				$.each( response['answer'], function( key, value ) {
					var cor = $('#correct_answer').html()
					if(value == cor){
						ans += "<div id='"+ c +"' class = 'correct'>"+ value + "</div>"
				 	}else{
						ans += "<div id='"+ c +"'>"+ value + "</div>"
					}
					
					c++
				});
				$('#answers').hide().html(ans).fadeIn("slow")
				//$("#question").fadeIn(3000);
				// $("#answers").fadeIn("slow");
			}
	   });
	}
	
	function current_question(){
		$.ajax({
			type: "GET",
			url: "current_question.php",
			dataType: 'json',
			success: function(response) {
				if (response['status'] == 'empty'){
					question()
				}
				$('#question').hide().html(response['question']).fadeIn("slow")
				$('#correct_answer').html(response['correct'])
				var ans = ""
				var c = 1
				$.each( response['answer'], function( key, value ) {
					var cor = $('#correct_answer').html()
					if(value == cor){
						ans += "<div id='"+ c +"' class = 'correct'>"+ value + "</div>"
				 	}else{
						ans += "<div id='"+ c +"'>"+ value + "</div>"
					}
					
					c++
				});
				$('#answers').hide().html(ans).fadeIn("slow")
				//$("#question").fadeIn(3000);
				// $("#answers").fadeIn("slow");
			}
	   });
	}
});
</script>
</head>
<body>
<div style="margin:30px 0 0 0;">
<div class="col-md-2"></div>
<div class="row">
<div class="col-md-8">
    <div class="panel panel-default" style="background:#000">
        <div class="panel-body">
            <div id="question"></div>
        </div>
        <div class="panel-footer" style="background:#FF6">
            <div id="answers"></div>
        </div>
    </div>
    <div id="correct_answer" class="hidden">
</div>
</div>
</div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
	<div class="panel panel-default" style="background:#000">
        <div class="panel-body">
            <div id="ansstatus" ></div>
        </div>
     </div>
</div>
</div>

    <!--
    <button id="sq"> Question </button>
    <button id="sa"> Answer Option</button>
    <button id="sc"> Correct </button>
    -->
    </div>
</body>
</html>

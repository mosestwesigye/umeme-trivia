<?php

	$user="umeme";
	$password="umeme";
	$database="umeme";
	$conn=mysql_connect("localhost","$user","$password");
	mysql_select_db("$database",$conn);
	
	$q = mysql_query("select * from progress where status = 0") or die(mysql_error());
	if(mysql_num_rows($q) > 0){
		$arr = mysql_fetch_array($q);
		$nextq = $arr['question_id'];
		get($nextq);
	}else{
		$json = json_encode(array("status" => "empty"));
		echo $json;
	}
	
	function get($nextq){
		$qq = mysql_query("select * from question where id = '$nextq'") or die(mysql_error());
			if (mysql_num_rows($qq) > 0){
				$arr = mysql_fetch_array($qq);
				$qid = $arr['id'];
				$qa = mysql_query("select * from answer where question_id = '$qid'");
				$ares = array();
				$correct_answer = NULL;
				while($aar = mysql_fetch_array($qa)){
					if($aar['answer_status'] == "correct"){
						$correct_answer =  $aar['answer_option']." ".$aar['answer'];
					}
				array_push($ares, $aar['answer_option']." ".$aar['answer']);
				}
				$json = json_encode(array("question" => $arr['question'], "answer"=>$ares, "correct" => $correct_answer));
				echo $json;
			}else{
				
			}
			
			
	}
?>
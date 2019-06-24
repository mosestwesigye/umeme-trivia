<?php
	$user="umeme";
	$password="umeme";
	$database="umeme";
	$conn=mysql_connect("localhost","$user","$password");
	mysql_select_db("$database",$conn);
	
	getquestion();
	
	function getquestion(){
		$q = mysql_query("select * from progress") or die(mysql_error());
		if(mysql_num_rows($q) > 0){
			$pq = mysql_query("select * from progress where status = 0") or die(mysql_error());
			$prevq = mysql_fetch_array($pq);
			$pid =  $prevq['id'];
			$nextq = $prevq['question_id']+1;
			
			//Get question
			quest($nextq);
			
			
		}else{
			quest(1);
		}
	}
	
	function quest($id){
			$qq = mysql_query("select * from question where id = '$id'") or die(mysql_error());
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
				//echo $arr['question'];
				//print_r($ares);
				//var_dump(json_encode(array("question" => $arr['question'], "answer"=>$ares)));
				mysql_query("update progress set status = 1") or die(mysql_error());
				mysql_query("insert into progress (question_id, status, date_added) values('$qid', 0, now())") or die(mysql_error());
				echo $json;
			}else{
				echo "No questions";
				mysql_query("delete from progress");
			}
	}
?>
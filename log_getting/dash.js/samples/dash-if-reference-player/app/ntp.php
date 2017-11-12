<?php
  // microtimeの返り値をexplodeで分割して別々の変数に保存
  list($micro, $Unixtime) = explode(" ", microtime());
  $sec = $micro + date("s", $Unixtime); // 秒"s"とマイクロ秒を足す
  $StartTime = date("g:i:", $Unixtime).$sec;
  echo "StartTime = '" . $StartTime . "';";//echo $StartTime
?>



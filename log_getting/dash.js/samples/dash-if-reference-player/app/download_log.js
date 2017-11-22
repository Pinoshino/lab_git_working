function download_log(){
  var finalVal = '';

  var result="IPaddress,StartTime,State,Time,Buffer,Representation,index,DropFrame" +
  ",Latency(low),Latency(average),Latency(high), DownloadTime(low), DownloadTime(average), DownloadTime(high)";
  finalVal += result;
  finalVal += '\n';
  for (var i = 0; i < out_time.length; i++) {
    result = ipAddress + "," + StartTime + "," + out_state[i] + "," + out_time[i] + "," + out_buf[i] +  "," +
    out_rep[i] + "," + out_idx[i] + "," + out_df[i] + "," + out_latency_low[i] + ","
    + out_latency_average[i] + "," + out_latency_high[i]+ "," + out_d_time_low[i] + "," + out_d_time_average[i] + "," + out_d_time_high[i];
    finalVal += result;
    finalVal += '\n';
  }

  //set csv-data to a-tag on html
  var download = document.getElementById('Download log');
  download.setAttribute('href', 'data:text/csv;charset=utf-8,' + encodeURIComponent(finalVal));
  download.setAttribute('download', 'dash_log.csv');

}

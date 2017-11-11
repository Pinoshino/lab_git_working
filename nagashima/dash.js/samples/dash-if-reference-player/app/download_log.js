function download_log(){
  var finalVal = '';

  var result="IPaddress,StartTime,State,Time,Buffer,Representation,index";
  finalVal += result;
  finalVal += '\n';
  for (var i = 0; i < out_time.length; i++) {
    result = ipAddress + "," + StartTime + "," + out_state[i] + "," + out_time[i] + "," + out_buf[i] +  "," + out_rep[i] + "," + out_idx[i];
    finalVal += result;
    finalVal += '\n';
  }

  //set csv-data to a-tag on html
  var download = document.getElementById('Download log');
  download.setAttribute('href', 'data:text/csv;charset=utf-8,' + encodeURIComponent(finalVal));
  download.setAttribute('download', 'dash_log.csv');

}

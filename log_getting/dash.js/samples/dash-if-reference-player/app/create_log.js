function create_log(){

	var length = out_time.length;
        document.write("IPaddress,StartTime,State,Time,Buffer,Representation,index" +
				", DropFrame, Latency(low), Latency(average), Latency(high), DownloadTime(low), DownloadTime(average), DownloadTime(high)");
        document.write("<BR>");
	for(var i=0;i<length;i++){
		document.write(ipAddress + "," + StartTime + "," + out_state[i] + "," + out_time[i] + "," + out_buf[i] +
		  "," + out_rep[i] + "," + out_idx[i] + "," + out_df[i] + "," + out_latency_low[i] + ","
			+ out_latency_average[i] + "," + out_latency_high[i] + "," + out_d_time_low[i] + "," + out_d_time_average[i] + "," + out_d_time_high[i]);
		document.write("<BR>");

	}

}

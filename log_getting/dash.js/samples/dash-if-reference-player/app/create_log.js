function create_log(){

	var length = out_time.length;
        document.write("IPaddress,StartTime,State,Time,Buffer,Representation,index");
        document.write("<BR>");
	for(var i=0;i<length;i++){
		document.write(ipAddress + "," + StartTime + "," + out_state[i] + "," + out_time[i] + "," + out_buf[i] +  "," + out_rep[i] + "," + out_idx[i]);
		document.write("<BR>");

	}

}

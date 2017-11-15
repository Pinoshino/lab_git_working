
var video;
var dashPlayer;
var currentRep, curSegment=0;
var lastCall = 0;
var myBandwidth;
var myFplot;
var overlayBuffer;
var myBuffer;
var bps;
var timeID = 0;
var adaptation;
var xmlHttp;

//added by k.k
var run_time = 0;	    //the time when DASH-JS runs
var flag_playout = false;   //the video is begun to play or not
var playout_time = 0;       //emulated playout time
var init_playout_time = 0;  //the start time when the video play.
var cur_rep = 0;	    //current selected representation
var est_th = 0;		    //estimated throughput

//added by k.k
//output to html
var count = 0;
var out_time = [];
var out_state = [];
var out_buf = [];
var out_th = [];
var out_rep = [];
var out_seg=[];
var out_idx=[];
var out_df=[];
var out_latency_low=[];
var out_latency_average=[];
var out_latency_high=[];
var out_d_time_low=[];
var out_d_time_average=[];
var out_d_time_high=[];
var state = "Start up";
var flag_start = true;

var ipAddress;
var StartTime;
var Bmax=30;
var Bmin=20;

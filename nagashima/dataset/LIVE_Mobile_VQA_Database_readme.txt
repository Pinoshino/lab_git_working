----------------------------------
LIVE Mobile Video Quality Database
----------------------------------

Copyright Notice

-----------COPYRIGHT NOTICE STARTS WITH THIS LINE------------
Copyright (c) 2012 The University of Texas at Austin
All rights reserved.

Permission is hereby granted, without written agreement and without license or royalty fees, 
to use, copy, modify, and distribute this database (the images, the results and the source files) 
and its documentation for any purpose, provided that the copyright notice in its entirety appear 
in all copies of this database, and the original source of this database, Laboratory for Image 
and Video Engineering (LIVE, http://live.ece.utexas.edu) and Center for Perceptual Systems 
(CPS,http://www.cps.utexas.edu) at the University of Texas at Austin (UT Austin, http://www.utexas.edu), 
is acknowledged in any publication that reports research using this database.

The following papers are to be cited in the bibliography whenever the database is used as:

• A. K. Moorthy, L. K. Choi, A. C. Bovik and G. deVeciana, “Video Quality Assessment on Mobile 
  Devices: Subjective, Behavioral and Objective Studies”, IEEE Journal of Selected Topics in 
  Signal Processing, vol.x, no.x, pp.x-x, October 2012.

• URL: http://live.ece.utexas.edu/research/quality/live_mobile_video.html

IN NO EVENT SHALL THE UNIVERSITY OF TEXAS AT AUSTIN BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, 
SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OF THIS DATABASE AND ITS 
DOCUMENTATION, EVEN IF THE UNIVERSITY OF TEXAS AT AUSTIN HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

THE UNIVERSITY OF TEXAS AT AUSTIN SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE DATABASE 
PROVIDED HEREUNDER IS ON AN "AS IS" BASIS, AND THE UNIVERSITY OF TEXAS AT AUSTIN HAS NO OBLIGATION
TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.

-----------COPYRIGHT NOTICE ENDS WITH THIS LINE------------

Anush Krishna Moorthy  - Email: anushmoorthy@gmail.com

REFERENCES
----------

1. A. K. Moorthy, L. K. Choi, A. C. Bovik and G. deVeciana, 
" Video Quality Assessment on Mobile Devices: Subjective, Behavioral 
and Objective Studies ", IEEE Journal of Selected Topics in Signal 
Processing, vol.x, no.x, pp.x-x, October 2012.

2. A. K. Moorthy, L. K. Choi, G. deVeciana, and A. C. Bovik, 
"Subjective Analysis of Video Quality on Mobile Devices," Sixth 
International Workshop on Video Processing and Quality Metrics for 
Consumer Electronics (VPQM) (invited article), Scottsdale, Arizona, 
January 15-16, 2012. 

3. A. K. Moorthy, L. K. Choi, G. deVeciana, and A. C. Bovik, 
"Mobile Video Quality Assessment Database," IEEE ICC Workshop on 
Realizing Advanced Video Optimized Wireless Networks, Ottawa, Canada, 
June 10-15, 2012. 

4. URL: http://live.ece.utexas.edu/research/quality/live_mobile_video.html


SOURCE VIDEOS
--------------

The source videos were obtained using a RED ONE digital cinematographic camera. 
The sequences of REDCODE (.r3d) images received from the MYSTERIUM sensor, using 
the RED 50 − 150 mm and 18 − 50 mm T3 zoom lens were stored as 12-bit REDCODE RAW 
data, at a resolution of 2K(2048×1152) at frame rates of 30 fps and 60 fps using 
the REDCODE 42MB/s option to ensure the best possible acquisition quality. A tripod 
was used in most scenes and the ISO was set in the range 100 to 360 according to 
the weather – ISOs of 100 or 200 were used for outdoor scenes and 200 or 360 were 
used for indoor scenes; the shutter speed varied between 1/48 to 1/60 s. The 
automatic white balance mode was used. The RED drive was used to record the videos.
The source videos were then downsampled to resolution 720p (1280 × 720) and frame-rate
of 30 fps, and the .r3d videos were converted into uncompressed .yuv files using 
a combination of the imresize (option : bicubic) function in MATLAB and VirtualDub.


VIDEOS 
------

"videos" provides videos in the LIVE Mobile Video Quality Database as
.yuv files. 

All video files have planar YUV 4:2:0 format and do not contain any
headers. The spatial resolution of all videos is 1280x720 pixels. The
first 921600 bytes of each file correspond to the 8-bit Y component of
the first frame, followed by 230400 bytes corresponding to the 8-bit U
component of the first frame, followed by 230400 bytes corresponding to
the 8-bit V component of the first frame. Frames are concatenated to
form sequence files.


FILENAMING CONVENTION
---------------------

The video file naming convention is as follows. Each filename has the
following pattern - "xx_y#.yuv".

"xx" is a pattern that denotes the source/reference video sequence
that was used to create the test video. There are ten reference
videos in the LIVE Mobile VQA Database and the patterns used for each of them are 
as follows:

  "fc" - Friend Drinking Coke, "sd" - Two Swan Dunking, "rb" - Runners Skinny Guy,
  "ss" - Students Looming Across Street, "bf" -Bulldozer With Fence, 
  "po" - Panning Under Oak, "la" - Landing Airplane, "dv" - Barton Springs Pool Diving, 
  "tk" - Trail Pink Kid, "hc" - Harmonicat.

"y" (It can be one, two or three letters) is a pattern that denotes the referecne / 
distortion category of the video sequence. There are five distortion categories in the 
LIVE Mobile VQA database (plus the reference). The patterns used for each of them are 
as follows:

  "org" - Reference, 
  "r"   - Compression,
  "w"   - Wireless channel packet-loss,
  "f"   - Frame-freezes, stored video delivery,
  "fr"  - Frame-freezes, real time live video delivery,
  "s"   - Rate Adaptation,
  "t"   - Temporal Dynamics.
	
"#" (It can be one or two letters) after "y" is a number that denotes the specific pattern
of each distortion category that was used to create the test video. The Specific patterns 
of each distortion cartegory are as follows:

  "r" 1,2,3,4  - layer 1,2,3,4 of compression
  "w" 1,2,3,4  - wireless packet loss from "r" 1,2,3,4
  "f" 1        - every 1 second (with 8 freezes) (stored)
  "f" 2        - every 2 second (with 4 freezes) (stored)
  "f" 4        - every 4 second (with 2 freezes) (stored)
  "fr" 4       - every 4 seconds of freeze (live)
  "s" 14,24,34 - rate adaptation from r1,r2,r3 to r4
  "t" 14       - temporal dynamics in order r1-r4-r1-r4-r1
  "t" 124      - temporal dynamics in order r1-r2-r4
  "t" 134      - temporal dynamics in order r1-r3-r4
  "t" 421      - temporal dynamics in order r4-r2-r1
  "t" 431      - temporal dynamics in order r4-r3-r1

In the case of stored videos, frame-freezes do not result in the loss of a video segment from
the video, i.e., the videos maintain temporal continuity after the freeze. On the other hand, 
frame-freezes in live video delivery result in a loss of video segments, i.e., a lack of 
temporal continuity.

As an example, for the "Friend Drinking Coke" sequence:

1. fc_org.yuv is the reference video.  

2. fc_r1.yuv, fc_r2.yuv, fc_r3.yuv, fc_r4.yuv are four test videos
obtained from the reference using compression distortions.

3. fc_w1.yuv, fc_w2.yuv, fc_w3.yuv, fc_w4.yuv are four test videos
obtained from the compression videos using wireless packet-loss distortions.

4. fc_f1.yuv, fc_f2.yuv, fc_f4.yuv, fc_fr4 are four test videos obtained from 
the reference using frame freezes in stored video and live video delivery. 

5. fc_s14.yuv, fc_s24.yuv, fc_s34.yuv, are three test videos
obtained from the compression videos using rate adaptation distortions.

6. fc_t14.yuv, fc_t124.yuv, fc_t134.yuv, fc_t421.yuv, fc_t431.yuv are five test videos
obtained from the compression videos using temporal dynamics distortions.


SUBJECTIVE DATA FORMAT
----------------------

The subjective study was conducted using a single stimulus procedure
and the subjects indicated the quality of the video on a continuous
scale. Subjects also viewed each of the reference videos to facilitate
computation of difference scores using hidden reference removal. 

A total of thirty-six subjects participated in the mobile study and seventeen 
subjects participated in the tablet study. The mobile study was designed so 
that 18 subjective ratings were obtained for each of the 200 videos in the
study. 100 distorted videos from this set of 200 distorted videos were used 
for the tablet study, and thus each of the 100 videos in the tablet study 
received ratings from 17 subjects. The subject rejection procedure in ITU-R 
BT 500.11. 9 was used to reject two subjects from the mobile study, while 
no subjects were rejected from the tablet study.

Four .mat files include subjective data as follows:
 1. names.mat         : video name order for mobile 
 2. names_tablet.mat  : vidoe name order for tablet
 3. dmos_final.mat    : DMOS for mobile and tablet
 4. mos_temporal.mat  : temporal MOS



#ifndef _VPG_H_
#define _VPG_H_
	
	#include <hls_axi_io.h>
	#include <hls_math.h>

	// test
//	#define HEIGHT 	6
//	#define WIDTH  	8
//	#define MAXITER	50

	// prod
	#define HEIGHT 	600
	#define WIDTH  	800
	#define MAXITER	255

	// test
//	typedef float fixed_point;

	// prod
	typedef ap_fixed<18,3,AP_TRN_ZERO,AP_SAT> fixed_point;

	typedef hls::stream<ap_axiu<24,1,1,1> >		AXI_STREAM;

	typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC3> RGB_IMAGE;
	typedef hls::Scalar<3, unsigned char>  pix;

	void video_mandelbrot_generator(AXI_STREAM&, fixed_point, fixed_point, fixed_point);

#endif

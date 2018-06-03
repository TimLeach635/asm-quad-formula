section .text
	global quad_formula
quad_formula:
	; "a" in XMM0
	; "b" in XMM1
	; "c" in XMM2
	; return to XMM0
	vmulss	xmm3,xmm0,xmm2	; XMM3 = ac
	addss	xmm3,xmm3	; XMM3 = 2ac
	addss	xmm3,xmm3	; XMM3 = 4ac
	vmulss	xmm4,xmm1,xmm1	; XMM4 = b^2
	vsubss	xmm3,xmm4,xmm3	; XMM3 = b^2 - 4ac
	sqrtss	xmm3,xmm3	; XMM3 = sqrt(b^2 - 4ac)
	subss	xmm3,xmm1	; XMM3 = -b + sqrt(b^2 - 4ac)
	vaddss	xmm4,xmm0,xmm0	; XMM4 = 2a
	vdivss	xmm0,xmm3,xmm4	; XMM0 = (-b + sqrt(b^2 - 4ac))/2a
	ret

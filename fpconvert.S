        .arch armv6
        .cpu cortex-a53
        .equ 	NUL, 0

        .global fpconvert
        // !!! SET FP_OFFSET TO THE NUMBER OF (SAVED REGISTERS -1 * 4)
        .equ 	FP_OFFSET, 32 	    // (# of saved regs - 1) * 4

fpconvert:	
        // PROLOG (DO NOT TOUCH!!!)

        push    {r4-r10, fp, lr}    // SAVED REGISTERS 
        add     fp, sp, #FP_OFFSET  // .
	                            // you can use any of r0-r10 inclusive
	                            // R0 is the parameter to the function
	                            // the last value of R0 is the value
	                            // returned from the function

        // ==========================================================================
        // YOUR CODE GOES IN THE SECTION BELOW
        // ==========================================================================
        // R0 holds the result
	
	// check for +- - if you detect 0, its ok
	// to bracnh to the end.  Do not return from the function
	// here. 
	
	// check for _- inf here and call subroutine to form IEEE
	// float +- inf.
	

// ==========================================================================

        // EPILOG (DO NOT TOUCH!!!)
        sub	sp, fp, #FP_OFFSET
        pop     {r4-r10, fp, lr}     // MUST MATCH LIST IN PROLOG'S PUSH
        bx      lr                   // return


	
// ==========================================================================
	
        .equ    FP_OFFSET, 32        //  (# of saved regs -1) * 4
	// make a 32-bit IEEE +Inf or -Inf
convert_infinity:	
        // PROLOG (DO NOT TOUCH!!!)
        push    {r4-r10, fp, lr}    // save regs
	add     fp, sp, #FP_OFFSET
	                            // you can use any of r0-r10 inclusive
	                            // R0 is the parameter to the function
	                            // the last value of R0 is the value
	                            // returned from the function
				    // r4-r10 are local to this function
	                            // changes to these values will not be reflected
	                            // in the main function.
	
        // ==========================================================================
        // YOUR CODE GOES IN THE SECTION BELOW
        // ==========================================================================
	// R0 is the incoming value
        // R0 holds the result
	
        // EPILOG (DO NOT TOUCH!!!)
        sub	sp, fp, #FP_OFFSET
        pop     {r4-r10, fp, lr}    // restore regs
        bx      lr                  // return

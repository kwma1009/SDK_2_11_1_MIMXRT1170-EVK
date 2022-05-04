/*******************************************************************************
*
 * Copyright (c) 2013 - 2016, Freescale Semiconductor, Inc.
 * Copyright 2016-2021 NXP
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* 
*
****************************************************************************//*!
*
* @brief  Addition
* 
*******************************************************************************/
#ifndef _MLIB_ADD_A32_H_
#define _MLIB_ADD_A32_H_

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/
#include "mlib_types.h"

/*******************************************************************************
* Macros 
*******************************************************************************/  
#define MLIB_Add_A32ss_Ci(f16Add1, f16Add2) MLIB_Add_A32ss_FCi(f16Add1, f16Add2) 
#define MLIB_Add_A32as_Ci(a32Accum, f16Add) MLIB_Add_A32as_FCi(a32Accum, f16Add)  

/***************************************************************************//*!
*  Addition        
*  a32Out = f16Add1 + f16Add2
*  Result can overflow through fractional range and is stored in accumulator type
*******************************************************************************/
static inline acc32_t MLIB_Add_A32ss_FCi(register frac16_t f16Add1, register frac16_t f16Add2)
{ 
    return((acc32_t)((acc32_t)f16Add1 + (acc32_t)f16Add2));     
}
 
/***************************************************************************//*!
*  Addition        
*  a32Out = a32Accum + f16Add
*  Result can overflow through fractional range and is stored in accumulator type
*******************************************************************************/
static inline acc32_t MLIB_Add_A32as_FCi(register acc32_t a32Accum, register frac16_t f16Add)
{  
    return((acc32_t)(a32Accum + (acc32_t)(f16Add)));        
}
 
#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_ADD_A32_H_*/

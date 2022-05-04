/*
 * coreHTTP v2.0.0
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

/**
 * @file memmove.c
 * @brief Creates a stub for memmove so that the proof for
 * httpParserOnBodyCallback is not stuck in the Post-Processing Step.
 */

#include <string.h>

/* This is a clang macro not available on linux */
#ifndef __has_builtin
    #define __has_builtin( x )    0
#endif

#if __has_builtin( __builtin___memmove_chk )
    void * __builtin___memmove_chk( void * dest,
                                    const void * src,
                                    size_t n,
                                    size_t m )
    {
        __CPROVER_assert( __CPROVER_w_ok( dest, n ), "write" );
        __CPROVER_assert( __CPROVER_r_ok( src, n ), "read" );
        return dest;
    }
#else
    void * memmove( void * dest,
                    const void * src,
                    size_t n )
    {
        __CPROVER_assert( __CPROVER_w_ok( dest, n ), "write" );
        __CPROVER_assert( __CPROVER_r_ok( src, n ), "read" );
        return dest;
    }
#endif /* if __has_builtin( __builtin___memmove_chk ) */

/** @file cli_utils.h
 *
 *  @brief CLI Utils
 *
 *  Copyright 2008-2020 NXP
 *
 *  NXP CONFIDENTIAL
 *  The source code contained or described herein and all documents related to
 *  the source code ("Materials") are owned by NXP, its
 *  suppliers and/or its licensors. Title to the Materials remains with NXP,
 *  its suppliers and/or its licensors. The Materials contain
 *  trade secrets and proprietary and confidential information of NXP, its
 *  suppliers and/or its licensors. The Materials are protected by worldwide copyright
 *  and trade secret laws and treaty provisions. No part of the Materials may be
 *  used, copied, reproduced, modified, published, uploaded, posted,
 *  transmitted, distributed, or disclosed in any way without NXP's prior
 *  express written permission.
 *
 *  No license under any patent, copyright, trade secret or other intellectual
 *  property right is granted to or conferred upon you by disclosure or delivery
 *  of the Materials, either expressly, by implication, inducement, estoppel or
 *  otherwise. Any license under such intellectual property rights must be
 *  express and approved by NXP in writing.
 *
 */

#ifndef __MTF_UTILS_H__
#define __MTF_UTILS_H__

int string_equal(const char *s1, const char *s2);
int get_uint(const char *arg, unsigned int *dest, unsigned int len);
int get_mac(const char *arg, char *dest, char sep);

/* Simplified non-re-entrant cli_getopt function.  Call this in a while loop to
 * parse argv.  Here are some caveats:
 *
 * Be sure to set cli_optind to 1 before invoking getopt for the first time.
 * Only short options with preceding '-' are supported.
 * Returns '?' when it encounters an unexpected condition or option
 */
extern int cli_optind;
extern char *cli_optarg;
int cli_getopt(int argc, char **argv, const char *fmt);
unsigned int a2hex_or_atoi(char *value);
unsigned int a2hex(const char *s);
int ISDIGIT(char *x);
int ishexstring(void *hex);

#endif

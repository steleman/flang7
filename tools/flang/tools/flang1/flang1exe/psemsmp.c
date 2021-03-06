/*
 * Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

/** \file
    \brief Semantic analyzer routines which process SMP statements.
 */

#include "gbldefs.h"
#include "global.h"
#include "gramsm.h"
#include "gramtk.h"
#include "symtab.h"
#include "semant.h"
#include "scan.h"
#include "semstk.h"
#include "ast.h"
#include "direct.h"

/**
   \param rednum   reduction number
   \param top      top of stack after reduction
 */
void
psemsmp(int rednum, SST *top)
{
  SST_ASTP(LHS, 0);
}

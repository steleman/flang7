! Copyright (c) 1998, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
!
! Character substrings. F90 allows overlap.
!

      integer, parameter :: num = 5
      integer rslts(num), expect(num)
      data expect / 1,1,1,1,1 /

      character*4 c4
      character*5 c5
      character*13 c13


      c5 = 'abcde'
      c5(1:4) = c5(2:5)
      if (c5 .eq. 'bcdee') then
          rslts(1) = 1
      else
          rslts(1) = 0
          print *, c5, '-expected bcdee'
      endif 

      c5 = 'abcde'
      c5(2:5) = c5(1:4) 
      if (c5 .eq. 'aabcd') then
          rslts(2) = 1
      else
          rslts(2) = 0
          print *, c5, '-expected aabcd'
      endif

      c5 = 'abcde'
      c5(2:5) = c5(1:3) // c5(3:5) 
      if (c5 .eq. 'aabcc') then
          rslts(3) = 1
      else
          rslts(3) = 0
          print *, c5, '-expected aabcc'
      endif

      c13 = 'abcdefghijklm'
      c13 = c13(2:5)
      if (c13 .eq. 'bcde') then
           rslts(4) = 1
      else
           rslts(4) = 0
      endif

      c13 = 'abcdefghijklm'
      c13(2:5)  = c13
      if (c13 .eq. 'aabcdfghijklm') then
           rslts(5) = 1
      else
           rslts(5) = 0
           print *, c13
      endif

      call check(rslts, expect, num)
      end

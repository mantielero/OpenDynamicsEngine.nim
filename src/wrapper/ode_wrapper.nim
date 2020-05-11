# Resetting /home/jose/src/OpenDynamicsEngine.nim/build

{.passC: "-I/home/jose/src/OpenDynamicsEngine.nim/build/include/ode".}

{.passC: "-I/home/jose/src/OpenDynamicsEngine.nim/build/include".}
# Importing /home/jose/src/OpenDynamicsEngine.nim/build/include/ode/ode.h
# Generated at 2020-05-11T20:00:14+02:00
# Command line:
#   /home/jose/.nimble/pkgs/nimterop-#head/nimterop/toast --preprocess -m:c --recurse -G__=_ -E_ -f:ast2 --includeDirs+=/home/jose/src/OpenDynamicsEngine.nim/build/include/ode --includeDirs+=/home/jose/src/OpenDynamicsEngine.nim/build/include --pnim --dynlib=dynlibFile --nim:/home/jose/.choosenim/toolchains/nim-1.2.0/bin/nim /home/jose/src/OpenDynamicsEngine.nim/build/include/ode/ode.h

{.hint[ConvFromXtoItselfNotNeeded]: off.}

import nimterop/types

# const 'ODE_API_DEPRECATED' has invalid value '__attribute__((__deprecated__))'
# const 'ODE_PURE_INLINE' has invalid value 'static __inline'
# const 'ODE_INLINE' has invalid value '__inline'
# const 'ODE_NORETURN' has invalid value '__attribute__((noreturn))'
# const 'dInfinity' has invalid value '((double)INFINITY)'
# const 'dNaN' has invalid value 'NAN'
# type 'dJointFeedback' is duplicate, skipped
# type 'dSurfaceParameters' is duplicate, skipped
# type 'dContactGeom' is duplicate, skipped
# type 'dContact' is duplicate, skipped
# type 'dStopwatch' is duplicate, skipped
# type 'dMass' is duplicate, skipped
# type 'dMass' is duplicate, skipped
# type 'dContactGeom' is duplicate, skipped
# const 'dCreateCCylinder' has invalid value 'dCreateCapsule'
# const 'dGeomCCylinderSetParams' has invalid value 'dGeomCapsuleSetParams'
# const 'dGeomCCylinderGetParams' has invalid value 'dGeomCapsuleGetParams'
# const 'dGeomCCylinderPointDepth' has invalid value 'dGeomCapsulePointDepth'
# type 'dGeomClass' is duplicate, skipped

defineEnum(dSpaceAxis)
defineEnum(dMotionDynamics)
defineEnum(dDynamicsAxis)
defineEnum(dVec3Element)
defineEnum(dVec4Element)
defineEnum(dMat3Element)
defineEnum(dMat4Element)
defineEnum(dQuatElement)
defineEnum(Enum_odeh1)
defineEnum(dJointType)
defineEnum(Enum_odeh2)
defineEnum(Enum_odeh3)
defineEnum(Enum_odeh4)
defineEnum(dInitODEFlags) ## ::
                         ##   
                         ##   
                         ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
                         ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
                         ##   
                         ##    This library is free software; you can redistribute it and/or
                         ##    modify it under the terms of EITHER:
                         ##      (1) The GNU Lesser General Public License as published by the Free
                         ##          Software Foundation; either version 2.1 of the License, or (at
                         ##          your option) any later version. The text of the GNU Lesser
                         ##          General Public License is included with this library in the
                         ##          file LICENSE.TXT.
                         ##      (2) The BSD-style license that is included with this library in
                         ##          the file LICENSE-BSD.TXT.
                         ##   
                         ##    This library is distributed in the hope that it will be useful,
                         ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
                         ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
                         ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
                         ##   
                         ##   
                         ##   
                         ##    Library initialization
                         ##   
                         ##    @defgroup init Library Initialization
                         ##   
                         ##    Library initialization functions prepare ODE internal data structures for use
                         ##    and release allocated resources after ODE is not needed any more.
                         ##   
                         ##   
                         ##    @brief Library initialization flags.
                         ##   
                         ##    These flags define ODE library initialization options.
                         ##   
                         ##    @c dInitFlagManualThreadCleanup indicates that resources allocated in TLS for threads
                         ##    using ODE are to be cleared by library client with explicit call to @c dCleanupODEAllDataForThread.
                         ##    If this flag is not specified the automatic resource tracking algorithm is used.
                         ##   
                         ##    With automatic resource tracking, On Windows, memory allocated for a thread may 
                         ##    remain not freed for some time after the thread exits. The resources may be 
                         ##    released when one of other threads calls @c dAllocateODEDataForThread. Ultimately,
                         ##    the resources are released when library is closed with @c dCloseODE. On other 
                         ##    operating systems resources are always released by the thread itself on its exit
                         ##    or on library closure with @c dCloseODE.
                         ##   
                         ##    With manual thread data cleanup mode every collision space object must be 
                         ##    explicitly switched to manual cleanup mode with @c dSpaceSetManualCleanup
                         ##    after creation. See description of the function for more details.
                         ##   
                         ##    If @c dInitFlagManualThreadCleanup was not specified during initialization,
                         ##    calls to @c dCleanupODEAllDataForThread are not allowed.
                         ##   
                         ##    @see dInitODE2
                         ##    @see dAllocateODEDataForThread
                         ##    @see dSpaceSetManualCleanup
                         ##    @see dCloseODE
                         ##    @ingroup init
defineEnum(dAllocateODEDataFlags) ## ::
                                 ##   
                                 ##    @brief ODE data allocation flags.
                                 ##   
                                 ##    These flags are used to indicate which data is to be pre-allocated in call to
                                 ##    @c dAllocateODEDataForThread.
                                 ##   
                                 ##    @c dAllocateFlagBasicData tells to allocate the basic data set required for
                                 ##    normal library operation. This flag is equal to zero and is always implicitly 
                                 ##    included.
                                 ##   
                                 ##    @c dAllocateFlagCollisionData tells that collision detection data is to be allocated.
                                 ##    Collision detection functions may not be called if the data has not be allocated 
                                 ##    in advance. If collision detection is not going to be used, it is not necessary
                                 ##    to specify this flag.
                                 ##   
                                 ##    @c dAllocateMaskAll is a mask that can be used for for allocating all possible 
                                 ##    data in cases when it is not known what exactly features of ODE will be used.
                                 ##    The mask may not be used in combination with other flags. It is guaranteed to
                                 ##    include all the current and future legal allocation flags. However, mature 
                                 ##    applications should use explicit flags they need rather than allocating everything.
                                 ##   
                                 ##    @see dAllocateODEDataForThread
                                 ##    @ingroup init
defineEnum(Enum_odeh5)
defineEnum(Enum_odeh6)
defineEnum(Enum_odeh7)
defineEnum(Enum_odeh8)
defineEnum(Enum_odeh9)        ## ::
                      ##   
                      ##    standard classes
                      ##    the maximum number of user classes that are supported
defineEnum(Enum_odeh10)       ## ::
                       ##    class numbers - each geometry object needs a unique number
defineEnum(dMeshTriangleVertex)
defineEnum(Enum_odeh11)       ## ::
                       ##   
                       ##    The values of data_id that can be used with dGeomTriMeshDataSet/dGeomTriMeshDataGet
defineEnum(Enum_odeh12)       ## ::
                       ##   
                       ##    The flags of the dTRIMESHDATA_USE_FLAGS data elements
defineEnum(Enum_odeh13)       ## ::
                       ##   
                       ##    Data preprocessing build request flags.
defineEnum(Enum_odeh14)       ## ::
                       ##   
                       ##    Data preprocessing extra values for dTRIDATAPREPROCESS_BUILD_FACE_ANGLES.
const
  headerode* = "/home/jose/src/OpenDynamicsEngine.nim/build/include/ode/ode.h"
  X86_64_SYSTEM* = 1
  dSA_MIN* = (0).dSpaceAxis
  dSA_X* = (dSA_MIN.dSpaceAxis).dSpaceAxis
  dSA_Y* = (dSA_X + 1).dSpaceAxis
  dSA_Z* = (dSA_Y + 1).dSpaceAxis
  dSA_MAX* = (dSA_Z + 1).dSpaceAxis
  dMD_MIN* = (0).dMotionDynamics
  dMD_LINEAR* = (dMD_MIN.dMotionDynamics).dMotionDynamics
  dMD_ANGULAR* = (dMD_LINEAR + 1).dMotionDynamics
  dMD_MAX* = (dMD_ANGULAR + 1).dMotionDynamics
  dDA_MIN* = (0).dDynamicsAxis
  dDA_L_MIN* = (dDA_MIN.dDynamicsAxis +
      typeof(dDA_MIN.dDynamicsAxis)(dMD_LINEAR.dDynamicsAxis *
      typeof(dDA_MIN.dDynamicsAxis)(dSA_MAX.dDynamicsAxis))).dDynamicsAxis
  dDA_LX* = (dDA_L_MIN.dDynamicsAxis +
      typeof(dDA_L_MIN.dDynamicsAxis)(dSA_X.dDynamicsAxis)).dDynamicsAxis
  dDA_LY* = (dDA_L_MIN.dDynamicsAxis +
      typeof(dDA_L_MIN.dDynamicsAxis)(dSA_Y.dDynamicsAxis)).dDynamicsAxis
  dDA_LZ* = (dDA_L_MIN.dDynamicsAxis +
      typeof(dDA_L_MIN.dDynamicsAxis)(dSA_Z.dDynamicsAxis)).dDynamicsAxis
  dDA_L_MAX* = (dDA_L_MIN.dDynamicsAxis +
      typeof(dDA_L_MIN.dDynamicsAxis)(dSA_MAX.dDynamicsAxis)).dDynamicsAxis
  dDA_A_MIN* = (dDA_MIN.dDynamicsAxis +
      typeof(dDA_MIN.dDynamicsAxis)(dMD_ANGULAR.dDynamicsAxis *
      typeof(dDA_MIN.dDynamicsAxis)(dSA_MAX.dDynamicsAxis))).dDynamicsAxis
  dDA_AX* = (dDA_A_MIN.dDynamicsAxis +
      typeof(dDA_A_MIN.dDynamicsAxis)(dSA_X.dDynamicsAxis)).dDynamicsAxis
  dDA_AY* = (dDA_A_MIN.dDynamicsAxis +
      typeof(dDA_A_MIN.dDynamicsAxis)(dSA_Y.dDynamicsAxis)).dDynamicsAxis
  dDA_AZ* = (dDA_A_MIN.dDynamicsAxis +
      typeof(dDA_A_MIN.dDynamicsAxis)(dSA_Z.dDynamicsAxis)).dDynamicsAxis
  dDA_A_MAX* = (dDA_A_MIN.dDynamicsAxis +
      typeof(dDA_A_MIN.dDynamicsAxis)(dSA_MAX.dDynamicsAxis)).dDynamicsAxis
  dDA_MAX* = (dDA_MIN.dDynamicsAxis +
      typeof(dDA_MIN.dDynamicsAxis)(dMD_MAX.dDynamicsAxis *
      typeof(dDA_MIN.dDynamicsAxis)(dSA_MAX.dDynamicsAxis))).dDynamicsAxis
  dV3E_MIN* = (0).dVec3Element
  dV3E_AXES_MIN* = (dV3E_MIN.dVec3Element).dVec3Element
  dV3E_X* = (dV3E_AXES_MIN.dVec3Element +
      typeof(dV3E_AXES_MIN.dVec3Element)(dSA_X.dVec3Element)).dVec3Element
  dV3E_Y* = (dV3E_AXES_MIN.dVec3Element +
      typeof(dV3E_AXES_MIN.dVec3Element)(dSA_Y.dVec3Element)).dVec3Element
  dV3E_Z* = (dV3E_AXES_MIN.dVec3Element +
      typeof(dV3E_AXES_MIN.dVec3Element)(dSA_Z.dVec3Element)).dVec3Element
  dV3E_AXES_MAX* = (dV3E_AXES_MIN.dVec3Element +
      typeof(dV3E_AXES_MIN.dVec3Element)(dSA_MAX.dVec3Element)).dVec3Element
  dV3E_PAD* = (dV3E_AXES_MAX.dVec3Element).dVec3Element
  dV3E_MAX* = (dV3E_PAD + 1).dVec3Element
  dV3E_AXES_COUNT* = (dV3E_AXES_MAX.dVec3Element -
      typeof(dV3E_AXES_MAX.dVec3Element)(dV3E_AXES_MIN.dVec3Element)).dVec3Element
  dV4E_MIN* = (0).dVec4Element
  dV4E_X* = (dV4E_MIN.dVec4Element +
      typeof(dV4E_MIN.dVec4Element)(dSA_X.dVec4Element)).dVec4Element
  dV4E_Y* = (dV4E_MIN.dVec4Element +
      typeof(dV4E_MIN.dVec4Element)(dSA_Y.dVec4Element)).dVec4Element
  dV4E_Z* = (dV4E_MIN.dVec4Element +
      typeof(dV4E_MIN.dVec4Element)(dSA_Z.dVec4Element)).dVec4Element
  dV4E_O* = (dV4E_MIN.dVec4Element +
      typeof(dV4E_MIN.dVec4Element)(dSA_MAX.dVec4Element)).dVec4Element
  dV4E_MAX* = (dV4E_O + 1).dVec4Element
  dM3E_MIN* = (0).dMat3Element
  dM3E_X_MIN* = (dM3E_MIN.dMat3Element +
      typeof(dM3E_MIN.dMat3Element)(dSA_X.dMat3Element *
      typeof(dM3E_MIN.dMat3Element)(dV3E_MAX.dMat3Element))).dMat3Element
  dM3E_X_AXES_MIN* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_AXES_MIN.dMat3Element)).dMat3Element
  dM3E_XX* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_X.dMat3Element)).dMat3Element
  dM3E_XY* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_Y.dMat3Element)).dMat3Element
  dM3E_XZ* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_Z.dMat3Element)).dMat3Element
  dM3E_X_AXES_MAX* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_AXES_MAX.dMat3Element)).dMat3Element
  dM3E_XPAD* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_PAD.dMat3Element)).dMat3Element
  dM3E_X_MAX* = (dM3E_X_MIN.dMat3Element +
      typeof(dM3E_X_MIN.dMat3Element)(dV3E_MAX.dMat3Element)).dMat3Element
  dM3E_Y_MIN* = (dM3E_MIN.dMat3Element +
      typeof(dM3E_MIN.dMat3Element)(dSA_Y.dMat3Element *
      typeof(dM3E_MIN.dMat3Element)(dV3E_MAX.dMat3Element))).dMat3Element
  dM3E_Y_AXES_MIN* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_AXES_MIN.dMat3Element)).dMat3Element
  dM3E_YX* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_X.dMat3Element)).dMat3Element
  dM3E_YY* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_Y.dMat3Element)).dMat3Element
  dM3E_YZ* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_Z.dMat3Element)).dMat3Element
  dM3E_Y_AXES_MAX* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_AXES_MAX.dMat3Element)).dMat3Element
  dM3E_YPAD* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_PAD.dMat3Element)).dMat3Element
  dM3E_Y_MAX* = (dM3E_Y_MIN.dMat3Element +
      typeof(dM3E_Y_MIN.dMat3Element)(dV3E_MAX.dMat3Element)).dMat3Element
  dM3E_Z_MIN* = (dM3E_MIN.dMat3Element +
      typeof(dM3E_MIN.dMat3Element)(dSA_Z.dMat3Element *
      typeof(dM3E_MIN.dMat3Element)(dV3E_MAX.dMat3Element))).dMat3Element
  dM3E_Z_AXES_MIN* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_AXES_MIN.dMat3Element)).dMat3Element
  dM3E_ZX* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_X.dMat3Element)).dMat3Element
  dM3E_ZY* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_Y.dMat3Element)).dMat3Element
  dM3E_ZZ* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_Z.dMat3Element)).dMat3Element
  dM3E_Z_AXES_MAX* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_AXES_MAX.dMat3Element)).dMat3Element
  dM3E_ZPAD* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_PAD.dMat3Element)).dMat3Element
  dM3E_Z_MAX* = (dM3E_Z_MIN.dMat3Element +
      typeof(dM3E_Z_MIN.dMat3Element)(dV3E_MAX.dMat3Element)).dMat3Element
  dM3E_MAX* = (dM3E_MIN.dMat3Element +
      typeof(dM3E_MIN.dMat3Element)(dSA_MAX.dMat3Element *
      typeof(dM3E_MIN.dMat3Element)(dV3E_MAX.dMat3Element))).dMat3Element
  dM4E_MIN* = (0).dMat4Element
  dM4E_X_MIN* = (dM4E_MIN.dMat4Element +
      typeof(dM4E_MIN.dMat4Element)(dV4E_X.dMat4Element *
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element))).dMat4Element
  dM4E_XX* = (dM4E_X_MIN.dMat4Element +
      typeof(dM4E_X_MIN.dMat4Element)(dV4E_X.dMat4Element)).dMat4Element
  dM4E_XY* = (dM4E_X_MIN.dMat4Element +
      typeof(dM4E_X_MIN.dMat4Element)(dV4E_Y.dMat4Element)).dMat4Element
  dM4E_XZ* = (dM4E_X_MIN.dMat4Element +
      typeof(dM4E_X_MIN.dMat4Element)(dV4E_Z.dMat4Element)).dMat4Element
  dM4E_XO* = (dM4E_X_MIN.dMat4Element +
      typeof(dM4E_X_MIN.dMat4Element)(dV4E_O.dMat4Element)).dMat4Element
  dM4E_X_MAX* = (dM4E_X_MIN.dMat4Element +
      typeof(dM4E_X_MIN.dMat4Element)(dV4E_MAX.dMat4Element)).dMat4Element
  dM4E_Y_MIN* = (dM4E_MIN.dMat4Element +
      typeof(dM4E_MIN.dMat4Element)(dV4E_Y.dMat4Element *
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element))).dMat4Element
  dM4E_YX* = (dM4E_Y_MIN.dMat4Element +
      typeof(dM4E_Y_MIN.dMat4Element)(dV4E_X.dMat4Element)).dMat4Element
  dM4E_YY* = (dM4E_Y_MIN.dMat4Element +
      typeof(dM4E_Y_MIN.dMat4Element)(dV4E_Y.dMat4Element)).dMat4Element
  dM4E_YZ* = (dM4E_Y_MIN.dMat4Element +
      typeof(dM4E_Y_MIN.dMat4Element)(dV4E_Z.dMat4Element)).dMat4Element
  dM4E_YO* = (dM4E_Y_MIN.dMat4Element +
      typeof(dM4E_Y_MIN.dMat4Element)(dV4E_O.dMat4Element)).dMat4Element
  dM4E_Y_MAX* = (dM4E_Y_MIN.dMat4Element +
      typeof(dM4E_Y_MIN.dMat4Element)(dV4E_MAX.dMat4Element)).dMat4Element
  dM4E_Z_MIN* = (dM4E_MIN.dMat4Element +
      typeof(dM4E_MIN.dMat4Element)(dV4E_Z.dMat4Element *
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element))).dMat4Element
  dM4E_ZX* = (dM4E_Z_MIN.dMat4Element +
      typeof(dM4E_Z_MIN.dMat4Element)(dV4E_X.dMat4Element)).dMat4Element
  dM4E_ZY* = (dM4E_Z_MIN.dMat4Element +
      typeof(dM4E_Z_MIN.dMat4Element)(dV4E_Y.dMat4Element)).dMat4Element
  dM4E_ZZ* = (dM4E_Z_MIN.dMat4Element +
      typeof(dM4E_Z_MIN.dMat4Element)(dV4E_Z.dMat4Element)).dMat4Element
  dM4E_ZO* = (dM4E_Z_MIN.dMat4Element +
      typeof(dM4E_Z_MIN.dMat4Element)(dV4E_O.dMat4Element)).dMat4Element
  dM4E_Z_MAX* = (dM4E_Z_MIN.dMat4Element +
      typeof(dM4E_Z_MIN.dMat4Element)(dV4E_MAX.dMat4Element)).dMat4Element
  dM4E_O_MIN* = (dM4E_MIN.dMat4Element +
      typeof(dM4E_MIN.dMat4Element)(dV4E_O.dMat4Element *
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element))).dMat4Element
  dM4E_OX* = (dM4E_O_MIN.dMat4Element +
      typeof(dM4E_O_MIN.dMat4Element)(dV4E_X.dMat4Element)).dMat4Element
  dM4E_OY* = (dM4E_O_MIN.dMat4Element +
      typeof(dM4E_O_MIN.dMat4Element)(dV4E_Y.dMat4Element)).dMat4Element
  dM4E_OZ* = (dM4E_O_MIN.dMat4Element +
      typeof(dM4E_O_MIN.dMat4Element)(dV4E_Z.dMat4Element)).dMat4Element
  dM4E_OO* = (dM4E_O_MIN.dMat4Element +
      typeof(dM4E_O_MIN.dMat4Element)(dV4E_O.dMat4Element)).dMat4Element
  dM4E_O_MAX* = (dM4E_O_MIN.dMat4Element +
      typeof(dM4E_O_MIN.dMat4Element)(dV4E_MAX.dMat4Element)).dMat4Element
  dM4E_MAX* = (dM4E_MIN.dMat4Element +
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element *
      typeof(dM4E_MIN.dMat4Element)(dV4E_MAX.dMat4Element))).dMat4Element
  dQUE_MIN* = (0).dQuatElement
  dQUE_R* = (dQUE_MIN.dQuatElement).dQuatElement
  dQUE_AXIS_MIN* = (dQUE_R + 1).dQuatElement
  dQUE_I* = (dQUE_AXIS_MIN.dQuatElement +
      typeof(dQUE_AXIS_MIN.dQuatElement)(dSA_X.dQuatElement)).dQuatElement
  dQUE_J* = (dQUE_AXIS_MIN.dQuatElement +
      typeof(dQUE_AXIS_MIN.dQuatElement)(dSA_Y.dQuatElement)).dQuatElement
  dQUE_K* = (dQUE_AXIS_MIN.dQuatElement +
      typeof(dQUE_AXIS_MIN.dQuatElement)(dSA_Z.dQuatElement)).dQuatElement
  dQUE_AXIS_MAX* = (dQUE_AXIS_MIN.dQuatElement +
      typeof(dQUE_AXIS_MIN.dQuatElement)(dSA_MAX.dQuatElement)).dQuatElement
  dQUE_MAX* = (dQUE_AXIS_MAX.dQuatElement).dQuatElement
  d_ERR_UNKNOWN* = (0).Enum_odeh1 ## ::
                               ##    unknown error
  d_ERR_IASSERT* = (d_ERR_UNKNOWN + 1).Enum_odeh1 ## ::
                                             ##    internal assertion failed
  d_ERR_UASSERT* = (d_ERR_IASSERT + 1).Enum_odeh1 ## ::
                                             ##    user assertion failed
  d_ERR_LCP* = (d_ERR_UASSERT + 1).Enum_odeh1 ## ::
                                         ##    user assertion failed
  dJointTypeNone* = (0).dJointType ## ::
                                ##    or "unknown"
  dJointTypeBall* = (dJointTypeNone + 1).dJointType ## ::
                                               ##    or "unknown"
  dJointTypeHinge* = (dJointTypeBall + 1).dJointType
  dJointTypeSlider* = (dJointTypeHinge + 1).dJointType
  dJointTypeContact* = (dJointTypeSlider + 1).dJointType
  dJointTypeUniversal* = (dJointTypeContact + 1).dJointType
  dJointTypeHinge2* = (dJointTypeUniversal + 1).dJointType
  dJointTypeFixed* = (dJointTypeHinge2 + 1).dJointType
  dJointTypeNull* = (dJointTypeFixed + 1).dJointType
  dJointTypeAMotor* = (dJointTypeNull + 1).dJointType
  dJointTypeLMotor* = (dJointTypeAMotor + 1).dJointType
  dJointTypePlane2D* = (dJointTypeLMotor + 1).dJointType
  dJointTypePR* = (dJointTypePlane2D + 1).dJointType
  dJointTypePU* = (dJointTypePR + 1).dJointType
  dJointTypePiston* = (dJointTypePU + 1).dJointType
  dJointTypeDBall* = (dJointTypePiston + 1).dJointType
  dJointTypeDHinge* = (dJointTypeDBall + 1).dJointType
  dJointTypeTransmission* = (dJointTypeDHinge + 1).dJointType
  dParamLoStop* = (0).Enum_odeh2 ## ::
                              ##    parameters for limits and motors
  dParamHiStop* = (dParamLoStop + 1).Enum_odeh2
  dParamVel* = (dParamHiStop + 1).Enum_odeh2
  dParamLoVel* = (dParamVel + 1).Enum_odeh2
  dParamHiVel* = (dParamLoVel + 1).Enum_odeh2
  dParamFMax* = (dParamHiVel + 1).Enum_odeh2
  dParamFudgeFactor* = (dParamFMax + 1).Enum_odeh2
  dParamBounce* = (dParamFudgeFactor + 1).Enum_odeh2
  dParamCFM* = (dParamBounce + 1).Enum_odeh2
  dParamStopERP* = (dParamCFM + 1).Enum_odeh2
  dParamStopCFM* = (dParamStopERP + 1).Enum_odeh2 ## ::
                                             ##    parameters for suspension
  dParamSuspensionERP* = (dParamStopCFM + 1).Enum_odeh2 ## ::
                                                   ##    parameters for suspension
  dParamSuspensionCFM* = (dParamSuspensionERP + 1).Enum_odeh2
  dParamERP* = (dParamSuspensionCFM + 1).Enum_odeh2
  dParamsInGroup* = (dParamERP + 1).Enum_odeh2 ## ::
                                          ##    < Number of parameter in a group
  dParamGroup1* = (0x00000000).Enum_odeh2 ## ::
                                       ##    parameters for limits and motors
  dParamLoStop1* = (0x00000000).Enum_odeh2 ## ::
                                        ##    parameters for limits and motors
  dParamHiStop1* = (dParamLoStop1 + 1).Enum_odeh2
  dParamVel1* = (dParamHiStop1 + 1).Enum_odeh2
  dParamLoVel1* = (dParamVel1 + 1).Enum_odeh2
  dParamHiVel1* = (dParamLoVel1 + 1).Enum_odeh2
  dParamFMax1* = (dParamHiVel1 + 1).Enum_odeh2
  dParamFudgeFactor1* = (dParamFMax1 + 1).Enum_odeh2
  dParamBounce1* = (dParamFudgeFactor1 + 1).Enum_odeh2
  dParamCFM1* = (dParamBounce1 + 1).Enum_odeh2
  dParamStopERP1* = (dParamCFM1 + 1).Enum_odeh2
  dParamStopCFM1* = (dParamStopERP1 + 1).Enum_odeh2 ## ::
                                               ##    parameters for suspension
  dParamSuspensionERP1* = (dParamStopCFM1 + 1).Enum_odeh2 ## ::
                                                     ##    parameters for suspension
  dParamSuspensionCFM1* = (dParamSuspensionERP1 + 1).Enum_odeh2
  dParamERP1* = (dParamSuspensionCFM1 + 1).Enum_odeh2
  dParamGroup2* = (0x00000100).Enum_odeh2 ## ::
                                       ##    parameters for limits and motors
  dParamLoStop2* = (0x00000100).Enum_odeh2 ## ::
                                        ##    parameters for limits and motors
  dParamHiStop2* = (dParamLoStop2 + 1).Enum_odeh2
  dParamVel2* = (dParamHiStop2 + 1).Enum_odeh2
  dParamLoVel2* = (dParamVel2 + 1).Enum_odeh2
  dParamHiVel2* = (dParamLoVel2 + 1).Enum_odeh2
  dParamFMax2* = (dParamHiVel2 + 1).Enum_odeh2
  dParamFudgeFactor2* = (dParamFMax2 + 1).Enum_odeh2
  dParamBounce2* = (dParamFudgeFactor2 + 1).Enum_odeh2
  dParamCFM2* = (dParamBounce2 + 1).Enum_odeh2
  dParamStopERP2* = (dParamCFM2 + 1).Enum_odeh2
  dParamStopCFM2* = (dParamStopERP2 + 1).Enum_odeh2 ## ::
                                               ##    parameters for suspension
  dParamSuspensionERP2* = (dParamStopCFM2 + 1).Enum_odeh2 ## ::
                                                     ##    parameters for suspension
  dParamSuspensionCFM2* = (dParamSuspensionERP2 + 1).Enum_odeh2
  dParamERP2* = (dParamSuspensionCFM2 + 1).Enum_odeh2
  dParamGroup3* = (0x00000200).Enum_odeh2 ## ::
                                       ##    parameters for limits and motors
  dParamLoStop3* = (0x00000200).Enum_odeh2 ## ::
                                        ##    parameters for limits and motors
  dParamHiStop3* = (dParamLoStop3 + 1).Enum_odeh2
  dParamVel3* = (dParamHiStop3 + 1).Enum_odeh2
  dParamLoVel3* = (dParamVel3 + 1).Enum_odeh2
  dParamHiVel3* = (dParamLoVel3 + 1).Enum_odeh2
  dParamFMax3* = (dParamHiVel3 + 1).Enum_odeh2
  dParamFudgeFactor3* = (dParamFMax3 + 1).Enum_odeh2
  dParamBounce3* = (dParamFudgeFactor3 + 1).Enum_odeh2
  dParamCFM3* = (dParamBounce3 + 1).Enum_odeh2
  dParamStopERP3* = (dParamCFM3 + 1).Enum_odeh2
  dParamStopCFM3* = (dParamStopERP3 + 1).Enum_odeh2 ## ::
                                               ##    parameters for suspension
  dParamSuspensionERP3* = (dParamStopCFM3 + 1).Enum_odeh2 ## ::
                                                     ##    parameters for suspension
  dParamSuspensionCFM3* = (dParamSuspensionERP3 + 1).Enum_odeh2
  dParamERP3* = (dParamSuspensionCFM3 + 1).Enum_odeh2
  dParamGroup* = (0x00000100).Enum_odeh2 ## ::
                                      ##    add a multiple of this constant to the basic parameter numbers to get
                                      ##    the parameters for the second, third etc axes.
  dAMotorUser* = (0).Enum_odeh3
  dAMotorEuler* = (1).Enum_odeh3
  dTransmissionParallelAxes* = (0).Enum_odeh4
  dTransmissionIntersectingAxes* = (1).Enum_odeh4
  dTransmissionChainDrive* = (2).Enum_odeh4
  dInitFlagManualThreadCleanup* = (0x00000001).dInitODEFlags ## ::
                                                          ##   @< Thread local data is to be cleared explicitly on @c dCleanupODEAllDataForThread function call
  dAllocateFlagBasicData* = (0).dAllocateODEDataFlags ## ::
                                                   ##   @< Allocate basic data required for library to operate
  dAllocateFlagCollisionData* = (0x00000001).dAllocateODEDataFlags ## ::
                                                                ##   @< Allocate data for collision detection
  dAllocateMaskAll* = ((not 0)).dAllocateODEDataFlags ## ::
                                                  ##   @< Allocate all the possible data that is currently defined or will be defined in the future.
  dContactMu2* = (0x00000001).Enum_odeh5 ## ::
                                      ##   < Use axis dependent friction
  dContactAxisDep* = (0x00000001).Enum_odeh5 ## ::
                                          ##   < Same as above
  dContactFDir1* = (0x00000002).Enum_odeh5 ## ::
                                        ##   < Use FDir for the first friction value
  dContactBounce* = (0x00000004).Enum_odeh5 ## ::
                                         ##   < Restore collision energy anti-parallel to the normal
  dContactSoftERP* = (0x00000008).Enum_odeh5 ## ::
                                          ##   < Don't use global erp for penetration reduction
  dContactSoftCFM* = (0x00000010).Enum_odeh5 ## ::
                                          ##   < Don't use global cfm for penetration constraint
  dContactMotion1* = (0x00000020).Enum_odeh5 ## ::
                                          ##   < Use a non-zero target velocity for the constraint
  dContactMotion2* = (0x00000040).Enum_odeh5 ## ::
                                          ##   < Use a non-zero target velocity for the constraint
  dContactMotionN* = (0x00000080).Enum_odeh5
  dContactSlip1* = (0x00000100).Enum_odeh5 ## ::
                                        ##   < Force-dependent slip.
  dContactSlip2* = (0x00000200).Enum_odeh5 ## ::
                                        ##   < Force-dependent slip.
  dContactRolling* = (0x00000400).Enum_odeh5 ## ::
                                          ##   < Rolling/Angular friction
  dContactApprox0* = (0x00000000).Enum_odeh5
  dContactApprox1_1* = (0x00001000).Enum_odeh5
  dContactApprox1_2* = (0x00002000).Enum_odeh5
  dContactApprox1_N* = (0x00004000).Enum_odeh5 ## ::
                                            ##   < For rolling friction
  dContactApprox1* = (0x00007000).Enum_odeh5 ## ::
                                          ##   < For rolling friction
  dTHREADING_THREAD_COUNT_UNLIMITED* = 0'u
  dWORLDSTEP_THREADCOUNT_UNLIMITED* = dTHREADING_THREAD_COUNT_UNLIMITED
  dWORLDSTEP_RESERVEFACTOR_DEFAULT* = 1.2'f64
  dWORLDSTEP_RESERVESIZE_DEFAULT* = 65536'u
  dWORLDQUICKSTEP_ITERATION_COUNT_DEFAULT* = 20'u
  dWORLDQUICKSTEP_ITERATION_PREMATURE_EXIT_DELTA_DEFAULT* = 1
  dWORLDQUICKSTEP_MAXIMAL_EXTRA_ITERATION_COUNT_FACTOR_DEFAULT* = 1.0'f64
  dWORLDQUICKSTEP_EXTRA_ITERATION_REQUIREMENT_DELTA_DEFAULT* = 1
  dSAP_AXES_XYZ* = ((0) or typeof((0))((1 shl typeof((0))(2))) or
      typeof((0))((2 shl typeof((0))(4))))
  dSAP_AXES_XZY* = ((0) or typeof((0))((2 shl typeof((0))(2))) or
      typeof((0))((1 shl typeof((0))(4))))
  dSAP_AXES_YXZ* = ((1) or typeof((1))((0 shl typeof((1))(2))) or
      typeof((1))((2 shl typeof((1))(4))))
  dSAP_AXES_YZX* = ((1) or typeof((1))((2 shl typeof((1))(2))) or
      typeof((1))((0 shl typeof((1))(4))))
  dSAP_AXES_ZXY* = ((2) or typeof((2))((0 shl typeof((2))(2))) or
      typeof((2))((1 shl typeof((2))(4))))
  dSAP_AXES_ZYX* = ((2) or typeof((2))((1 shl typeof((2))(2))) or
      typeof((2))((0 shl typeof((2))(4))))
  dGeomCommonControlClass* = (0).Enum_odeh6
  dGeomColliderControlClass* = (1).Enum_odeh6
  dGeomCommonAnyControlCode* = (0).Enum_odeh7
  dGeomColliderSetMergeSphereContactsControlCode* = (1).Enum_odeh7
  dGeomColliderGetMergeSphereContactsControlCode* = (2).Enum_odeh7
  dGeomColliderMergeContactsValue_Default* = (0).Enum_odeh8 ## ::
                                                         ##    Used with Set... to restore default value
  dGeomColliderMergeContactsValue_None* = (1).Enum_odeh8 ## ::
                                                      ##    Used with Set... to restore default value
  dGeomColliderMergeContactsValue_Normals* = (2).Enum_odeh8
  dGeomColliderMergeContactsValue_Full* = (3).Enum_odeh8
  CONTACTS_UNIMPORTANT* = 0x80000000
  dMaxUserClasses* = (4).Enum_odeh9
  dSphereClass* = (0).Enum_odeh10
  dBoxClass* = (dSphereClass + 1).Enum_odeh10
  dCapsuleClass* = (dBoxClass + 1).Enum_odeh10
  dCylinderClass* = (dCapsuleClass + 1).Enum_odeh10
  dPlaneClass* = (dCylinderClass + 1).Enum_odeh10
  dRayClass* = (dPlaneClass + 1).Enum_odeh10
  dConvexClass* = (dRayClass + 1).Enum_odeh10
  dGeomTransformClass* = (dConvexClass + 1).Enum_odeh10
  dTriMeshClass* = (dGeomTransformClass + 1).Enum_odeh10
  dHeightfieldClass* = (dTriMeshClass + 1).Enum_odeh10
  dFirstSpaceClass* = (dHeightfieldClass + 1).Enum_odeh10
  dSimpleSpaceClass* = (dFirstSpaceClass.Enum_odeh10).Enum_odeh10
  dHashSpaceClass* = (dSimpleSpaceClass + 1).Enum_odeh10
  dSweepAndPruneSpaceClass* = (dHashSpaceClass + 1).Enum_odeh10 ## ::
                                                           ##    SAP
  dQuadTreeSpaceClass* = (dSweepAndPruneSpaceClass + 1).Enum_odeh10 ## ::
                                                               ##    SAP
  dLastSpaceClass* = (dQuadTreeSpaceClass.Enum_odeh10).Enum_odeh10
  dFirstUserClass* = (dLastSpaceClass + 1).Enum_odeh10
  dLastUserClass* = (dFirstUserClass.Enum_odeh10 +
      typeof(dFirstUserClass.Enum_odeh10)(dMaxUserClasses.Enum_odeh10) -
      typeof(dFirstUserClass.Enum_odeh10)(1)).Enum_odeh10
  dGeomNumClasses* = (dLastUserClass + 1).Enum_odeh10
  dCCylinderClass* = dCapsuleClass
  dMTV_MIN* = (0).dMeshTriangleVertex
  dMTV_FIRST* = (dMTV_MIN.dMeshTriangleVertex).dMeshTriangleVertex
  dMTV_SECOND* = (dMTV_FIRST + 1).dMeshTriangleVertex
  dMTV_THIRD* = (dMTV_SECOND + 1).dMeshTriangleVertex
  dMTV_MAX* = (dMTV_THIRD + 1).dMeshTriangleVertex
  dTRIMESHDATA_MIN* = (0).Enum_odeh11
  dTRIMESHDATA_FACE_NORMALS* = (dTRIMESHDATA_MIN.Enum_odeh11).Enum_odeh11
  dTRIMESHDATA_USE_FLAGS* = (dTRIMESHDATA_FACE_NORMALS + 1).Enum_odeh11
  dTRIMESHDATA_MAX* = (dTRIMESHDATA_USE_FLAGS + 1).Enum_odeh11
  TRIMESH_FACE_NORMALS* = (dTRIMESHDATA_FACE_NORMALS.Enum_odeh11).Enum_odeh11 ## ::
                                                                           ##    Included for backward compatibility -- please use the corrected name above. Sorry.
  dMESHDATAUSE_EDGE1* = (0x00000001).Enum_odeh12
  dMESHDATAUSE_EDGE2* = (0x00000002).Enum_odeh12
  dMESHDATAUSE_EDGE3* = (0x00000004).Enum_odeh12
  dMESHDATAUSE_VERTEX1* = (0x00000008).Enum_odeh12
  dMESHDATAUSE_VERTEX2* = (0x00000010).Enum_odeh12
  dMESHDATAUSE_VERTEX3* = (0x00000020).Enum_odeh12
  dTRIDATAPREPROCESS_BUILD_MIN* = (0).Enum_odeh13
  dTRIDATAPREPROCESS_BUILD_CONCAVE_EDGES* = (
      dTRIDATAPREPROCESS_BUILD_MIN.Enum_odeh13).Enum_odeh13 ## ::
                                                           ##    Used to optimize OPCODE trimesh-capsule collisions; allocates 1 byte per triangle; no extra data associated
  dTRIDATAPREPROCESS_BUILD_FACE_ANGLES* = (
      dTRIDATAPREPROCESS_BUILD_CONCAVE_EDGES + 1).Enum_odeh13 ## ::
                                                           ##    Used to aid trimesh-convex collisions; memory requirements depend on extra data
  dTRIDATAPREPROCESS_BUILD_MAX* = (dTRIDATAPREPROCESS_BUILD_FACE_ANGLES + 1).Enum_odeh13
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_MIN* = (0).Enum_odeh14
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_BYTE_POSITIVE* = (
      dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_MIN.Enum_odeh14).Enum_odeh14 ## ::
                                                                       ##    Build angles for convex edges only and store as bytes; allocates 3 bytes per triangle; stores angles (0..180] in 1/254 fractions leaving two values for the flat and all the concaves
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_BYTE_ALL* = (
      dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_BYTE_POSITIVE + 1).Enum_odeh14 ## ::
                                                                       ##    Build angles for all the edges and store in bytes; allocates 3 bytes per triangle; stores angles [-180..0) and (0..180] in 1/127 fractions plus a value for the flat angle
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_WORD_ALL* = (
      dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_BYTE_ALL + 1).Enum_odeh14 ## ::
                                                                  ##    Build angles for all the edges and store in words; allocates 6 bytes per triangle; stores angles [-180..0) and (0..180] in 1/32767 fractions plus a value for the flat angle
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_MAX* = (
      dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_WORD_ALL + 1).Enum_odeh14
  dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_DEFAULT* = (
      dTRIDATAPREPROCESS_FACE_ANGLES_EXTRA_BYTE_POSITIVE.Enum_odeh14).Enum_odeh14 ## ::
                                                                                 ##    The default value assumed if the extra data is not provided
{.pragma: impodeHdr, header: headerode.}
{.pragma: impodeDyn, dynlib: dynlibFile.}
type
  dint64* {.importc, impodeHdr.} = clong
  duint64* {.importc, impodeHdr.} = culong
  dint32* {.importc, impodeHdr.} = cint
  duint32* {.importc, impodeHdr.} = cuint
  dint16* {.importc, impodeHdr.} = cshort
  duint16* {.importc, impodeHdr.} = cushort
  dint8* {.importc, impodeHdr.} = cschar
  duint8* {.importc, impodeHdr.} = cuchar
  dintptr* {.importc, impodeHdr.} = dint64
  duintptr* {.importc, impodeHdr.} = duint64
  ddiffint* {.importc, impodeHdr.} = dint64
  dsizeint* {.importc, impodeHdr.} = duint64 ## ::
                                        ##    Define the dInfinity macro
  dMessageFunction* {.importc, impodeHdr.} = proc (errnum: cint; msg: cstring;
      ap: va_list) {.cdecl.}
  dReal* {.importc, impodeHdr.} = cdouble
  dTriIndex* {.importc, impodeHdr.} = duint32
  dVector3* {.importc, impodeHdr.} = array[dV3E_MAX, dReal] ## ::
                                                      ##    these types are mainly just used in headers
  dVector4* {.importc, impodeHdr.} = array[dV4E_MAX, dReal]
  dMatrix3* {.importc, impodeHdr.} = array[dM3E_MAX, dReal]
  dMatrix4* {.importc, impodeHdr.} = array[dM4E_MAX, dReal]
  dMatrix6* {.importc, impodeHdr.} = array[(dMD_MAX * typeof(dMD_MAX)(dV3E_MAX)) *
      typeof(dMD_MAX)((dMD_MAX * typeof(dMD_MAX)(dSA_MAX))), dReal]
  dQuaternion* {.importc, impodeHdr.} = array[dQUE_MAX, dReal]
  dxWorld* {.incompleteStruct, impodeHdr, importc: "struct dxWorld".} = object
  dxSpace* {.incompleteStruct, impodeHdr, importc: "struct dxSpace".} = object
  dxBody* {.incompleteStruct, impodeHdr, importc: "struct dxBody".} = object
  dxGeom* {.incompleteStruct, impodeHdr, importc: "struct dxGeom".} = object
  dxJoint* {.incompleteStruct, impodeHdr, importc: "struct dxJoint".} = object
  dxJointGroup* {.incompleteStruct, impodeHdr, importc: "struct dxJointGroup".} = object
  dWorldID* {.importc, impodeHdr.} = ptr dxWorld
  dSpaceID* {.importc, impodeHdr.} = ptr dxSpace
  dBodyID* {.importc, impodeHdr.} = ptr dxBody
  dGeomID* {.importc, impodeHdr.} = ptr dxGeom
  dJointID* {.importc, impodeHdr.} = ptr dxJoint
  dJointGroupID* {.importc, impodeHdr.} = ptr dxJointGroup
  dJointFeedback* {.bycopy, impodeHdr, importc: "struct dJointFeedback".} = object
    f1*: dVector3              ## ::
                ##    force applied to body 1
    t1*: dVector3              ## ::
                ##    torque applied to body 1
    f2*: dVector3              ## ::
                ##    force applied to body 2
    t2*: dVector3              ## ::
                ##    torque applied to body 2
  
  dSurfaceParameters* {.bycopy, impodeHdr, importc: "struct dSurfaceParameters".} = object
    mode*: cint                ## ::
              ##    must always be defined
    mu*: dReal
    mu2*: dReal                ## ::
              ##    only defined if the corresponding flag is set in mode
    rho*: dReal                ## ::
              ##   < Rolling friction
    rho2*: dReal               ## ::
               ##   < Rolling friction
    rhoN*: dReal               ## ::
               ##   < Spinning friction
    bounce*: dReal             ## ::
                 ##   < Coefficient of restitution
    bounce_vel*: dReal         ## ::
                     ##   < Bouncing threshold
    soft_erp*: dReal           ## ::
                   ##   < Bouncing threshold
    soft_cfm*: dReal
    motion1*: dReal
    motion2*: dReal
    motionN*: dReal
    slip1*: dReal
    slip2*: dReal

  dContactGeom* {.bycopy, impodeHdr, importc: "struct dContactGeom".} = object ## ::
                                                                        ##   
                                                                        ##    @brief Describe the contact point between two geoms.
                                                                        ##   
                                                                        ##    If two bodies touch, or if a body touches a static feature in its 
                                                                        ##    environment, the contact is represented by one or more "contact 
                                                                        ##    points", described by dContactGeom.
                                                                        ##   
                                                                        ##    The convention is that if body 1 is moved along the normal vector by 
                                                                        ##    a distance depth (or equivalently if body 2 is moved the same distance 
                                                                        ##    in the opposite direction) then the contact depth will be reduced to 
                                                                        ##    zero. This means that the normal vector points "in" to body 1.
                                                                        ##   
                                                                        ##    @ingroup collide
    pos*: dVector3             ## ::
                 ##   < contact position
    normal*: dVector3          ## ::
                    ##   < normal vector
    depth*: dReal              ## ::
                ##   < penetration depth
    g1*: dGeomID               ## ::
               ##   < the colliding geoms
    g2*: dGeomID               ## ::
               ##   < the colliding geoms
    side1*: cint               ## ::
               ##   < (to be documented)
    side2*: cint               ## ::
               ##   < (to be documented)
  
  dContact* {.bycopy, impodeHdr, importc: "struct dContact".} = object
    surface*: dSurfaceParameters
    geom*: dContactGeom
    fdir1*: dVector3

  dAllocFunction* {.importc, impodeHdr.} = proc (size: dsizeint): pointer {.cdecl.}
  dReallocFunction* {.importc, impodeHdr.} = proc (`ptr`: pointer; oldsize: dsizeint;
      newsize: dsizeint): pointer {.cdecl.}
  dFreeFunction* {.importc, impodeHdr.} = proc (`ptr`: pointer; size: dsizeint) {.cdecl.}
  dxThreadingImplementation* {.incompleteStruct, impodeHdr,
                              importc: "struct dxThreadingImplementation".} = object
  dThreadingImplementationID* {.importc, impodeHdr.} = ptr dxThreadingImplementation
  dmutexindex_t* {.importc, impodeHdr.} = cuint
  dxMutexGroup* {.incompleteStruct, impodeHdr, importc: "struct dxMutexGroup".} = object
  dMutexGroupID* {.importc, impodeHdr.} = ptr dxMutexGroup
  dMutexGroupAllocFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; Mutex_count: dmutexindex_t;
      Mutex_names_ptr: ptr cstring): dMutexGroupID {.cdecl.}
  dMutexGroupFreeFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; mutex_group: dMutexGroupID) {.cdecl.}
  dMutexGroupMutexLockFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; mutex_group: dMutexGroupID;
      mutex_index: dmutexindex_t) {.cdecl.}
  dMutexGroupMutexUnlockFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; mutex_group: dMutexGroupID;
      mutex_index: dmutexindex_t) {.cdecl.}
  dxCallReleasee* {.incompleteStruct, impodeHdr, importc: "struct dxCallReleasee".} = object
  dCallReleaseeID* {.importc, impodeHdr.} = ptr dxCallReleasee
  dxCallWait* {.incompleteStruct, impodeHdr, importc: "struct dxCallWait".} = object
  dCallWaitID* {.importc, impodeHdr.} = ptr dxCallWait
  ddependencycount_t* {.importc, impodeHdr.} = dsizeint
  ddependencychange_t* {.importc, impodeHdr.} = ddiffint
  dcallindex_t* {.importc, impodeHdr.} = dsizeint
  dThreadedCallFunction* {.importc, impodeHdr.} = proc (call_context: pointer;
      instance_index: dcallindex_t; this_releasee: dCallReleaseeID): cint {.cdecl.}
  dxThreadedWaitTime* {.bycopy, impodeHdr, importc: "struct dxThreadedWaitTime".} = object
    wait_sec*: time_t
    wait_nsec*: culong

  dThreadedWaitTime* {.importc, impodeHdr.} = dxThreadedWaitTime
  dThreadedCallWaitAllocFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID): dCallWaitID {.cdecl.}
  dThreadedCallWaitResetFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; call_wait: dCallWaitID) {.cdecl.}
  dThreadedCallWaitFreeFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; call_wait: dCallWaitID) {.cdecl.}
  dThreadedCallPostFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; out_summary_fault: ptr cint;
      out_post_releasee: ptr dCallReleaseeID;
      dependencies_count: ddependencycount_t; dependent_releasee: dCallReleaseeID;
      call_wait: dCallWaitID; call_func: ptr dThreadedCallFunction;
      call_context: pointer; instance_index: dcallindex_t; call_name: cstring) {.cdecl.}
  dThreadedCallDependenciesCountAlterFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; target_releasee: dCallReleaseeID;
      dependencies_count_change: ddependencychange_t) {.cdecl.}
  dThreadedCallWaitFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID; out_wait_status: ptr cint;
      call_wait: dCallWaitID; timeout_time_ptr: ptr dThreadedWaitTime;
      wait_name: cstring) {.cdecl.}
  dThreadingImplThreadCountRetrieveFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID): cuint {.cdecl.}
  dThreadingImplResourcesForCallsPreallocateFunction* {.importc, impodeHdr.} = proc (
      impl: dThreadingImplementationID;
      max_simultaneous_calls_estimate: ddependencycount_t): cint {.cdecl.}
  dxThreadingFunctionsInfo* {.bycopy, impodeHdr,
                             importc: "struct dxThreadingFunctionsInfo".} = object ## ::
                                                                               ##   
                                                                               ##    @brief An interface structure with function pointers to be provided by threading implementation.
    struct_size*: cuint
    alloc_mutex_group*: ptr dMutexGroupAllocFunction
    free_mutex_group*: ptr dMutexGroupFreeFunction
    lock_group_mutex*: ptr dMutexGroupMutexLockFunction
    unlock_group_mutex*: ptr dMutexGroupMutexUnlockFunction
    alloc_call_wait*: ptr dThreadedCallWaitAllocFunction
    reset_call_wait*: ptr dThreadedCallWaitResetFunction
    free_call_wait*: ptr dThreadedCallWaitFreeFunction
    post_call*: ptr dThreadedCallPostFunction
    alter_call_dependencies_count*: ptr dThreadedCallDependenciesCountAlterFunction
    wait_call*: ptr dThreadedCallWaitFunction
    retrieve_thread_count*: ptr dThreadingImplThreadCountRetrieveFunction
    preallocate_resources_for_calls*: ptr dThreadingImplResourcesForCallsPreallocateFunction

  dThreadingFunctionsInfo* {.importc, impodeHdr.} = dxThreadingFunctionsInfo ## ::
                                                                        ##   
                                                                        ##    @brief An interface structure with function pointers to be provided by threading implementation.
  dxCooperative* {.incompleteStruct, impodeHdr, importc: "struct dxCooperative".} = object
  dxResourceRequirements* {.incompleteStruct, impodeHdr,
                           importc: "struct dxResourceRequirements".} = object
  dxResourceContainer* {.incompleteStruct, impodeHdr,
                        importc: "struct dxResourceContainer".} = object
  dCooperativeID* {.importc, impodeHdr.} = ptr dxCooperative ## ::
                                                       ##   
                                                       ##    @brief A container for cooperative algorithms shared context
                                                       ##   
                                                       ##    The Cooperative is a container for cooperative algorithms shared context.
                                                       ##    At present it contains threading object (either a real one or a defaulted 
                                                       ##    self-threading).
                                                       ##   
                                                       ##    Cooperative use in functions performing computations must be serialized. That is,
                                                       ##    functions referring to a single instance of Cooperative object must not be called in
                                                       ##    parallel.
  dResourceRequirementsID* {.importc, impodeHdr.} = ptr dxResourceRequirements ## ::
                                                                         ##   
                                                                         ##    @brief A container for resource requirements information
                                                                         ##   
                                                                         ##    The ResourceRequirements object is a container for descriptive information
                                                                         ##    regarding what resources (memory, synchronization objects, etc.) need to be
                                                                         ##    allocated for particular computations. The object can be used for accumulating 
                                                                         ##    resource requirement maxima over multiple functions and then allocating resources
                                                                         ##    that would suffice for any of those function calls.
                                                                         ##   
                                                                         ##    ResourceRequirements objects maintain relations to Cooperative objects since
                                                                         ##    amounts of resources that could be required can depend on characteristics of 
                                                                         ##    shared context, e.g. on maximal number of threads in the threading object.
                                                                         ##   
                                                                         ##    @ingroup coop
                                                                         ##    @see dCooperativeID
                                                                         ##    @see dResourceContainerID
  dResourceContainerID* {.importc, impodeHdr.} = ptr dxResourceContainer ## ::
                                                                   ##   
                                                                   ##    @brief A container for algorithm allocated resources
                                                                   ##    
                                                                   ##    The ResourceContainer object can contain resources allocated according to information
                                                                   ##    in a ResourceRequirements. The resources inherit link to the threading object 
                                                                   ##    from the requirements they are allocated according to.
                                                                   ##   
                                                                   ##    @ingroup coop
                                                                   ##    @see dResourceRequirementsID
                                                                   ##    @see dCooperativeID
  dStopwatch* {.bycopy, impodeHdr, importc: "struct dStopwatch".} = object
    time*: cdouble             ## ::
                 ##    total clock count
    cc*: array[2, culong]       ## ::
                       ##    clock count since last start'
  
  dMass* {.bycopy, impodeHdr, importc: "struct dMass".} = object
    mass*: dReal
    c*: dVector3
    I*: dMatrix3

  dWorldStepReserveInfo* {.bycopy, importc, impodeHdr.} = object ## ::
                                                           ##   
                                                           ##    @struct dWorldStepReserveInfo
                                                           ##    @brief Memory reservation policy descriptor structure for world stepping functions.
                                                           ##   
                                                           ##    @c struct_size should be assigned the size of the structure.
                                                           ##   
                                                           ##    @c reserve_factor is a quotient that is multiplied by required memory size
                                                           ##     to allocate extra reserve whenever reallocation is needed.
                                                           ##   
                                                           ##    @c reserve_minimum is a minimum size that is checked against whenever reallocation 
                                                           ##    is needed to allocate expected working memory minimum at once without extra 
                                                           ##    reallocations as number of bodies/joints grows.
                                                           ##   
                                                           ##    @ingroup world
                                                           ##    @see dWorldSetStepMemoryReservationPolicy
    struct_size*: cuint
    reserve_factor*: cfloat    ## ::
                          ##    Use float as precision does not matter here
    reserve_minimum*: cuint    ## ::
                          ##    Use float as precision does not matter here
  
  dWorldStepMemoryFunctionsInfo* {.bycopy, importc, impodeHdr.} = object ## ::
                                                                   ##   
                                                                   ##    @struct dWorldStepMemoryFunctionsInfo
                                                                   ##    @brief World stepping memory manager descriptor structure
                                                                   ##   
                                                                   ##    This structure is intended to define the functions of memory manager to be used
                                                                   ##    with world stepping functions.
                                                                   ##   
                                                                   ##    @c struct_size should be assigned the size of the structure
                                                                   ##   
                                                                   ##    @c alloc_block is a function to allocate memory block of given size.
                                                                   ##   
                                                                   ##    @c shrink_block is a function to shrink existing memory block to a smaller size.
                                                                   ##    It must preserve the contents of block head while shrinking. The new block size
                                                                   ##    is guaranteed to be always less than the existing one.
                                                                   ##   
                                                                   ##    @c free_block is a function to delete existing memory block.
                                                                   ##   
                                                                   ##    @ingroup init
                                                                   ##    @see dWorldSetStepMemoryManager
    struct_size*: cuint
    alloc_block*: proc (block_size: dsizeint): pointer {.cdecl.}
    shrink_block*: proc (block_pointer: pointer; block_current_size: dsizeint;
                       block_smaller_size: dsizeint): pointer {.cdecl.}
    free_block*: proc (block_pointer: pointer; block_current_size: dsizeint) {.cdecl.}

  dWorldQuickStepIterationCount_DynamicAdjustmentStatistics* {.bycopy, importc,
      impodeHdr.} = object ## ::
                        ##   
                        ##    @brief Statistics structure to accumulate QuickStep iteration couunt dynamic adjustment data.
                        ##    @ingroup world
                        ##   
                        ##    @see @fn dWorldAttachQuickStepDynamicIterationStatisticsSink
    struct_size*: cuint        ## ::
                      ##   < to be initialized with the structure size
    iteration_count*: duint32  ## ::
                            ##   < number of iterations executed
    premature_exits*: duint32  ## ::
                            ##   < number of times solution took fewer than the regular iteration count
    prolonged_execs*: duint32  ## ::
                            ##   < number of times solution took more  than the regular iteration count
    full_extra_execs*: duint32 ## ::
                             ##   < number of times the assigned exit criteria were not achieved even after all extra iterations allowed
  
  dNearCallback* {.importc, impodeHdr.} = proc (data: pointer; o1: dGeomID; o2: dGeomID) {.
      cdecl.}
  dxTriMeshData* {.incompleteStruct, impodeHdr, importc: "struct dxTriMeshData".} = object
  dTriMeshDataID* {.importc, impodeHdr.} = ptr dxTriMeshData
  dTriCallback* {.importc, impodeHdr.} = proc (TriMesh: dGeomID; RefObject: dGeomID;
      TriangleIndex: cint): cint {.cdecl.}
  dTriArrayCallback* {.importc, impodeHdr.} = proc (TriMesh: dGeomID;
      RefObject: dGeomID; TriIndices: ptr cint; TriCount: cint) {.cdecl.}
  dTriRayCallback* {.importc, impodeHdr.} = proc (TriMesh: dGeomID; Ray: dGeomID;
      TriangleIndex: cint; u: dReal; v: dReal): cint {.cdecl.}
  dTriTriMergeCallback* {.importc, impodeHdr.} = proc (TriMesh: dGeomID;
      FirstTriangleIndex: cint; SecondTriangleIndex: cint): cint {.cdecl.}
  dxHeightfieldData* {.incompleteStruct, impodeHdr,
                      importc: "struct dxHeightfieldData".} = object
  dHeightfieldDataID* {.importc, impodeHdr.} = ptr dxHeightfieldData
  dHeightfieldGetHeight* {.importc, impodeHdr.} = proc (p_user_data: pointer; x: cint;
      z: cint): dReal {.cdecl.}
  dGetAABBFn* {.importc, impodeHdr.} = proc (a1: dGeomID; aabb: array[6, dReal]) {.cdecl.}
  dColliderFn* {.importc, impodeHdr.} = proc (o1: dGeomID; o2: dGeomID; flags: cint;
      contact: ptr dContactGeom; skip: cint): cint {.cdecl.}
  dGetColliderFnFn* {.importc, impodeHdr.} = proc (num: cint): ptr dColliderFn {.cdecl.}
  dGeomDtorFn* {.importc, impodeHdr.} = proc (o: dGeomID) {.cdecl.}
  dAABBTestFn* {.importc, impodeHdr.} = proc (o1: dGeomID; o2: dGeomID;
      aabb: array[6, dReal]): cint {.cdecl.}
  dGeomClass* {.bycopy, impodeHdr, importc: "struct dGeomClass".} = object
    bytes*: cint
    collider*: ptr dGetColliderFnFn
    aabb*: ptr dGetAABBFn
    aabb_test*: ptr dAABBTestFn
    dtor*: ptr dGeomDtorFn

  dxThreadingThreadPool* {.incompleteStruct, impodeHdr,
                          importc: "struct dxThreadingThreadPool".} = object
  dThreadingThreadPoolID* {.importc, impodeHdr.} = ptr dxThreadingThreadPool
  dThreadReadyToServeCallback* {.importc, impodeHdr.} = proc (
      callback_context: pointer) {.cdecl.}
proc dSetErrorHandler*(fn: ptr dMessageFunction) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    set a new error, debug or warning handler. if fn is 0, the default handlers
  ##    are used.
proc dSetDebugHandler*(fn: ptr dMessageFunction) {.importc, cdecl, impodeDyn.}
proc dSetMessageHandler*(fn: ptr dMessageFunction) {.importc, cdecl, impodeDyn.}
proc dGetErrorHandler*(): ptr dMessageFunction {.importc, cdecl, impodeDyn.}
  ## ::
  ##    return the current error, debug or warning handler. if the return value is
  ##    0, the default handlers are in place.
proc dGetDebugHandler*(): ptr dMessageFunction {.importc, cdecl, impodeDyn.}
proc dGetMessageHandler*(): ptr dMessageFunction {.importc, cdecl, impodeDyn.}
proc dError*(num: cint; msg: cstring) {.importc, cdecl, impodeDyn, varargs.}
  ## ::
  ##    generate a fatal error, debug trap or a message.
proc dDebug*(num: cint; msg: cstring) {.importc, cdecl, impodeDyn, varargs.}
proc dMessage*(num: cint; msg: cstring) {.importc, cdecl, impodeDyn, varargs.}
proc dGeomMoved*(a1: dGeomID) {.importc, cdecl, impodeDyn.}
proc dGeomGetBodyNext*(a1: dGeomID): dGeomID {.importc, cdecl, impodeDyn.}
proc dGetConfiguration*(): cstring {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    dGetConfiguration returns the specific ODE build configuration as
  ##    a string of tokens. The string can be parsed in a similar way to
  ##    the OpenGL extension mechanism, the naming convention should be
  ##    familiar too. The following extensions are reported:
  ##   
  ##    ODE
  ##    ODE_single_precision
  ##    ODE_double_precision
  ##    ODE_EXT_no_debug
  ##    ODE_EXT_trimesh
  ##    ODE_EXT_opcode
  ##    ODE_EXT_gimpact
  ##    ODE_OPC_16bit_indices
  ##    ODE_OPC_new_collider
  ##    ODE_EXT_libccd
  ##    ODE_CCD_IMPL_internal
  ##    ODE_CCD_COLL_box_cyl
  ##    ODE_CCD_COLL_cyl_cyl
  ##    ODE_CCD_COLL_cap_cyl
  ##    ODE_CCD_COLL_box_conv
  ##    ODE_CCD_COLL_cap_conv
  ##    ODE_CCD_COLL_conv_cyl
  ##    ODE_CCD_COLL_conv_sph
  ##    ODE_CCD_COLL_conv_conv
  ##    ODE_EXT_mt_collisions
  ##    ODE_EXT_threading
  ##    ODE_THR_builtin_impl
proc dCheckConfiguration*(token: cstring): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Helper to check for a token in the ODE configuration string.
  ##    Caution, this function is case sensitive.
  ##   
  ##    @param token A configuration token, see dGetConfiguration for details
  ##   
  ##    @return 1 if exact token is present, 0 if not present
proc dInitODE*() {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Initializes ODE library.
  ##   
  ##    @c dInitODE is obsolete. @c dInitODE2 is to be used for library initialization.
  ##   
  ##    A call to @c dInitODE is equal to the following initialization sequence
  ##    @code
  ##        dInitODE2(0);
  ##        dAllocateODEDataForThread(dAllocateMaskAll);
  ##    @endcode
  ##   
  ##    @see dInitODE2
  ##    @see dAllocateODEDataForThread
  ##    @ingroup init
proc dInitODE2*(uiInitFlags: cuint): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Initializes ODE library.
  ##    @param uiInitFlags Initialization options bitmask
  ##    @return A nonzero if initialization succeeded and zero otherwise.
  ##   
  ##    This function must be called to initialize ODE library before first use. If 
  ##    initialization succeeds the function may not be called again until library is 
  ##    closed with a call to @c dCloseODE.
  ##   
  ##    The @a uiInitFlags parameter specifies initialization options to be used. These
  ##    can be combination of zero or more @c dInitODEFlags flags.
  ##   
  ##    @note
  ##    If @c dInitFlagManualThreadCleanup flag is used for initialization, 
  ##    @c dSpaceSetManualCleanup must be called to set manual cleanup mode for every
  ##    space object right after creation. Failure to do so may lead to resource leaks.
  ##   
  ##    @see dInitODEFlags
  ##    @see dCloseODE
  ##    @see dSpaceSetManualCleanup
  ##    @ingroup init
proc dAllocateODEDataForThread*(uiAllocateFlags: cuint): cint {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Allocate thread local data to allow the thread calling ODE.
  ##    @param uiAllocateFlags Allocation options bitmask.
  ##    @return A nonzero if allocation succeeded and zero otherwise.
  ##    
  ##    The function is required to be called for every thread that is going to use
  ##    ODE. This function allocates the data that is required for accessing ODE from 
  ##    current thread along with optional data required for particular ODE subsystems.
  ##   
  ##    @a uiAllocateFlags parameter can contain zero or more flags from @c dAllocateODEDataFlags
  ##    enumerated type. Multiple calls with different allocation flags are allowed.
  ##    The flags that are already allocated are ignored in subsequent calls. If zero
  ##    is passed as the parameter, it means to only allocate the set of most important
  ##    data the library can not operate without.
  ##   
  ##    If the function returns failure status it means that none of the requested 
  ##    data has been allocated. The client may retry allocation attempt with the same 
  ##    flags when more system resources are available.
  ##   
  ##    @see dAllocateODEDataFlags
  ##    @see dCleanupODEAllDataForThread
  ##    @ingroup init
proc dCleanupODEAllDataForThread*() {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Free thread local data that was allocated for current thread.
  ##   
  ##    If library was initialized with @c dInitFlagManualThreadCleanup flag the function 
  ##    is required to be called on exit of every thread that was calling @c dAllocateODEDataForThread.
  ##    Failure to call @c dCleanupODEAllDataForThread may result in some resources remaining 
  ##    not freed until program exit. The function may also be called when ODE is still 
  ##    being used to release resources allocated for all the current subsystems and 
  ##    possibly proceed with data pre-allocation for other subsystems.
  ##   
  ##    The function can safely be called several times in a row. The function can be 
  ##    called without prior invocation of @c dAllocateODEDataForThread. The function 
  ##    may not be called before ODE is initialized with @c dInitODE2 or after library 
  ##    has been closed with @c dCloseODE. A call to @c dCloseODE implicitly releases 
  ##    all the thread local resources that might be allocated for all the threads that 
  ##    were using ODE.
  ##   
  ##    If library was initialized without @c dInitFlagManualThreadCleanup flag 
  ##    @c dCleanupODEAllDataForThread must not be called.
  ##   
  ##    @see dAllocateODEDataForThread
  ##    @see dInitODE2
  ##    @see dCloseODE
  ##    @ingroup init
proc dCloseODE*() {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Close ODE after it is not needed any more.
  ##   
  ##    The function is required to be called when program does not need ODE features any more.
  ##    The call to @c dCloseODE releases all the resources allocated for library
  ##    including all the thread local data that might be allocated for all the threads
  ##    that were using ODE.
  ##   
  ##    @c dCloseODE is a paired function for @c dInitODE2 and must only be called
  ##    after successful library initialization.
  ##   
  ##    @note Important!
  ##    Make sure that all the threads that were using ODE have already terminated 
  ##    before calling @c dCloseODE. In particular it is not allowed to call
  ##    @c dCleanupODEAllDataForThread after @c dCloseODE.
  ##   
  ##    @see dInitODE2
  ##    @see dCleanupODEAllDataForThread
  ##    @ingroup init
proc dSetAllocHandler*(fn: ptr dAllocFunction) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    set new memory management functions. if fn is 0, the default handlers are
  ##    used.
proc dSetReallocHandler*(fn: ptr dReallocFunction) {.importc, cdecl, impodeDyn.}
proc dSetFreeHandler*(fn: ptr dFreeFunction) {.importc, cdecl, impodeDyn.}
proc dGetAllocHandler*(): ptr dAllocFunction {.importc, cdecl, impodeDyn.}
  ## ::
  ##    get current memory management functions
proc dGetReallocHandler*(): ptr dReallocFunction {.importc, cdecl, impodeDyn.}
proc dGetFreeHandler*(): ptr dFreeFunction {.importc, cdecl, impodeDyn.}
proc dAlloc*(size: dsizeint): pointer {.importc, cdecl, impodeDyn.}
  ## ::
  ##    allocate and free memory.
proc dRealloc*(`ptr`: pointer; oldsize: dsizeint; newsize: dsizeint): pointer {.importc,
    cdecl, impodeDyn.}
proc dFree*(`ptr`: pointer; size: dsizeint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
proc dSafeNormalize3*(a: dVector3): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   	These macros are not used any more inside of ODE
  ##     They are kept for backward compatibility with external code that
  ##     might still be using them.
  ##   
  ##   
  ##    normalize 3x1 and 4x1 vectors (i.e. scale them to unit length)
  ##   
  ##    For DLL export
proc dSafeNormalize4*(a: dVector4): cint {.importc, cdecl, impodeDyn.}
proc dNormalize3*(a: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    Potentially asserts on zero vec
proc dNormalize4*(a: dVector4) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    Potentially asserts on zero vec
  ##   
  ##    given a unit length "normal" vector n, generate vectors p and q vectors
  ##    that are an orthonormal basis for the plane space perpendicular to n.
  ##    i.e. this makes p,q such that n,p,q are all perpendicular to each other.
  ##    q will equal n x p. if n is not unit length then p will be unit length but
  ##    q wont be.
proc dPlaneSpace*(n: dVector3; p: dVector3; q: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    Makes sure the matrix is a proper rotation, returns a boolean status
proc dOrthogonalizeR*(m: dMatrix3): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##    Makes sure the matrix is a proper rotation, returns a boolean status
proc dSetZero*(a: ptr dReal; n: cint) {.importc, cdecl, impodeDyn.}
proc dSetValue*(a: ptr dReal; n: cint; value: dReal) {.importc, cdecl, impodeDyn.}
proc dDot*(a: ptr dReal; b: ptr dReal; n: cint): dReal {.importc, cdecl, impodeDyn.}
proc dMultiply0*(A: ptr dReal; B: ptr dReal; C: ptr dReal; p: cint; q: cint; r: cint) {.importc,
    cdecl, impodeDyn.}
proc dMultiply1*(A: ptr dReal; B: ptr dReal; C: ptr dReal; p: cint; q: cint; r: cint) {.importc,
    cdecl, impodeDyn.}
proc dMultiply2*(A: ptr dReal; B: ptr dReal; C: ptr dReal; p: cint; q: cint; r: cint) {.importc,
    cdecl, impodeDyn.}
proc dFactorCholesky*(A: ptr dReal; n: cint): cint {.importc, cdecl, impodeDyn.}
proc dSolveCholesky*(L: ptr dReal; b: ptr dReal; n: cint) {.importc, cdecl, impodeDyn.}
proc dInvertPDMatrix*(A: ptr dReal; Ainv: ptr dReal; n: cint): cint {.importc, cdecl,
    impodeDyn.}
proc dIsPositiveDefinite*(A: ptr dReal; n: cint): cint {.importc, cdecl, impodeDyn.}
proc dFactorLDLT*(A: ptr dReal; d: ptr dReal; n: cint; nskip: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    factorize a matrix A into LDL', where L is lower triangular with ones on
  ##    the diagonal, and D is diagonal.
  ##    A is an nn matrix stored by rows, with a leading dimension of n rounded
  ##    up to 4. L is written into the strict lower triangle of A (the ones are not
  ##    written) and the reciprocal of the diagonal elements of D are written into
  ##    d.
proc dSolveL1*(L: ptr dReal; b: ptr dReal; n: cint; nskip: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    solve Lx=b, where L is nn lower triangular with ones on the diagonal,
  ##    and x,b are n1. b is overwritten with x.
  ##    the leading dimension of L is nskip'.
proc dSolveL1T*(L: ptr dReal; b: ptr dReal; n: cint; nskip: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    solve L'x=b, where L is nn lower triangular with ones on the diagonal,
  ##    and x,b are n1. b is overwritten with x.
  ##    the leading dimension of L is nskip'.
proc dScaleVector*(a: ptr dReal; d: ptr dReal; n: cint) {.importc, cdecl, impodeDyn.}
proc dVectorScale*(a: ptr dReal; d: ptr dReal; n: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    The function is an alias for @c dScaleVector.
  ##    It has been deprecated because of a wrong naming schema used.
proc dSolveLDLT*(L: ptr dReal; d: ptr dReal; b: ptr dReal; n: cint; nskip: cint) {.importc,
    cdecl, impodeDyn.}
proc dLDLTAddTL*(L: ptr dReal; d: ptr dReal; a: ptr dReal; n: cint; nskip: cint) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    given an LDL' factorization of an nn matrix A, return the updated
  ##    factorization L2D2L2' of A plus the following "top left" matrix:
  ##   
  ##       [ b a' ]     <-- b is a[0]
  ##       [ a 0  ]     <-- a is a[1..n-1]
  ##   
  ##      - L has size nn, its leading dimension is nskip. L is lower triangular
  ##        with ones on the diagonal. only the lower triangle of L is referenced.
  ##      - d has size n. d contains the reciprocal diagonal elements of D.
  ##      - a has size n.
  ##    the result is written into L, except that the left column of L and d[0]
  ##    are not actually modified. see ldltaddTL.m for further comments.
proc dLDLTRemove*(A: ptr ptr dReal; p: ptr cint; L: ptr dReal; d: ptr dReal; n1: cint; n2: cint;
                 r: cint; nskip: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    given an LDL' factorization of a permuted matrix A, produce a new
  ##    factorization for row and column r' removed.
  ##      - A has size n1n1, its leading dimension in nskip. A is symmetric and
  ##        positive definite. only the lower triangle of A is referenced.
  ##        A itself may actually be an array of row pointers.
  ##      - L has size n2n2, its leading dimension in nskip. L is lower triangular
  ##        with ones on the diagonal. only the lower triangle of L is referenced.
  ##      - d has size n2. d contains the reciprocal diagonal elements of D.
  ##      - p is a permutation vector. it contains n2 indexes into A. each index
  ##        must be in the range 0..n1-1.
  ##      - r is the row/column of L to remove.
  ##    the new L will be written within the old L, i.e. will have the same leading
  ##    dimension. the last row and column of L, and the last element of d, are
  ##    undefined on exit.
  ##   
  ##    a fast O(n^2) algorithm is used. see ldltremove.m for further comments.
proc dRemoveRowCol*(A: ptr dReal; n: cint; nskip: cint; r: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    given an nn matrix A (with leading dimension nskip), remove the r'th row
  ##    and column by moving elements. the new matrix will have the same leading
  ##    dimension. the last row and column of A are untouched on exit.
proc dCooperativeCreate*(functionInfo: ptr dThreadingFunctionsInfo;
                        threadingImpl: dThreadingImplementationID): dCooperativeID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Creates a Cooperative object related to the specified threading.
  ##   
  ##    NULL's are allowed for the threading. In this case the default (global) self-threading
  ##    object will be used.
  ##   
  ##    Use @c dCooperativeDestroy to destroy the object. The Cooperative object must exist 
  ##    until after all the objects referencing it are destroyed.
  ##   
  ##    @param functionInfo The threading functions to use
  ##    @param threadingImpl The threading implementation object to use
  ##    @returns The Cooperative object instance or NULL if allocation fails.
  ##    @ingroup coop
  ##    @see dCooperativeDestroy
proc dCooperativeDestroy*(cooperative: dCooperativeID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroys Cooperative object.
  ##   
  ##    The Cooperative object can only be destroyed after all the objects referencing it.
  ##   
  ##    @param cooperative A Cooperative object to be deleted (NULL is allowed)
  ##    @ingroup coop
  ##    @see dCooperativeCreate
proc dResourceRequirementsCreate*(cooperative: dCooperativeID): dResourceRequirementsID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Creates a ResourceRequirements object related to a Cooperative.
  ##   
  ##    The object is purely descriptive and does not contain any resources by itself.
  ##    The actual resources are allocated by means of ResourceContainer object.
  ##   
  ##    The object is created with empty requirements. It can be then used to accumulate 
  ##    requirements for one or more function calls and can be cloned or merged with others.
  ##    The actual requirements information is added to the object by computation related
  ##    functions.
  ##   
  ##    Use @c dResourceRequirementsDestroy to delete the object when it is no longer needed.
  ##   
  ##    @param cooperative A Cooperative object to be used
  ##    @returns The ResourceRequirements object instance or NULL if allocation fails
  ##    @ingroup coop
  ##    @see dResourceRequirementsDestroy
  ##    @see dResourceRequirementsClone
  ##    @see dResourceRequirementsMergeIn
  ##    @see dCooperativeCreate
  ##    @see dResourceContainerAcquire
proc dResourceRequirementsDestroy*(requirements: dResourceRequirementsID) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroys ResourceRequirements object.
  ##   
  ##    The ResourceRequirements object can be destroyed at any time with no regards 
  ##    to other objects' lifetime.
  ##   
  ##    @param requirements A ResourceRequirements object to be deleted (NULL is allowed)
  ##    @ingroup coop
  ##    @see dResourceRequirementsCreate
proc dResourceRequirementsClone*(requirements: dResourceRequirementsID): dResourceRequirementsID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Clones ResourceRequirements object.
  ##   
  ##    The function creates a copy of the ResourceRequirements object with all the 
  ##    contents and the relation to Cooperative matching. The object passed in 
  ##    the parameter is not changed.
  ##   
  ##    The object created with the function must later be destroyed with @c dResourceRequirementsDestroy.
  ##   
  ##    @param requirements A ResourceRequirements object to be cloned
  ##    @returns A handle to the new object or NULL if allocation fails
  ##    @ingroup coop
  ##    @see dResourceRequirementsCreate
  ##    @see dResourceRequirementsDestroy
  ##    @see dResourceRequirementsMergeIn
proc dResourceRequirementsMergeIn*(summaryRequirements: dResourceRequirementsID;
                                  extraRequirements: dResourceRequirementsID) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Merges one ResourceRequirements object into another ResourceRequirements object.
  ##   
  ##    The function updates @a summaryRequirements requirements to be also sufficient
  ##    for the purposes @a extraRequirements could be used for. The @a extraRequirements
  ##    object is not changed. The both objects should normally have had been created 
  ##    with the same Cooperative object.
  ##   
  ##    @param summaryRequirements A ResourceRequirements object to be changed
  ##    @param extraRequirements A ResourceRequirements the requirements to be taken from
  ##    @ingroup coop
  ##    @see dResourceRequirementsCreate
  ##    @see dResourceRequirementsDestroy
  ##    @see dResourceRequirementsClone
proc dResourceContainerAcquire*(requirements: dResourceRequirementsID): dResourceContainerID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Allocates resources as specified in ResourceRequirements object.
  ##   
  ##    The ResourceContainer object can be used in cooperative computation algorithms.
  ##   
  ##    The same @a requirements object can be passed to many resource allocations 
  ##    (with or without modifications) and can be deleted immediately, without waiting
  ##    for the ResourceContainer object destruction.
  ##   
  ##    Use @c dResourceContainerDestroy to delete the object and release the resources 
  ##    when they are no longer needed.
  ##   
  ##    @param requirements The ResourceRequirements object to allocate resources according to
  ##    @returns A ResourceContainer object instance with the resources allocated or NULL if allocation fails
  ##    @ingroup coop
  ##    @see dResourceContainerDestroy
  ##    @see dResourceRequirementsCreate
proc dResourceContainerDestroy*(resources: dResourceContainerID) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroys ResourceContainer object and releases resources allocated in it.
  ##   
  ##    @param resources A ResourceContainer object to be deleted (NULL is allowed)
  ##    @ingroup coop
  ##    @see dResourceContainerAcquire
proc dEstimateCooperativelyFactorLDLTResourceRequirements*(
    requirements: dResourceRequirementsID; maximalAllowedThreadCount: cuint;
    maximalRowCount: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    Threading support header file.
  ##    Copyright (C) 2011-2020 Oleh Derevenko. All rights reserved.
  ##    e-mail: odar@eleks.com (change all "a" to "e")
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##      ODE threading support interfaces	
  ##   
  ##   
  ##    @defgroup matrix_coop Matrix Cooperative Algorithms
  ##   
  ##    Cooperative algorithms operating on matrices and vectors.
  ##   
  ##    @ingroup coop
  ##   
  ##   
  ##    @brief Estimates resource requirements for a @c dCooperativelyFactorLDLT call
  ##   
  ##    The function updates the contents of @a requirements to also suffice for calling
  ##    @c dCooperativelyFactorLDLT with the given parameters. 
  ##    
  ##    Note: The requirements that could have already been in the @a requirements parameter
  ##    are never decreased.
  ##    
  ##    @param requirements The ResourceRequirements object to update
  ##    @param maximalAllowedThreadCount Maximal value of allowedThreadCount parameter that is going to be used
  ##    @param maximalRowCount Maximal value of rowCount parameter that is going to be used
  ##    @ingroup matrix_coop
  ##    @see dCooperativelyFactorLDLT
  ##    @see dResourceRequirementsCreate
proc dCooperativelyFactorLDLT*(resources: dResourceContainerID;
                              allowedThreadCount: cuint; A: ptr dReal; d: ptr dReal;
                              rowCount: cuint; rowSkip: cuint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Cooperatively factorizes a matrix A' into LDL'
  ##   
  ##    The function factorizes a matrix A' into LDL', where L' is lower triangular with ones on
  ##    the diagonal, and D' is diagonal.
  ##    @a A is a rowCountrowCount matrix stored by rows, with a leading dimension of @a rowCount rounded
  ##    up at least to 4 elements. L; is written into the strict lower triangle of @a A 
  ##    (the ones are not written) and the reciprocal of the diagonal elements of D' are written into @a d.
  ##   
  ##    The @a resources must have had been allocated from a ResourceRequirements object 
  ##    estimated in @c dEstimateCooperativelyFactorLDLTResourceRequirements.
  ##    
  ##    The operation is performed cooperatively by up to @a allowedThreadCount threads
  ##    from thread pool available in @a resources. The threading must must not be simultaneously
  ##    used (via other @c dResourceContainerID instances) in other calls that employ its features.
  ##   
  ##    @param resources The resources allocated for the function
  ##    @param allowedThreadCount Maximum thread count to use (the actual thread count could be less, depending on other parameters)
  ##    @param A The A' matrix
  ##    @param d The d' vector
  ##    @param rowCount The row count in @a A and @a d
  ##    @param rowskip The actual number of elements to be added to skip to next row in @a A
  ##    @ingroup matrix_coop
  ##    @see dEstimateCooperativelyFactorLDLTResourceRequirements
  ##    @see dResourceContainerAcquire
  ##    @see dCooperativelySolveLDLT
proc dEstimateCooperativelySolveLDLTResourceRequirements*(
    requirements: dResourceRequirementsID; maximalAllowedThreadCount: cuint;
    maximalRowCount: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Estimates resource requirements for a @c dCooperativelySolveLDLT call
  ##   
  ##    The function updates the contents of @a requirements to also suffice for calling
  ##    @c dCooperativelySolveLDLT with the given parameters. 
  ##    
  ##    Note: The requirements that could have already been in the @a requirements parameter
  ##    are never decreased.
  ##    
  ##    @param requirements The ResourceRequirements object to update
  ##    @param maximalAllowedThreadCount Maximal value of allowedThreadCount parameter that is going to be used
  ##    @param maximalRowCount Maximal value of rowCount parameter that is going to be used
  ##    @ingroup matrix_coop
  ##    @see dCooperativelySolveLDLT
  ##    @see dResourceRequirementsCreate
proc dCooperativelySolveLDLT*(resources: dResourceContainerID;
                             allowedThreadCount: cuint; L: ptr dReal; d: ptr dReal;
                             b: ptr dReal; rowCount: cuint; rowSkip: cuint) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Cooperatively solves LDL'x=b
  ##    
  ##    Given L', a rowCountrowCount lower triangular matrix with ones on the diagonal,
  ##    and d', a rowCount1 vector of the reciprocal diagonal elements of a rowCountrowCount matrix
  ##    D, the function solves LDL'x=b where x' and b' are rowCount1. 
  ##    The leading dimension of @a L is @a rowSkip. The resulting vector x' overwrites @a b.
  ##   
  ##    The @a resources must have had been allocated from a ResourceRequirements object 
  ##    estimated in @c dEstimateCooperativelySolveLDLTResourceRequirements.
  ##    
  ##    The operation is performed cooperatively by up to @a allowedThreadCount threads
  ##    from thread pool available in @a resources. The threading must must not be simultaneously
  ##    used (via other @c dResourceContainerID instances) in other calls that employ its features.
  ##   
  ##    @param resources The resources allocated for the function
  ##    @param allowedThreadCount Maximum thread count to use (the actual thread count could be less, depending on other parameters)
  ##    @param L The L' matrix
  ##    @param d The d' vector
  ##    @param b The b' vector; also the result is stored here
  ##    @param rowCount The row count in @a L, @a d and @a b
  ##    @param rowskip The actual number of elements to be added to skip to next row in @a L
  ##    @ingroup matrix_coop
  ##    @see dEstimateCooperativelySolveLDLTResourceRequirements
  ##    @see dResourceContainerAcquire
  ##    @see dCooperativelyFactorLDLT
proc dEstimateCooperativelySolveL1StraightResourceRequirements*(
    requirements: dResourceRequirementsID; maximalAllowedThreadCount: cuint;
    maximalRowCount: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Estimates resource requirements for a @c dCooperativelySolveL1Straight call
  ##   
  ##    The function updates the contents of @a requirements to also suffice for calling
  ##    @c dCooperativelySolveL1Straight with the given parameters. 
  ##    
  ##    Note: The requirements that could have already been in the @a requirements parameter
  ##    are never decreased.
  ##    
  ##    @param requirements The ResourceRequirements object to update
  ##    @param maximalAllowedThreadCount Maximal value of allowedThreadCount parameter that is going to be used
  ##    @param maximalRowCount Maximal value of rowCount parameter that is going to be used
  ##    @ingroup matrix_coop
  ##    @see dCooperativelySolveL1Straight
  ##    @see dResourceRequirementsCreate
proc dCooperativelySolveL1Straight*(resources: dResourceContainerID;
                                   allowedThreadCount: cuint; L: ptr dReal;
                                   b: ptr dReal; rowCount: cuint; rowSkip: cuint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Cooperatively solves Lx=b
  ##    
  ##    The function solves Lx=b, where L' is rowCountrowCount lower triangular with ones on the diagonal,
  ##    and x', b' are rowCount1. The leading dimension of @a L is @a rowSkip.
  ##    @a b is overwritten with x'.
  ##   
  ##    The @a resources must have had been allocated from a ResourceRequirements object 
  ##    estimated in @c dEstimateCooperativelySolveL1StraightResourceRequirements.
  ##    
  ##    The operation is performed cooperatively by up to @a allowedThreadCount threads
  ##    from thread pool available in @a resources. The threading must must not be simultaneously
  ##    used (via other @c dResourceContainerID instances) in other calls that employ its features.
  ##   
  ##    @param resources The resources allocated for the function
  ##    @param allowedThreadCount Maximum thread count to use (the actual thread count could be less, depending on other parameters)
  ##    @param L The L' matrix
  ##    @param b The b' vector; also the result is stored here
  ##    @param rowCount The row count in @a L and @a b
  ##    @param rowskip The actual number of elements to be added to skip to next row in @a L
  ##    @ingroup matrix_coop
  ##    @see dEstimateCooperativelySolveL1StraightResourceRequirements
  ##    @see dResourceContainerAcquire
  ##    @see dCooperativelyFactorLDLT
proc dEstimateCooperativelySolveL1TransposedResourceRequirements*(
    requirements: dResourceRequirementsID; maximalAllowedThreadCount: cuint;
    maximalRowCount: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Estimates resource requirements for a @c dCooperativelySolveL1Transposed call
  ##   
  ##    The function updates the contents of @a requirements to also suffice for calling
  ##    @c dCooperativelySolveL1Transposed with the given parameters. 
  ##    
  ##    Note: The requirements that could have already been in the @a requirements parameter
  ##    are never decreased.
  ##    
  ##    @param requirements The ResourceRequirements object to update
  ##    @param maximalAllowedThreadCount Maximal value of allowedThreadCount parameter that is going to be used
  ##    @param maximalRowCount Maximal value of rowCount parameter that is going to be used
  ##    @ingroup matrix_coop
  ##    @see dCooperativelySolveL1Transposed
  ##    @see dResourceRequirementsCreate
proc dCooperativelySolveL1Transposed*(resources: dResourceContainerID;
                                     allowedThreadCount: cuint; L: ptr dReal;
                                     b: ptr dReal; rowCount: cuint; rowSkip: cuint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Cooperatively solves L'x=b
  ##   
  ##    The function solves L'x=b, where L' is rowCountrowCount lower triangular with ones on the diagonal,
  ##    and x', b are rowCount1. The leading dimension of @a L is @a rowSkip.
  ##    @a b is overwritten with x'.
  ##   
  ##    The @a resources must have had been allocated from a ResourceRequirements object 
  ##    estimated in @c dEstimateCooperativelySolveL1TransposedResourceRequirements.
  ##    
  ##    The operation is performed cooperatively by up to @a allowedThreadCount threads
  ##    from thread pool available in @a resources. The threading must must not be simultaneously
  ##    used (via other @c dResourceContainerID instances) in other calls that employ its features.
  ##   
  ##    @param resources The resources allocated for the function
  ##    @param allowedThreadCount Maximum thread count to use (the actual thread count could be less, depending on other parameters)
  ##    @param L The L' matrix
  ##    @param b The b' vector; also the result is stored here
  ##    @param rowCount The row count in @a L and @a b
  ##    @param rowskip The actual number of elements to be added to skip to next row in @a L
  ##    @ingroup matrix_coop
  ##    @see dEstimateCooperativelySolveL1TransposedResourceRequirements
  ##    @see dResourceContainerAcquire
  ##    @see dCooperativelyFactorLDLT
proc dEstimateCooperativelyScaleVectorResourceRequirements*(
    requirements: dResourceRequirementsID; maximalAllowedThreadCount: cuint;
    maximalElementCount: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Estimates resource requirements for a @c dCooperativelyScaleVector call
  ##   
  ##    The function updates the contents of @a requirements to also suffice for calling
  ##    @c dCooperativelyScaleVector with the given parameters. 
  ##    
  ##    Note: The requirements that could have already been in the @a requirements parameter
  ##    are never decreased.
  ##    
  ##    @param requirements The ResourceRequirements object to update
  ##    @param maximalAllowedThreadCount Maximal value of allowedThreadCount parameter that is going to be used
  ##    @param maximalElementCount Maximal value of elementCount parameter that is going to be used
  ##    @ingroup matrix_coop
  ##    @see dCooperativelyScaleVector
  ##    @see dResourceRequirementsCreate
proc dCooperativelyScaleVector*(resources: dResourceContainerID;
                               allowedThreadCount: cuint; dataVector: ptr dReal;
                               scaleVector: ptr dReal; elementCount: cuint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Multiplies elements of one vector by corresponding element of another one
  ##    
  ##    In matlab syntax, the operation performed is: dataVector(1:elementCount) = dataVector(1:elementCount) . scaleVector(1:elementCount) 
  ##   
  ##    The @a resources must have had been allocated from a ResourceRequirements object 
  ##    estimated in @c dEstimateCooperativelyScaleVectorResourceRequirements.
  ##    
  ##    The operation is performed cooperatively by up to @a allowedThreadCount threads
  ##    from thread pool available in @a resources. The threading must must not be simultaneously
  ##    used (via other @c dResourceContainerID instances) in other calls that employ its features.
  ##   
  ##    @param resources The resources allocated for the function
  ##    @param allowedThreadCount Maximum thread count to use (the actual thread count could be less, depending on other parameters)
  ##    @param dataVector The vector to be scaled in place
  ##    @param scaleVector The scale vector
  ##    @param elementCount The number of elements in @a dataVector and @a scaleVector
  ##    @ingroup matrix_coop
  ##    @see dEstimateCooperativelyScaleVectorResourceRequirements
  ##    @see dResourceContainerAcquire
  ##    @see dCooperativelyFactorLDLT
proc dStopwatchReset*(a1: ptr dStopwatch) {.importc, cdecl, impodeDyn.}
proc dStopwatchStart*(a1: ptr dStopwatch) {.importc, cdecl, impodeDyn.}
proc dStopwatchStop*(a1: ptr dStopwatch) {.importc, cdecl, impodeDyn.}
proc dStopwatchTime*(a1: ptr dStopwatch): cdouble {.importc, cdecl, impodeDyn.}
  ## ::
  ##    returns total time in secs
  ##    code timers
proc dTimerStart*(description: cstring) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    pass a static string here
proc dTimerNow*(description: cstring) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    pass a static string here
proc dTimerEnd*() {.importc, cdecl, impodeDyn.}
  ## ::
  ##    pass a static string here
proc dTimerReport*(fout: File; average: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    print out a timer report. if average' is nonzero, print out the average
  ##    time for each slot (this is only meaningful if the same start-now-end
  ##    calls are being made repeatedly.
proc dTimerTicksPerSecond*(): cdouble {.importc, cdecl, impodeDyn.}
  ## ::
  ##    resolution
  ##    returns the timer ticks per second implied by the timing hardware or API.
  ##    the actual timer resolution may not be this great.
proc dTimerResolution*(): cdouble {.importc, cdecl, impodeDyn.}
  ## ::
  ##    returns an estimate of the actual timer resolution, in seconds. this may
  ##    be greater than 1/ticks_per_second.
proc dRSetIdentity*(R: dMatrix3) {.importc, cdecl, impodeDyn.}
proc dRFromAxisAndAngle*(R: dMatrix3; ax: dReal; ay: dReal; az: dReal; angle: dReal) {.
    importc, cdecl, impodeDyn.}
proc dRFromEulerAngles*(R: dMatrix3; phi: dReal; theta: dReal; psi: dReal) {.importc,
    cdecl, impodeDyn.}
proc dRFrom2Axes*(R: dMatrix3; ax: dReal; ay: dReal; az: dReal; bx: dReal; by: dReal;
                 bz: dReal) {.importc, cdecl, impodeDyn.}
proc dRFromZAxis*(R: dMatrix3; ax: dReal; ay: dReal; az: dReal) {.importc, cdecl, impodeDyn.}
proc dQSetIdentity*(q: dQuaternion) {.importc, cdecl, impodeDyn.}
proc dQFromAxisAndAngle*(q: dQuaternion; ax: dReal; ay: dReal; az: dReal; angle: dReal) {.
    importc, cdecl, impodeDyn.}
proc dQMultiply0*(qa: dQuaternion; qb: dQuaternion; qc: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    Quaternion multiplication, analogous to the matrix multiplication routines.
  ##    qa = rotate by qc, then qb
proc dQMultiply1*(qa: dQuaternion; qb: dQuaternion; qc: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    qa = rotate by qc, then by inverse of qb
proc dQMultiply2*(qa: dQuaternion; qb: dQuaternion; qc: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    qa = rotate by inverse of qc, then by qb
proc dQMultiply3*(qa: dQuaternion; qb: dQuaternion; qc: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    qa = rotate by inverse of qc, then by inverse of qb
proc dRfromQ*(R: dMatrix3; q: dQuaternion) {.importc, cdecl, impodeDyn.}
proc dQfromR*(q: dQuaternion; R: dMatrix3) {.importc, cdecl, impodeDyn.}
proc dDQfromW*(dq: array[4, dReal]; w: dVector3; q: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
proc dMassCheck*(m: ptr dMass): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Check if a mass structure has valid value.
  ##    The function check if the mass and innertia matrix are positive definits
  ##   
  ##    @param m A mass structure to check
  ##   
  ##    @return 1 if both codition are met
proc dMassSetZero*(a1: ptr dMass) {.importc, cdecl, impodeDyn.}
proc dMassSetParameters*(a1: ptr dMass; themass: dReal; cgx: dReal; cgy: dReal;
                        cgz: dReal; I11: dReal; I22: dReal; I33: dReal; I12: dReal;
                        I13: dReal; I23: dReal) {.importc, cdecl, impodeDyn.}
proc dMassSetSphere*(a1: ptr dMass; density: dReal; radius: dReal) {.importc, cdecl,
    impodeDyn.}
proc dMassSetSphereTotal*(a1: ptr dMass; total_mass: dReal; radius: dReal) {.importc,
    cdecl, impodeDyn.}
proc dMassSetCapsule*(a1: ptr dMass; density: dReal; direction: cint; radius: dReal;
                     length: dReal) {.importc, cdecl, impodeDyn.}
proc dMassSetCapsuleTotal*(a1: ptr dMass; total_mass: dReal; direction: cint;
                          radius: dReal; length: dReal) {.importc, cdecl, impodeDyn.}
proc dMassSetCylinder*(a1: ptr dMass; density: dReal; direction: cint; radius: dReal;
                      length: dReal) {.importc, cdecl, impodeDyn.}
proc dMassSetCylinderTotal*(a1: ptr dMass; total_mass: dReal; direction: cint;
                           radius: dReal; length: dReal) {.importc, cdecl, impodeDyn.}
proc dMassSetBox*(a1: ptr dMass; density: dReal; lx: dReal; ly: dReal; lz: dReal) {.importc,
    cdecl, impodeDyn.}
proc dMassSetBoxTotal*(a1: ptr dMass; total_mass: dReal; lx: dReal; ly: dReal; lz: dReal) {.
    importc, cdecl, impodeDyn.}
proc dMassSetTrimesh*(a1: ptr dMass; density: dReal; g: dGeomID) {.importc, cdecl,
    impodeDyn.}
proc dMassSetTrimeshTotal*(m: ptr dMass; total_mass: dReal; g: dGeomID) {.importc, cdecl,
    impodeDyn.}
proc dMassAdjust*(a1: ptr dMass; newmass: dReal) {.importc, cdecl, impodeDyn.}
proc dMassTranslate*(a1: ptr dMass; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
proc dMassRotate*(a1: ptr dMass; R: dMatrix3) {.importc, cdecl, impodeDyn.}
proc dMassAdd*(a: ptr dMass; b: ptr dMass) {.importc, cdecl, impodeDyn.}
proc dMassSetCappedCylinder*(a: ptr dMass; b: dReal; c: cint; d: dReal; e: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    Backwards compatible API
proc dMassSetCappedCylinderTotal*(a: ptr dMass; b: dReal; c: cint; d: dReal; e: dReal) {.
    importc, cdecl, impodeDyn.}
proc dTestRand*(): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##    return 1 if the random number generator is working.
proc dRand*(): culong {.importc, cdecl, impodeDyn.}
  ## ::
  ##    return next 32 bit random number. this uses a not-very-random linear
  ##    congruential method.
proc dRandGetSeed*(): culong {.importc, cdecl, impodeDyn.}
  ## ::
  ##    get and set the current random number seed.
proc dRandSetSeed*(s: culong) {.importc, cdecl, impodeDyn.}
proc dRandInt*(n: cint): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##    return a random integer between 0..n-1. the distribution will get worse
  ##    as n approaches 2^32.
proc dRandReal*(): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##    return a random real number between 0..1
proc dPrintMatrix*(A: ptr dReal; n: cint; m: cint; fmt: cstring; f: File) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    print out a matrix
proc dMakeRandomVector*(A: ptr dReal; n: cint; range: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    make a random vector with entries between +/- range. A has n elements.
proc dMakeRandomMatrix*(A: ptr dReal; n: cint; m: cint; range: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    make a random matrix with entries between +/- range. A has size nm.
proc dClearUpperTriangle*(A: ptr dReal; n: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##    clear the upper triangle of a square matrix
proc dMaxDifference*(A: ptr dReal; B: ptr dReal; n: cint; m: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    return the maximum element difference between the two nm matrices
proc dMaxDifferenceLowerTriangle*(A: ptr dReal; B: ptr dReal; n: cint): dReal {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    return the maximum element difference between the lower triangle of two
  ##    nn matrices
proc dWorldCreate*(): dWorldID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    Threading support header file.
  ##    Copyright (C) 2011-2020 Oleh Derevenko. All rights reserved.
  ##    e-mail: odar@eleks.com (change all "a" to "e")
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##      ODE threading support interfaces	
  ##   
  ##   
  ##    @defgroup world World
  ##   
  ##    The world object is a container for rigid bodies and joints. Objects in
  ##    different worlds can not interact, for example rigid bodies from two
  ##    different worlds can not collide.
  ##   
  ##    All the objects in a world exist at the same point in time, thus one
  ##    reason to use separate worlds is to simulate systems at different rates.
  ##    Most applications will only need one world.
  ##   
  ##   
  ##    @brief Create a new, empty world and return its ID number.
  ##    @return an identifier
  ##    @ingroup world
proc dWorldDestroy*(world: dWorldID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroy a world and everything in it.
  ##   
  ##    This includes all bodies, and all joints that are not part of a joint
  ##    group. Joints that are part of a joint group will be deactivated, and
  ##    can be destroyed by calling, for example, dJointGroupEmpty().
  ##    @ingroup world
  ##    @param world the identifier for the world the be destroyed.
proc dWorldSetData*(world: dWorldID; data: pointer) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the user-data pointer
  ##    @param world the world to set the data on
  ##    @param data
  ##    @ingroup world
proc dWorldGetData*(world: dWorldID): pointer {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the user-data pointer
  ##    @param world the world to set the data on
  ##    @param data
  ##    @ingroup world
proc dWorldSetGravity*(a1: dWorldID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world's global gravity vector.
  ##   
  ##    The units are m/s^2, so Earth's gravity vector would be (0,0,-9.81),
  ##    assuming that +z is up. The default is no gravity, i.e. (0,0,0).
  ##   
  ##    @ingroup world
proc dWorldGetGravity*(a1: dWorldID; gravity: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the gravity vector for a given world.
  ##    @ingroup world
proc dWorldSetERP*(a1: dWorldID; erp: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the global ERP value, that controls how much error
  ##    correction is performed in each time step.
  ##    @ingroup world
  ##    @param dWorldID the identifier of the world.
  ##    @param erp Typical values are in the range 0.1--0.8. The default is 0.2.
proc dWorldGetERP*(a1: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the error reduction parameter.
  ##    @ingroup world
  ##    @return ERP value
proc dWorldSetCFM*(a1: dWorldID; cfm: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the global CFM (constraint force mixing) value.
  ##    @ingroup world
  ##    @param cfm Typical values are in the range @m{10^{-9}} -- 1.
  ##    The default is 10^-5 if single precision is being used, or 10^-10
  ##    if double precision is being used.
proc dWorldGetCFM*(a1: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the constraint force mixing value.
  ##    @ingroup world
  ##    @return CFM value
proc dWorldSetStepIslandsProcessingMaxThreadCount*(w: dWorldID; count: cuint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set maximum threads to be used for island stepping
  ##   
  ##    The actual number of threads that is going to be used will be the minimum
  ##    of this limit and number of threads in the threading pool. By default 
  ##    there is no limit (@c dWORLDSTEP_THREADCOUNT_UNLIMITED).
  ##   
  ##    @warning
  ##    WARNING! Running island stepping in multiple threads requires allocating 
  ##    individual stepping memory buffer for each of those threads. The size of buffers
  ##    allocated is the size needed to handle the largest island in the world.
  ##   
  ##    Note: Setting a limit for island stepping does not affect threading at lower
  ##    levels in stepper functions. The sub-calls scheduled from them can be executed
  ##    in as many threads as there are available in the pool.
  ##   
  ##    @param w The world affected
  ##    @param count Thread count limit value for island stepping
  ##    @ingroup world
  ##    @see dWorldGetStepIslandsProcessingMaxThreadCount
proc dWorldGetStepIslandsProcessingMaxThreadCount*(w: dWorldID): cuint {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get maximum threads that are allowed to be used for island stepping.
  ##   
  ##    Please read commentaries to @c dWorldSetStepIslandsProcessingMaxThreadCount for 
  ##    important information regarding the value returned.
  ##   
  ##    @param w The world queried
  ##    @returns Current thread count limit value for island stepping
  ##    @ingroup world
  ##    @see dWorldSetStepIslandsProcessingMaxThreadCount
proc dWorldUseSharedWorkingMemory*(w: dWorldID; from_world: dWorldID): cint {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world to use shared working memory along with another world.
  ##   
  ##    The worlds allocate working memory internally for simulation stepping. This
  ##    memory is cached among the calls to @c dWordStep and @c dWorldQuickStep. 
  ##    Similarly, several worlds can be set up to share this memory caches thus 
  ##    reducing overall memory usage by cost of making worlds inappropriate for 
  ##    simultaneous simulation in multiple threads.
  ##   
  ##    If null value is passed for @a from_world parameter the world is detached from 
  ##    sharing and returns to defaults for working memory, reservation policy and 
  ##    memory manager as if just created. This can also be used to enable use of shared 
  ##    memory for a world that has already had working memory allocated privately.
  ##    Normally using shared memory after a world has its private working memory allocated
  ##    is prohibited.
  ##   
  ##    Allocation policy used can only increase world's internal reserved memory size
  ##    and never decreases it. @c dWorldCleanupWorkingMemory can be used to release 
  ##    working memory for a world in case if number of objects/joint decreases 
  ##    significantly in it.
  ##   
  ##    With sharing working memory worlds also automatically share memory reservation 
  ##    policy and memory manager. Thus, these parameters need to be customized for
  ##    initial world to be used as sharing source only.
  ##   
  ##    If worlds share working memory they must also use compatible threading implementations
  ##    (i.e. it is illegal for one world to perform stepping with self-threaded implementation
  ##    when the other world is assigned a multi-threaded implementation). 
  ##    For more information read section about threading approaches in ODE.
  ##   
  ##    Failure result status means a memory allocation failure.
  ##   
  ##    @param w The world to use the shared memory with.
  ##    @param from_world Null or the world the shared memory is to be used from.
  ##    @returns 1 for success and 0 for failure.
  ##   
  ##    @ingroup world
  ##    @see dWorldCleanupWorkingMemory
  ##    @see dWorldSetStepMemoryReservationPolicy
  ##    @see dWorldSetStepMemoryManager
proc dWorldCleanupWorkingMemory*(w: dWorldID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Release internal working memory allocated for world
  ##   
  ##    The worlds allocate working memory internally for simulation stepping. This 
  ##    function can be used to free world's internal memory cache in case if number of
  ##    objects/joints in the world decreases significantly. By default, internal 
  ##    allocation policy is used to only increase cache size as necessary and never 
  ##    decrease it.
  ##   
  ##    If a world shares its working memory with other worlds the cache deletion 
  ##    affects all the linked worlds. However the shared status itself remains intact.
  ##   
  ##    The function call does affect neither memory reservation policy nor memory manager.
  ##   
  ##    @param w The world to release working memory for.
  ##   
  ##    @ingroup world
  ##    @see dWorldUseSharedWorkingMemory
  ##    @see dWorldSetStepMemoryReservationPolicy
  ##    @see dWorldSetStepMemoryManager
proc dWorldSetStepMemoryReservationPolicy*(w: dWorldID;
    policyinfo: ptr dWorldStepReserveInfo): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set memory reservation policy for world to be used with simulation stepping functions
  ##   
  ##    The function allows to customize reservation policy to be used for internal
  ##    memory which is allocated to aid simulation for a world. By default, values
  ##    of @c dWORLDSTEP_RESERVEFACTOR_DEFAULT and @c dWORLDSTEP_RESERVESIZE_DEFAULT
  ##    are used.
  ##   
  ##    Passing @a policyinfo argument as NULL results in reservation policy being
  ##    reset to defaults as if the world has been just created. The content of 
  ##    @a policyinfo structure is copied internally and does not need to remain valid
  ##    after the call returns.
  ##   
  ##    If the world uses working memory sharing, changing memory reservation policy
  ##    affects all the worlds linked together.
  ##   
  ##    Failure result status means a memory allocation failure.
  ##   
  ##    @param w The world to change memory reservation policy for.
  ##    @param policyinfo Null or a pointer to policy descriptor structure.
  ##    @returns 1 for success and 0 for failure.
  ##   
  ##    @ingroup world
  ##    @see dWorldUseSharedWorkingMemory
proc dWorldSetStepMemoryManager*(w: dWorldID;
                                memfuncs: ptr dWorldStepMemoryFunctionsInfo): cint {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set memory manager for world to be used with simulation stepping functions
  ##   
  ##    The function allows to customize memory manager to be used for internal
  ##    memory allocation during simulation for a world. By default, @c dAlloc/@c dRealloc/@c dFree
  ##    based memory manager is used.
  ##   
  ##    Passing @a memfuncs argument as NULL results in memory manager being
  ##    reset to default one as if the world has been just created. The content of 
  ##    @a memfuncs structure is copied internally and does not need to remain valid
  ##    after the call returns.
  ##   
  ##    If the world uses working memory sharing, changing memory manager
  ##    affects all the worlds linked together. 
  ##   
  ##    Failure result status means a memory allocation failure.
  ##   
  ##    @param w The world to change memory reservation policy for.
  ##    @param memfuncs Null or a pointer to memory manager descriptor structure.
  ##    @returns 1 for success and 0 for failure.
  ##   
  ##    @ingroup world
  ##    @see dWorldUseSharedWorkingMemory
proc dWorldSetStepThreadingImplementation*(w: dWorldID;
    functions_info: ptr dThreadingFunctionsInfo;
    threading_impl: dThreadingImplementationID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Assign threading implementation to be used for [quick]stepping the world.
  ##   
  ##    @warning It is not recommended to assign the same threading implementation to
  ##    different worlds if they are going to be called in parallel. In particular this
  ##    makes resources preallocation for threaded calls to lose its sense. 
  ##    Built-in threading implementation is likely to crash if misused this way.
  ##    
  ##    @param w The world to change threading implementation for.
  ##    @param functions_info Pointer to threading functions structure
  ##    @param threading_impl ID of threading implementation object
  ##    
  ##    @ingroup world
proc dWorldStep*(w: dWorldID; stepsize: dReal): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Step the world.
  ##   
  ##    This uses a "big matrix" method that takes time on the order of m^3
  ##    and memory on the order of m^2, where m is the total number of constraint
  ##    rows. For large systems this will use a lot of memory and can be very slow,
  ##    but this is currently the most accurate method.
  ##   
  ##    Failure result status means that the memory allocation has failed for operation.
  ##    In such a case all the objects remain in unchanged state and simulation can be
  ##    retried as soon as more memory is available.
  ##   
  ##    @param w The world to be stepped
  ##    @param stepsize The number of seconds that the simulation has to advance.
  ##    @returns 1 for success and 0 for failure
  ##   
  ##    @ingroup world
proc dWorldQuickStep*(w: dWorldID; stepsize: dReal): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Quick-step the world.
  ##   
  ##    This uses an iterative method that takes time on the order of mN
  ##    and memory on the order of m, where m is the total number of constraint
  ##    rows N is the number of iterations.
  ##    For large systems this is a lot faster than dWorldStep(),
  ##    but it is less accurate.
  ##   
  ##    QuickStep is great for stacks of objects especially when the
  ##    auto-disable feature is used as well.
  ##    However, it has poor accuracy for near-singular systems.
  ##    Near-singular systems can occur when using high-friction contacts, motors,
  ##    or certain articulated structures. For example, a robot with multiple legs
  ##    sitting on the ground may be near-singular.
  ##   
  ##    There are ways to help overcome QuickStep's inaccuracy problems:
  ##   
  ##    \li Increase CFM.
  ##    \li Reduce the number of contacts in your system (e.g. use the minimum
  ##        number of contacts for the feet of a robot or creature).
  ##    \li Don't use excessive friction in the contacts.
  ##    \li Use contact slip if appropriate
  ##    \li Avoid kinematic loops (however, kinematic loops are inevitable in
  ##        legged creatures).
  ##    \li Don't use excessive motor strength.
  ##    \liUse force-based motors instead of velocity-based motors.
  ##   
  ##    Increasing the number of QuickStep iterations may help a little bit, but
  ##    it is not going to help much if your system is really near singular.
  ##   
  ##    Failure result status means that the memory allocation has failed for operation.
  ##    In such a case all the objects remain in unchanged state and simulation can be
  ##    retried as soon as more memory is available.
  ##   
  ##    @param w The world to be stepped
  ##    @param stepsize The number of seconds that the simulation has to advance.
  ##    @returns 1 for success and 0 for failure
  ##   
  ##    @ingroup world
proc dWorldImpulseToForce*(a1: dWorldID; stepsize: dReal; ix: dReal; iy: dReal;
                          iz: dReal; force: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Converts an impulse to a force.
  ##    @ingroup world
  ##    @remarks
  ##    If you want to apply a linear or angular impulse to a rigid body,
  ##    instead of a force or a torque, then you can use this function to convert
  ##    the desired impulse into a force/torque vector before calling the
  ##    BodyAdd... function.
  ##    The current algorithm simply scales the impulse by 1/stepsize,
  ##    where stepsize is the step size for the next step that will be taken.
  ##    This function is given a dWorldID because, in the future, the force
  ##    computation may depend on integrator parameters that are set as
  ##    properties of the world.
proc dWorldSetQuickStepNumIterations*(w: dWorldID; num: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the number of iterations that the QuickStep method performs per
  ##           step.
  ##    @ingroup world
  ##    @remarks
  ##    More iterations will give a more accurate solution, but will take
  ##    longer to compute.
  ##    @param num The default is dWORLDQUICKSTEP_ITERATION_COUNT_DEFAULT iterations.
proc dWorldGetQuickStepNumIterations*(a1: dWorldID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the number of iterations that the QuickStep method performs per
  ##           step.
  ##    @ingroup world
  ##    @return nr of iterations
proc dWorldSetQuickStepDynamicIterationParameters*(w: dWorldID;
    ptr_iteration_premature_exit_delta: ptr dReal;
    ptr_max_num_extra_factor: ptr dReal;
    ptr_extra_iteration_requirement_delta: ptr dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Configure QuickStep method dynamic iteration count adjustment.
  ##    @ingroup world
  ##    @remarks
  ##    The function controls dynamic iteration count adjustment basing on maximal contact force change
  ##    per iteration in matrix.
  ##   
  ##    If Premature Exit Delta is configured with @p ptr_iteration_premature_exit_delta
  ##    and the maximal contact force adjustment does not exceed the value the iterations are abandoned
  ##    prematurely and computations complete in fewer steps than it would take normally.
  ##    Passing zero in @p ptr_iteration_premature_exit_delta will disable the premature exit and enforce
  ##    unconditional execution of iteration count set by @fn dWorldSetQuickStepNumIterations.
  ##   
  ##    If extra iterations are enabled by passing  a positive fraction in @p ptr_max_num_extra_factor
  ##    and, after the normal number of iterations is executed, the maximal contact force adjustment is still
  ##    larger than the limit set with the @ptr_extra_iteration_requirement_delta, up to that fraction of
  ##    normal iteration count is executed extra until the maximal contact force change falls below the margin.
  ##   
  ##    At least one parameter must be not NULL for the call.
  ##    If NULL is passed for any of the parameters the corresponding parameter will retain its previous value.
  ##    If the standard number of iterations is changed with @fn dWorldSetQuickStepNumIterations call and
  ##    an extra iteration count was configured with @p ptr_max_num_extra_factor the extra absolute value will be
  ##    adjusted accordingly.
  ##   
  ##    @param ptr_iteration_premature_exit_delta A margin value such that, if contact force adjustment value maximum in an iteration 
  ##    becomes less, the method is allowed to terminate prematurely.
  ##    @param ptr_max_num_extra_factor A non-negative coefficient that defines fraction of the standard iteration count to be executed extra
  ##    if contact force still significantly changes after the standard iterations complete.
  ##    @param ptr_extra_iteration_requirement_delta A margin that defines when the extra iterations are not needed or can be abandoned after 
  ##    the start.
  ##    @see dWorldGetQuickStepDynamicIterationParameters
proc dWorldGetQuickStepDynamicIterationParameters*(w: dWorldID;
    out_iteration_premature_exit_delta: ptr dReal;
    out_max_num_extra_factor: ptr dReal;
    out_extra_iteration_requirement_delta: ptr dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Retrieve QuickStep method dynamic iteration count adjustment parameters.
  ##    @ingroup world
  ##    @remarks
  ##    The function retrieves dynamic iteration count adjustment parameters.
  ##   
  ##    See @fn dWorldSetQuickStepDynamicIterationParameters for the parameters description.
  ##   
  ##    At least one parameter must be not NULL for the call.
  ##   
  ##    @param out_iteration_premature_exit_delta Premature Exit Delta value (can be NULL if the value is not needed).
  ##    @param out_max_num_extra_factor Maximum Extra Iteration Number Factor value (can be NULL if the value is not needed).
  ##    @param out_extra_iteration_requirement_delta Extra Iteration Requirement Delta value (can be NULL if the value is not needed).
  ##    @see dWorldSetQuickStepDynamicIterationParameters
proc dWorldAttachQuickStepDynamicIterationStatisticsSink*(w: dWorldID;
    var_stats: ptr dWorldQuickStepIterationCount_DynamicAdjustmentStatistics): cint {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Attach or remove a structure to collect QuickStep iteration count dynamic adjustment statistics.
  ##    @ingroup world
  ##    @remarks
  ##    The function can be used to attach or remove a structure instance that will be updated with iteration count dynamic adjustment statistics
  ##    of QuickStep. To break the attachment, the function must be called with NULL for the @p var_stats.
  ##   
  ##    See @fn dWorldSetQuickStepDynamicIterationParameters for information on the iteration count dynamic adjustment options.
  ##   
  ##    The caller is responsible for initializing the structure before assignment. The structure must persist in memory until unattached or 
  ##    the host world object is destroyed. The same structure instance may be shared among multiple worlds if that makes sense.
  ##   
  ##    The assignment may fail if the feature is not configured within the library, or if the structure was not initialized properly.
  ##   
  ##    @param var_stats A pointer to structure instance to assigned or NULL to break the previous attachment for the world.
  ##    @return Boolean status indicating whether the function succeeded
  ##    @see dWorldQuickStepIterationCount_DynamicAdjustmentStatistics
proc dWorldSetQuickStepW*(a1: dWorldID; over_relaxation: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the SOR over-relaxation parameter
  ##    @ingroup world
  ##    @param over_relaxation value to use by SOR
proc dWorldGetQuickStepW*(a1: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the SOR over-relaxation parameter
  ##    @ingroup world
  ##    @returns the over-relaxation setting
proc dWorldSetContactMaxCorrectingVel*(a1: dWorldID; vel: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    World contact parameter functions
  ##   
  ##    @brief Set the maximum correcting velocity that contacts are allowed
  ##    to generate.
  ##    @ingroup world
  ##    @param vel The default value is infinity (i.e. no limit).
  ##    @remarks
  ##    Reducing this value can help prevent "popping" of deeply embedded objects.
proc dWorldGetContactMaxCorrectingVel*(a1: dWorldID): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the maximum correcting velocity that contacts are allowed
  ##    to generated.
  ##    @ingroup world
proc dWorldSetContactSurfaceLayer*(a1: dWorldID; depth: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the depth of the surface layer around all geometry objects.
  ##    @ingroup world
  ##    @remarks
  ##    Contacts are allowed to sink into the surface layer up to the given
  ##    depth before coming to rest.
  ##    @param depth The default value is zero.
  ##    @remarks
  ##    Increasing this to some small value (e.g. 0.001) can help prevent
  ##    jittering problems due to contacts being repeatedly made and broken.
proc dWorldGetContactSurfaceLayer*(a1: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the depth of the surface layer around all geometry objects.
  ##    @ingroup world
  ##    @returns the depth
proc dWorldGetAutoDisableLinearThreshold*(a1: dWorldID): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @defgroup disable Automatic Enabling and Disabling
  ##    @ingroup world bodies
  ##   
  ##    Every body can be enabled or disabled. Enabled bodies participate in the
  ##    simulation, while disabled bodies are turned off and do not get updated
  ##    during a simulation step. New bodies are always created in the enabled state.
  ##   
  ##    A disabled body that is connected through a joint to an enabled body will be
  ##    automatically re-enabled at the next simulation step.
  ##   
  ##    Disabled bodies do not consume CPU time, therefore to speed up the simulation
  ##    bodies should be disabled when they come to rest. This can be done automatically
  ##    with the auto-disable feature.
  ##   
  ##    If a body has its auto-disable flag turned on, it will automatically disable
  ##    itself when
  ##      @li It has been idle for a given number of simulation steps.
  ##      @li It has also been idle for a given amount of simulation time.
  ##   
  ##    A body is considered to be idle when the magnitudes of both its
  ##    linear average velocity and angular average velocity are below given thresholds.
  ##    The sample size for the average defaults to one and can be disabled by setting
  ##    to zero with 
  ##   
  ##    Thus, every body has six auto-disable parameters: an enabled flag, a idle step
  ##    count, an idle time, linear/angular average velocity thresholds, and the
  ##    average samples count.
  ##   
  ##    Newly created bodies get these parameters from world.
  ##   
  ##   
  ##    @brief Get auto disable linear average threshold for newly created bodies.
  ##    @ingroup disable
  ##    @return the threshold
proc dWorldSetAutoDisableLinearThreshold*(a1: dWorldID;
    linear_average_threshold: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable linear average threshold for newly created bodies.
  ##    @param linear_average_threshold default is 0.01
  ##    @ingroup disable
proc dWorldGetAutoDisableAngularThreshold*(a1: dWorldID): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable angular average threshold for newly created bodies.
  ##    @ingroup disable
  ##    @return the threshold
proc dWorldSetAutoDisableAngularThreshold*(a1: dWorldID;
    angular_average_threshold: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable angular average threshold for newly created bodies.
  ##    @param linear_average_threshold default is 0.01
  ##    @ingroup disable
proc dWorldGetAutoDisableAverageSamplesCount*(a1: dWorldID): cint {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable sample count for newly created bodies.
  ##    @ingroup disable
  ##    @return number of samples used
proc dWorldSetAutoDisableAverageSamplesCount*(a1: dWorldID;
    average_samples_count: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable average sample count for newly created bodies.
  ##    @ingroup disable
  ##    @param average_samples_count Default is 1, meaning only instantaneous velocity is used.
  ##    Set to zero to disable sampling and thus prevent any body from auto-disabling.
proc dWorldGetAutoDisableSteps*(a1: dWorldID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable steps for newly created bodies.
  ##    @ingroup disable
  ##    @return nr of steps
proc dWorldSetAutoDisableSteps*(a1: dWorldID; steps: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable steps for newly created bodies.
  ##    @ingroup disable
  ##    @param steps default is 10
proc dWorldGetAutoDisableTime*(a1: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable time for newly created bodies.
  ##    @ingroup disable
  ##    @return nr of seconds
proc dWorldSetAutoDisableTime*(a1: dWorldID; time: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable time for newly created bodies.
  ##    @ingroup disable
  ##    @param time default is 0 seconds
proc dWorldGetAutoDisableFlag*(a1: dWorldID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable flag for newly created bodies.
  ##    @ingroup disable
  ##    @return 0 or 1
proc dWorldSetAutoDisableFlag*(a1: dWorldID; do_auto_disable: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable flag for newly created bodies.
  ##    @ingroup disable
  ##    @param do_auto_disable default is false.
proc dWorldGetLinearDampingThreshold*(w: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @defgroup damping Damping
  ##    @ingroup bodies world
  ##   
  ##    Damping serves two purposes: reduce simulation instability, and to allow
  ##    the bodies to come to rest (and possibly auto-disabling them).
  ##   
  ##    Bodies are constructed using the world's current damping parameters. Setting
  ##    the scales to 0 disables the damping.
  ##   
  ##    Here is how it is done: after every time step linear and angular
  ##    velocities are tested against the corresponding thresholds. If they
  ##    are above, they are multiplied by (1 - scale). So a negative scale value
  ##    will actually increase the speed, and values greater than one will
  ##    make the object oscillate every step; both can make the simulation unstable.
  ##   
  ##    To disable damping just set the damping scale to zero.
  ##   
  ##    You can also limit the maximum angular velocity. In contrast to the damping
  ##    functions, the angular velocity is affected before the body is moved.
  ##    This means that it will introduce errors in joints that are forcing the body
  ##    to rotate too fast. Some bodies have naturally high angular velocities
  ##    (like cars' wheels), so you may want to give them a very high (like the default,
  ##    dInfinity) limit.
  ##   
  ##    @note The velocities are damped after the stepper function has moved the
  ##    object. Otherwise the damping could introduce errors in joints. First the
  ##    joint constraints are processed by the stepper (moving the body), then
  ##    the damping is applied.
  ##   
  ##    @note The damping happens right after the moved callback is called; this way 
  ##    it still possible use the exact velocities the body has acquired during the
  ##    step. You can even use the callback to create your own customized damping.
  ##   
  ##   
  ##    @brief Get the world's linear damping threshold.
  ##    @ingroup damping
proc dWorldSetLinearDampingThreshold*(w: dWorldID; threshold: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world's linear damping threshold.
  ##    @param threshold The damping won't be applied if the linear speed is
  ##           below this threshold. Default is 0.01.
  ##    @ingroup damping
proc dWorldGetAngularDampingThreshold*(w: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the world's angular damping threshold.
  ##    @ingroup damping
proc dWorldSetAngularDampingThreshold*(w: dWorldID; threshold: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world's angular damping threshold.
  ##    @param threshold The damping won't be applied if the angular speed is
  ##           below this threshold. Default is 0.01.
  ##    @ingroup damping
proc dWorldGetLinearDamping*(w: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the world's linear damping scale.
  ##    @ingroup damping
proc dWorldSetLinearDamping*(w: dWorldID; scale: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world's linear damping scale.
  ##    @param scale The linear damping scale that is to be applied to bodies.
  ##    Default is 0 (no damping). Should be in the interval [0, 1].
  ##    @ingroup damping
proc dWorldGetAngularDamping*(w: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the world's angular damping scale.
  ##    @ingroup damping
proc dWorldSetAngularDamping*(w: dWorldID; scale: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the world's angular damping scale.
  ##    @param scale The angular damping scale that is to be applied to bodies.
  ##    Default is 0 (no damping). Should be in the interval [0, 1].
  ##    @ingroup damping
proc dWorldSetDamping*(w: dWorldID; linear_scale: dReal; angular_scale: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convenience function to set body linear and angular scales.
  ##    @param linear_scale The linear damping scale that is to be applied to bodies.
  ##    @param angular_scale The angular damping scale that is to be applied to bodies.
  ##    @ingroup damping
proc dWorldGetMaxAngularSpeed*(w: dWorldID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the default maximum angular speed.
  ##    @ingroup damping
  ##    @sa dBodyGetMaxAngularSpeed()
proc dWorldSetMaxAngularSpeed*(w: dWorldID; max_speed: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the default maximum angular speed for new bodies.
  ##    @ingroup damping
  ##    @sa dBodySetMaxAngularSpeed()
proc dBodyGetAutoDisableLinearThreshold*(a1: dBodyID): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @defgroup bodies Rigid Bodies
  ##   
  ##    A rigid body has various properties from the point of view of the
  ##    simulation. Some properties change over time:
  ##   
  ##     @li Position vector (x,y,z) of the body's point of reference.
  ##         Currently the point of reference must correspond to the body's center of mass.
  ##     @li Linear velocity of the point of reference, a vector (vx,vy,vz).
  ##     @li Orientation of a body, represented by a quaternion (qs,qx,qy,qz) or
  ##         a 3x3 rotation matrix.
  ##     @li Angular velocity vector (wx,wy,wz) which describes how the orientation
  ##         changes over time.
  ##   
  ##    Other body properties are usually constant over time:
  ##   
  ##     @li Mass of the body.
  ##     @li Position of the center of mass with respect to the point of reference.
  ##         In the current implementation the center of mass and the point of
  ##         reference must coincide.
  ##     @li Inertia matrix. This is a 3x3 matrix that describes how the body's mass
  ##         is distributed around the center of mass. Conceptually each body has an
  ##         x-y-z coordinate frame embedded in it that moves and rotates with the body.
  ##   
  ##    The origin of this coordinate frame is the body's point of reference. Some values
  ##    in ODE (vectors, matrices etc) are relative to the body coordinate frame, and others
  ##    are relative to the global coordinate frame.
  ##   
  ##    Note that the shape of a rigid body is not a dynamical property (except insofar as
  ##    it influences the various mass properties). It is only collision detection that cares
  ##    about the detailed shape of the body.
  ##   
  ##   
  ##    @brief Get auto disable linear average threshold.
  ##    @ingroup bodies disable
  ##    @return the threshold
proc dBodySetAutoDisableLinearThreshold*(a1: dBodyID;
                                        linear_average_threshold: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable linear average threshold.
  ##    @ingroup bodies disable
  ##    @return the threshold
proc dBodyGetAutoDisableAngularThreshold*(a1: dBodyID): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable angular average threshold.
  ##    @ingroup bodies disable
  ##    @return the threshold
proc dBodySetAutoDisableAngularThreshold*(a1: dBodyID;
    angular_average_threshold: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable angular average threshold.
  ##    @ingroup bodies disable
  ##    @return the threshold
proc dBodyGetAutoDisableAverageSamplesCount*(a1: dBodyID): cint {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable average size (samples count).
  ##    @ingroup bodies disable
  ##    @return the nr of steps/size.
proc dBodySetAutoDisableAverageSamplesCount*(a1: dBodyID;
    average_samples_count: cuint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable average buffer size (average steps).
  ##    @ingroup bodies disable
  ##    @param average_samples_count the nr of samples to review.
proc dBodyGetAutoDisableSteps*(a1: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto steps a body must be thought of as idle to disable
  ##    @ingroup bodies disable
  ##    @return the nr of steps
proc dBodySetAutoDisableSteps*(a1: dBodyID; steps: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable steps.
  ##    @ingroup bodies disable
  ##    @param steps the nr of steps.
proc dBodyGetAutoDisableTime*(a1: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable time.
  ##    @ingroup bodies disable
  ##    @return nr of seconds
proc dBodySetAutoDisableTime*(a1: dBodyID; time: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable time.
  ##    @ingroup bodies disable
  ##    @param time nr of seconds.
proc dBodyGetAutoDisableFlag*(a1: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get auto disable flag.
  ##    @ingroup bodies disable
  ##    @return 0 or 1
proc dBodySetAutoDisableFlag*(a1: dBodyID; do_auto_disable: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable flag.
  ##    @ingroup bodies disable
  ##    @param do_auto_disable 0 or 1
proc dBodySetAutoDisableDefaults*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set auto disable defaults.
  ##    @remarks
  ##    Set the values for the body to those set as default for the world.
  ##    @ingroup bodies disable
proc dBodyGetWorld*(a1: dBodyID): dWorldID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Retrieves the world attached to te given body.
  ##    @remarks
  ##    
  ##    @ingroup bodies
proc dBodyCreate*(a1: dWorldID): dBodyID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a body in given world.
  ##    @remarks
  ##    Default mass parameters are at position (0,0,0).
  ##    @ingroup bodies
proc dBodyDestroy*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroy a body.
  ##    @remarks
  ##    All joints that are attached to this body will be put into limbo:
  ##    i.e. unattached and not affecting the simulation, but they will NOT be
  ##    deleted.
  ##    @ingroup bodies
proc dBodySetData*(a1: dBodyID; data: pointer) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's user-data pointer.
  ##    @ingroup bodies
  ##    @param data arbitraty pointer
proc dBodyGetData*(a1: dBodyID): pointer {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's user-data pointer.
  ##    @ingroup bodies
  ##    @return a pointer to the user's data.
proc dBodySetPosition*(a1: dBodyID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set position of a body.
  ##    @remarks
  ##    After setting, the outcome of the simulation is undefined
  ##    if the new configuration is inconsistent with the joints/constraints
  ##    that are present.
  ##    @ingroup bodies
proc dBodySetRotation*(a1: dBodyID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the orientation of a body.
  ##    @ingroup bodies
  ##    @remarks
  ##    After setting, the outcome of the simulation is undefined
  ##    if the new configuration is inconsistent with the joints/constraints
  ##    that are present.
proc dBodySetQuaternion*(a1: dBodyID; q: dQuaternion) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the orientation of a body.
  ##    @ingroup bodies
  ##    @remarks
  ##    After setting, the outcome of the simulation is undefined
  ##    if the new configuration is inconsistent with the joints/constraints
  ##    that are present.
proc dBodySetLinearVel*(a1: dBodyID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the linear velocity of a body.
  ##    @ingroup bodies
proc dBodySetAngularVel*(a1: dBodyID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the angular velocity of a body.
  ##    @ingroup bodies
proc dBodyGetPosition*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the position of a body.
  ##    @ingroup bodies
  ##    @remarks
  ##    When getting, the returned values are pointers to internal data structures,
  ##    so the vectors are valid until any changes are made to the rigid body
  ##    system structure.
  ##    @sa dBodyCopyPosition
proc dBodyCopyPosition*(body: dBodyID; pos: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the position of a body into a vector.
  ##    @ingroup bodies
  ##    @param body  the body to query
  ##    @param pos   a copy of the body position
  ##    @sa dBodyGetPosition
proc dBodyGetRotation*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the rotation of a body.
  ##    @ingroup bodies
  ##    @return pointer to a 4x3 rotation matrix.
proc dBodyCopyRotation*(a1: dBodyID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the rotation of a body.
  ##    @ingroup bodies
  ##    @param body   the body to query
  ##    @param R      a copy of the rotation matrix
  ##    @sa dBodyGetRotation
proc dBodyGetQuaternion*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the rotation of a body.
  ##    @ingroup bodies
  ##    @return pointer to 4 scalars that represent the quaternion.
proc dBodyCopyQuaternion*(body: dBodyID; quat: dQuaternion) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the orientation of a body into a quaternion.
  ##    @ingroup bodies
  ##    @param body  the body to query
  ##    @param quat  a copy of the orientation quaternion
  ##    @sa dBodyGetQuaternion
proc dBodyGetLinearVel*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the linear velocity of a body.
  ##    @ingroup bodies
proc dBodyGetAngularVel*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the angular velocity of a body.
  ##    @ingroup bodies
proc dBodySetMass*(a1: dBodyID; mass: ptr dMass) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the mass of a body.
  ##    @ingroup bodies
proc dBodyGetMass*(a1: dBodyID; mass: ptr dMass) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the mass of a body.
  ##    @ingroup bodies
proc dBodyAddForce*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at centre of mass of body in absolute coordinates.
  ##    @ingroup bodies
proc dBodyAddTorque*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Add torque at centre of mass of body in absolute coordinates.
  ##    @ingroup bodies
proc dBodyAddRelForce*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at centre of mass of body in coordinates relative to body.
  ##    @ingroup bodies
proc dBodyAddRelTorque*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Add torque at centre of mass of body in coordinates relative to body.
  ##    @ingroup bodies
proc dBodyAddForceAtPos*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal; px: dReal;
                        py: dReal; pz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at specified point in body in global coordinates.
  ##    @ingroup bodies
proc dBodyAddForceAtRelPos*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal; px: dReal;
                           py: dReal; pz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at specified point in body in local coordinates.
  ##    @ingroup bodies
proc dBodyAddRelForceAtPos*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal; px: dReal;
                           py: dReal; pz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at specified point in body in global coordinates.
  ##    @ingroup bodies
proc dBodyAddRelForceAtRelPos*(a1: dBodyID; fx: dReal; fy: dReal; fz: dReal; px: dReal;
                              py: dReal; pz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Add force at specified point in body in local coordinates.
  ##    @ingroup bodies
proc dBodyGetForce*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the current accumulated force vector.
  ##    @return points to an array of 3 reals.
  ##    @remarks
  ##    The returned values are pointers to internal data structures, so
  ##    the vectors are only valid until any changes are made to the rigid
  ##    body system.
  ##    @ingroup bodies
proc dBodyGetTorque*(a1: dBodyID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the current accumulated torque vector.
  ##    @return points to an array of 3 reals.
  ##    @remarks
  ##    The returned values are pointers to internal data structures, so
  ##    the vectors are only valid until any changes are made to the rigid
  ##    body system.
  ##    @ingroup bodies
proc dBodySetForce*(b: dBodyID; x: dReal; y: dReal; z: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body force accumulation vector.
  ##    @remarks
  ##    This is mostly useful to zero the force and torque for deactivated bodies
  ##    before they are reactivated, in the case where the force-adding functions
  ##    were called on them while they were deactivated.
  ##    @ingroup bodies
proc dBodySetTorque*(b: dBodyID; x: dReal; y: dReal; z: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body torque accumulation vector.
  ##    @remarks
  ##    This is mostly useful to zero the force and torque for deactivated bodies
  ##    before they are reactivated, in the case where the force-adding functions
  ##    were called on them while they were deactivated.
  ##    @ingroup bodies
proc dBodyGetRelPointPos*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get world position of a relative point on body.
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodyGetRelPointVel*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get velocity vector in global coords of a relative point on body.
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodyGetPointVel*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get velocity vector in global coords of a globally
  ##    specified point on a body.
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodyGetPosRelPoint*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief takes a point in global coordinates and returns
  ##    the point's position in body-relative coordinates.
  ##    @remarks
  ##    This is the inverse of dBodyGetRelPointPos()
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodyVectorToWorld*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convert from local to world coordinates.
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodyVectorFromWorld*(a1: dBodyID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convert from world to local coordinates.
  ##    @ingroup bodies
  ##    @param result will contain the result.
proc dBodySetFiniteRotationMode*(a1: dBodyID; mode: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief controls the way a body's orientation is updated at each timestep.
  ##    @ingroup bodies
  ##    @param mode can be 0 or 1:
  ##    \li 0: An infinitesimal'' orientation update is used.
  ##    This is fast to compute, but it can occasionally cause inaccuracies
  ##    for bodies that are rotating at high speed, especially when those
  ##    bodies are joined to other bodies.
  ##    This is the default for every new body that is created.
  ##    \li 1: A finite'' orientation update is used.
  ##    This is more costly to compute, but will be more accurate for high
  ##    speed rotations.
  ##    @remarks
  ##    Note however that high speed rotations can result in many types of
  ##    error in a simulation, and the finite mode will only fix one of those
  ##    sources of error.
proc dBodySetFiniteRotationAxis*(a1: dBodyID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief sets the finite rotation axis for a body.
  ##    @ingroup bodies
  ##    @remarks
  ##    This is axis only has meaning when the finite rotation mode is set
  ##    If this axis is zero (0,0,0), full finite rotations are performed on
  ##    the body.
  ##    If this axis is nonzero, the body is rotated by performing a partial finite
  ##    rotation along the axis direction followed by an infinitesimal rotation
  ##    along an orthogonal direction.
  ##    @remarks
  ##    This can be useful to alleviate certain sources of error caused by quickly
  ##    spinning bodies. For example, if a car wheel is rotating at high speed
  ##    you can call this function with the wheel's hinge axis as the argument to
  ##    try and improve its behavior.
proc dBodyGetFiniteRotationMode*(a1: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the way a body's orientation is updated each timestep.
  ##    @ingroup bodies
  ##    @return the mode 0 (infitesimal) or 1 (finite).
proc dBodyGetFiniteRotationAxis*(a1: dBodyID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the finite rotation axis.
  ##    @param result will contain the axis.
  ##    @ingroup bodies
proc dBodyGetNumJoints*(b: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the number of joints that are attached to this body.
  ##    @ingroup bodies
  ##    @return nr of joints
proc dBodyGetJoint*(a1: dBodyID; index: cint): dJointID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return a joint attached to this body, given by index.
  ##    @ingroup bodies
  ##    @param index valid range is  0 to n-1 where n is the value returned by
  ##    dBodyGetNumJoints().
proc dBodySetDynamic*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set rigid body to dynamic state (default).
  ##    @param dBodyID identification of body.
  ##    @ingroup bodies
proc dBodySetKinematic*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set rigid body to kinematic state.
  ##    When in kinematic state the body isn't simulated as a dynamic
  ##    body (it's "unstoppable", doesn't respond to forces),
  ##    but can still affect dynamic bodies (e.g. in joints).
  ##    Kinematic bodies can be controlled by position and velocity.
  ##    @note A kinematic body has infinite mass. If you set its mass
  ##    to something else, it loses the kinematic state and behaves
  ##    as a normal dynamic body.
  ##    @param dBodyID identification of body.
  ##    @ingroup bodies
proc dBodyIsKinematic*(a1: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Check wether a body is in kinematic state.
  ##    @ingroup bodies
  ##    @return 1 if a body is kinematic or 0 if it is dynamic.
proc dBodyEnable*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Manually enable a body.
  ##    @param dBodyID identification of body.
  ##    @ingroup bodies
proc dBodyDisable*(a1: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Manually disable a body.
  ##    @ingroup bodies
  ##    @remarks
  ##    A disabled body that is connected through a joint to an enabled body will
  ##    be automatically re-enabled at the next simulation step.
proc dBodyIsEnabled*(a1: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Check wether a body is enabled.
  ##    @ingroup bodies
  ##    @return 1 if a body is currently enabled or 0 if it is disabled.
proc dBodySetGravityMode*(b: dBodyID; mode: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set whether the body is influenced by the world's gravity or not.
  ##    @ingroup bodies
  ##    @param mode when nonzero gravity affects this body.
  ##    @remarks
  ##    Newly created bodies are always influenced by the world's gravity.
proc dBodyGetGravityMode*(b: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get whether the body is influenced by the world's gravity or not.
  ##    @ingroup bodies
  ##    @return nonzero means gravity affects this body.
proc dBodySetMovedCallback*(b: dBodyID; callback: proc (a1: dBodyID) {.cdecl.}) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the 'moved' callback of a body.
  ##   
  ##    Whenever a body has its position or rotation changed during the
  ##    timestep, the callback will be called (with body as the argument).
  ##    Use it to know which body may need an update in an external
  ##    structure (like a 3D engine).
  ##   
  ##    @param b the body that needs to be watched.
  ##    @param callback the callback to be invoked when the body moves. Set to zero
  ##    to disable.
  ##    @ingroup bodies
proc dBodyGetFirstGeom*(b: dBodyID): dGeomID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the first geom associated with the body.
  ##    
  ##    You can traverse through the geoms by repeatedly calling
  ##    dBodyGetNextGeom().
  ##   
  ##    @return the first geom attached to this body, or 0.
  ##    @ingroup bodies
proc dBodyGetNextGeom*(g: dGeomID): dGeomID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief returns the next geom associated with the same body.
  ##    @param g a geom attached to some body.
  ##    @return the next geom attached to the same body, or 0.
  ##    @sa dBodyGetFirstGeom
  ##    @ingroup bodies
proc dBodySetDampingDefaults*(b: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Resets the damping settings to the current world's settings.
  ##    @ingroup bodies damping
proc dBodyGetLinearDamping*(b: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's linear damping scale.
  ##    @ingroup bodies damping
proc dBodySetLinearDamping*(b: dBodyID; scale: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's linear damping scale.
  ##    @param scale The linear damping scale. Should be in the interval [0, 1].
  ##    @ingroup bodies damping
  ##    @remarks From now on the body will not use the world's linear damping
  ##    scale until dBodySetDampingDefaults() is called.
  ##    @sa dBodySetDampingDefaults()
proc dBodyGetAngularDamping*(b: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's angular damping scale.
  ##    @ingroup bodies damping
  ##    @remarks If the body's angular damping scale was not set, this function
  ##    returns the world's angular damping scale.
proc dBodySetAngularDamping*(b: dBodyID; scale: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's angular damping scale.
  ##    @param scale The angular damping scale. Should be in the interval [0, 1].
  ##    @ingroup bodies damping
  ##    @remarks From now on the body will not use the world's angular damping
  ##    scale until dBodyResetAngularDamping() is called.
  ##    @sa dBodyResetAngularDamping()
proc dBodySetDamping*(b: dBodyID; linear_scale: dReal; angular_scale: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convenience function to set linear and angular scales at once.
  ##    @param linear_scale The linear damping scale. Should be in the interval [0, 1].
  ##    @param angular_scale The angular damping scale. Should be in the interval [0, 1].
  ##    @ingroup bodies damping
  ##    @sa dBodySetLinearDamping() dBodySetAngularDamping()
proc dBodyGetLinearDampingThreshold*(b: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's linear damping threshold.
  ##    @ingroup bodies damping
proc dBodySetLinearDampingThreshold*(b: dBodyID; threshold: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's linear damping threshold.
  ##    @param threshold The linear threshold to be used. Damping
  ##         is only applied if the linear speed is above this limit.
  ##    @ingroup bodies damping
proc dBodyGetAngularDampingThreshold*(b: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's angular damping threshold.
  ##    @ingroup bodies damping
proc dBodySetAngularDampingThreshold*(b: dBodyID; threshold: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's angular damping threshold.
  ##    @param threshold The angular threshold to be used. Damping is
  ##         only used if the angular speed is above this limit.
  ##    @ingroup bodies damping
proc dBodyGetMaxAngularSpeed*(b: dBodyID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's maximum angular speed.
  ##    @ingroup damping bodies
  ##    @sa dWorldGetMaxAngularSpeed()
proc dBodySetMaxAngularSpeed*(b: dBodyID; max_speed: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body's maximum angular speed.
  ##    @ingroup damping bodies
  ##    @sa dWorldSetMaxAngularSpeed() dBodyResetMaxAngularSpeed()
  ##    The default value is dInfinity, but it's a good idea to limit
  ##    it at less than 500 if the body has the gyroscopic term
  ##    enabled.
proc dBodyGetGyroscopicMode*(b: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body's gyroscopic state.
  ##   
  ##    @return nonzero if gyroscopic term computation is enabled (default),
  ##    zero otherwise.
  ##    @ingroup bodies
proc dBodySetGyroscopicMode*(b: dBodyID; enabled: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Enable/disable the body's gyroscopic term.
  ##   
  ##    Disabling the gyroscopic term of a body usually improves
  ##    stability. It also helps turning spining objects, like cars'
  ##    wheels.
  ##   
  ##    @param enabled   nonzero (default) to enable gyroscopic term, 0
  ##    to disable.
  ##    @ingroup bodies
proc dJointCreateBall*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @defgroup joints Joints
  ##   
  ##    In real life a joint is something like a hinge, that is used to connect two
  ##    objects.
  ##    In ODE a joint is very similar: It is a relationship that is enforced between
  ##    two bodies so that they can only have certain positions and orientations
  ##    relative to each other.
  ##    This relationship is called a constraint -- the words joint and
  ##    constraint are often used interchangeably.
  ##   
  ##    A joint has a set of parameters that can be set. These include:
  ##   
  ##   
  ##    \li  dParamLoStop Low stop angle or position. Setting this to
  ##   	-dInfinity (the default value) turns off the low stop.
  ##   	For rotational joints, this stop must be greater than -pi to be
  ##   	effective.
  ##    \li  dParamHiStop High stop angle or position. Setting this to
  ##   	dInfinity (the default value) turns off the high stop.
  ##   	For rotational joints, this stop must be less than pi to be
  ##   	effective.
  ##   	If the high stop is less than the low stop then both stops will
  ##   	be ineffective.
  ##    \li  dParamVel Desired motor velocity (this will be an angular or
  ##   	linear velocity).
  ##    \li  dParamFMax The maximum force or torque that the motor will use to
  ##   	achieve the desired velocity.
  ##   	This must always be greater than or equal to zero.
  ##   	Setting this to zero (the default value) turns off the motor.
  ##    \li  dParamFudgeFactor The current joint stop/motor implementation has
  ##   	a small problem:
  ##   	when the joint is at one stop and the motor is set to move it away
  ##   	from the stop, too much force may be applied for one time step,
  ##   	causing a jumping'' motion.
  ##   	This fudge factor is used to scale this excess force.
  ##   	It should have a value between zero and one (the default value).
  ##   	If the jumping motion is too visible in a joint, the value can be
  ##   	reduced.
  ##   	Making this value too small can prevent the motor from being able to
  ##   	move the joint away from a stop.
  ##    \li  dParamBounce The bouncyness of the stops.
  ##   	This is a restitution parameter in the range 0..1.
  ##   	0 means the stops are not bouncy at all, 1 means maximum bouncyness.
  ##    \li  dParamCFM The constraint force mixing (CFM) value used when not
  ##   	at a stop.
  ##    \li  dParamStopERP The error reduction parameter (ERP) used by the
  ##   	stops.
  ##    \li  dParamStopCFM The constraint force mixing (CFM) value used by the
  ##   	stops. Together with the ERP value this can be used to get spongy or
  ##   	soft stops.
  ##   	Note that this is intended for unpowered joints, it does not really
  ##   	work as expected when a powered joint reaches its limit.
  ##    \li  dParamSuspensionERP Suspension error reduction parameter (ERP).
  ##   	Currently this is only implemented on the hinge-2 joint.
  ##    \li  dParamSuspensionCFM Suspension constraint force mixing (CFM) value.
  ##   	Currently this is only implemented on the hinge-2 joint.
  ##   
  ##    If a particular parameter is not implemented by a given joint, setting it
  ##    will have no effect.
  ##    These parameter names can be optionally followed by a digit (2 or 3)
  ##    to indicate the second or third set of parameters, e.g. for the second axis
  ##    in a hinge-2 joint, or the third axis in an AMotor joint.
  ##   
  ##   
  ##    @brief Create a new joint of the ball type.
  ##    @ingroup joints
  ##    @remarks
  ##    The joint is initially in "limbo" (i.e. it has no effect on the simulation)
  ##    because it does not connect to any bodies.
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateHinge*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the hinge type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateSlider*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the slider type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateContact*(a1: dWorldID; a2: dJointGroupID; a3: ptr dContact): dJointID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the contact type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateHinge2*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the hinge2 type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateUniversal*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the universal type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreatePR*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the PR (Prismatic and Rotoide) type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreatePU*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the PU (Prismatic and Universal) type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreatePiston*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the Piston type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##                         If it is nonzero the joint is allocated in the given
  ##                         joint group.
proc dJointCreateFixed*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the fixed type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateNull*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
proc dJointCreateAMotor*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the A-motor type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateLMotor*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the L-motor type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreatePlane2D*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the plane-2d type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateDBall*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the double ball type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateDHinge*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the double hinge type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointCreateTransmission*(a1: dWorldID; a2: dJointGroupID): dJointID {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a new joint of the Transmission type.
  ##    @ingroup joints
  ##    @param dJointGroupID set to 0 to allocate the joint normally.
  ##    If it is nonzero the joint is allocated in the given joint group.
proc dJointDestroy*(a1: dJointID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroy a joint.
  ##    @ingroup joints
  ##   
  ##    disconnects it from its attached bodies and removing it from the world.
  ##    However, if the joint is a member of a group then this function has no
  ##    effect - to destroy that joint the group must be emptied or destroyed.
proc dJointGroupCreate*(max_size: cint): dJointGroupID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Create a joint group
  ##    @ingroup joints
  ##    @param max_size deprecated. Set to 0.
proc dJointGroupDestroy*(a1: dJointGroupID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroy a joint group.
  ##    @ingroup joints
  ##   
  ##    All joints in the joint group will be destroyed.
proc dJointGroupEmpty*(a1: dJointGroupID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Empty a joint group.
  ##    @ingroup joints
  ##   
  ##    All joints in the joint group will be destroyed,
  ##    but the joint group itself will not be destroyed.
proc dJointGetNumBodies*(a1: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the number of bodies attached to the joint
  ##    @ingroup joints
proc dJointAttach*(a1: dJointID; body1: dBodyID; body2: dBodyID) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Attach the joint to some new bodies.
  ##    @ingroup joints
  ##   
  ##    If the joint is already attached, it will be detached from the old bodies
  ##    first.
  ##    To attach this joint to only one body, set body1 or body2 to zero - a zero
  ##    body refers to the static environment.
  ##    Setting both bodies to zero puts the joint into "limbo", i.e. it will
  ##    have no effect on the simulation.
  ##    @remarks
  ##    Some joints, like hinge-2 need to be attached to two bodies to work.
proc dJointEnable*(a1: dJointID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Manually enable a joint.
  ##    @param dJointID identification of joint.
  ##    @ingroup joints
proc dJointDisable*(a1: dJointID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Manually disable a joint.
  ##    @ingroup joints
  ##    @remarks
  ##    A disabled joint will not affect the simulation, but will maintain the anchors and
  ##    axes so it can be enabled later.
proc dJointIsEnabled*(a1: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Check wether a joint is enabled.
  ##    @ingroup joints
  ##    @return 1 if a joint is currently enabled or 0 if it is disabled.
proc dJointSetData*(a1: dJointID; data: pointer) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the user-data pointer
  ##    @ingroup joints
proc dJointGetData*(a1: dJointID): pointer {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the user-data pointer
  ##    @ingroup joints
proc dJointGetType*(a1: dJointID): dJointType {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the type of the joint
  ##    @ingroup joints
  ##    @return the type, being one of these:
  ##    \li dJointTypeBall
  ##    \li dJointTypeHinge
  ##    \li dJointTypeSlider
  ##    \li dJointTypeContact
  ##    \li dJointTypeUniversal
  ##    \li dJointTypeHinge2
  ##    \li dJointTypeFixed
  ##    \li dJointTypeNull
  ##    \li dJointTypeAMotor
  ##    \li dJointTypeLMotor
  ##    \li dJointTypePlane2D
  ##    \li dJointTypePR
  ##    \li dJointTypePU
  ##    \li dJointTypePiston
proc dJointGetBody*(a1: dJointID; index: cint): dBodyID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the bodies that this joint connects.
  ##    @ingroup joints
  ##    @param index return the first (0) or second (1) body.
  ##    @remarks
  ##    If one of these returned body IDs is zero, the joint connects the other body
  ##    to the static environment.
  ##    If both body IDs are zero, the joint is in limbo'' and has no effect on
  ##    the simulation.
proc dJointSetFeedback*(a1: dJointID; a2: ptr dJointFeedback) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Sets the datastructure that is to receive the feedback.
  ##   
  ##    The feedback can be used by the user, so that it is known how
  ##    much force an individual joint exerts.
  ##    @ingroup joints
proc dJointGetFeedback*(a1: dJointID): ptr dJointFeedback {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Gets the datastructure that is to receive the feedback.
  ##    @ingroup joints
proc dJointSetBallAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the joint anchor point.
  ##    @ingroup joints
  ##   
  ##    The joint will try to keep this point on each body
  ##    together. The input is specified in world coordinates.
proc dJointSetBallAnchor2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the joint anchor point.
  ##    @ingroup joints
proc dJointSetBallParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Param setting for Ball joints
  ##    @ingroup joints
proc dJointSetHingeAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set hinge anchor parameter.
  ##    @ingroup joints
proc dJointSetHingeAnchorDelta*(a1: dJointID; x: dReal; y: dReal; z: dReal; ax: dReal;
                               ay: dReal; az: dReal) {.importc, cdecl, impodeDyn.}
proc dJointSetHingeAxis*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set hinge axis.
  ##    @ingroup joints
proc dJointSetHingeAxisOffset*(j: dJointID; x: dReal; y: dReal; z: dReal; angle: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the Hinge axis as if the 2 bodies were already at angle appart.
  ##    @ingroup joints
  ##   
  ##    This function initialize the Axis and the relative orientation of each body
  ##    as if body1 was rotated around the axis by the angle value. \br
  ##    Ex:
  ##    <PRE>
  ##    dJointSetHingeAxis(jId, 1, 0, 0);
  ##    If you request the position you will have: dJointGetHingeAngle(jId) == 0
  ##    dJointSetHingeAxisDelta(jId, 1, 0, 0, 0.23);
  ##    If you request the position you will have: dJointGetHingeAngle(jId) == 0.23
  ##    </PRE>
  ##   
  ##    @param j The Hinge joint ID for which the axis will be set
  ##    @param x The X component of the axis in world frame
  ##    @param y The Y component of the axis in world frame
  ##    @param z The Z component of the axis in world frame
  ##    @param angle The angle for the offset of the relative orientation.
  ##                 As if body1 was rotated by angle when the Axis was set (see below).
  ##                 The rotation is around the new Hinge axis.
  ##   
  ##    @note Usually the function dJointSetHingeAxis set the current position of body1
  ##          and body2 as the zero angle position. This function set the current position
  ##          as the if the 2 bodies where \b angle appart.
  ##    @warning Calling dJointSetHingeAnchor or dJointSetHingeAxis will reset the "zero"
  ##             angle position.
proc dJointSetHingeParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointAddHingeTorque*(joint: dJointID; torque: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies the torque about the hinge axis.
  ##   
  ##    That is, it applies a torque with specified magnitude in the direction
  ##    of the hinge axis, to body 1, and with the same magnitude but in opposite
  ##    direction to body 2. This function is just a wrapper for dBodyAddTorque()}
  ##    @ingroup joints
proc dJointSetSliderAxis*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the joint axis
  ##    @ingroup joints
proc dJointSetSliderAxisDelta*(a1: dJointID; x: dReal; y: dReal; z: dReal; ax: dReal;
                              ay: dReal; az: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @ingroup joints
proc dJointSetSliderParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointAddSliderForce*(joint: dJointID; force: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies the given force in the slider's direction.
  ##   
  ##    That is, it applies a force with specified magnitude, in the direction of
  ##    slider's axis, to body1, and with the same magnitude but opposite
  ##    direction to body2.  This function is just a wrapper for dBodyAddForce().
  ##    @ingroup joints
proc dJointSetHinge2Anchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor
  ##    @ingroup joints
proc dJointSetHinge2Axes*(j: dJointID; axis1: ptr dReal; axis2: ptr dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set both axes (optionally)
  ##   
  ##    This can change both axes at once avoiding transitions via invalid states
  ##    while changing axes one by one and having the first changed axis coincide 
  ##    with the other axis existing direction.
  ##   
  ##    At least one of the axes must be not NULL. If NULL is passed, the corresponding 
  ##    axis retains its existing value.
  ##    
  ##    @ingroup joints
proc dJointSetHinge2Axis1*(j: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis
  ##   
  ##    Deprecated. Use @fn dJointSetHinge2Axes instead.
  ##    
  ##    @ingroup joints
  ##    @see dJointSetHinge2Axes
proc dJointSetHinge2Axis2*(j: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis
  ##   
  ##    Deprecated. Use @fn dJointSetHinge2Axes instead.
  ##    
  ##    @ingroup joints
  ##    @see dJointSetHinge2Axes
proc dJointSetHinge2Param*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointAddHinge2Torques*(joint: dJointID; torque1: dReal; torque2: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies torque1 about the hinge2's axis 1, torque2 about the
  ##    hinge2's axis 2.
  ##    @remarks  This function is just a wrapper for dBodyAddTorque().
  ##    @ingroup joints
proc dJointSetUniversalAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor
  ##    @ingroup joints
proc dJointSetUniversalAxis1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis
  ##    @ingroup joints
proc dJointSetUniversalAxis1Offset*(a1: dJointID; x: dReal; y: dReal; z: dReal;
                                   offset1: dReal; offset2: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the Universal axis1 as if the 2 bodies were already at 
  ##           offset1 and offset2 appart with respect to axis1 and axis2.
  ##    @ingroup joints
  ##   
  ##    This function initialize the axis1 and the relative orientation of 
  ##    each body as if body1 was rotated around the new axis1 by the offset1 
  ##    value and as if body2 was rotated around the axis2 by offset2. \br
  ##    Ex:
  ##    <PRE>
  ##    dJointSetHuniversalAxis1(jId, 1, 0, 0);
  ##    If you request the position you will have: dJointGetUniversalAngle1(jId) == 0
  ##    If you request the position you will have: dJointGetUniversalAngle2(jId) == 0
  ##    dJointSetHuniversalAxis1Offset(jId, 1, 0, 0, 0.2, 0.17);
  ##    If you request the position you will have: dJointGetUniversalAngle1(jId) == 0.2
  ##    If you request the position you will have: dJointGetUniversalAngle2(jId) == 0.17
  ##    </PRE>
  ##   
  ##    @param j The Hinge joint ID for which the axis will be set
  ##    @param x The X component of the axis in world frame
  ##    @param y The Y component of the axis in world frame
  ##    @param z The Z component of the axis in world frame
  ##    @param angle The angle for the offset of the relative orientation.
  ##                 As if body1 was rotated by angle when the Axis was set (see below).
  ##                 The rotation is around the new Hinge axis.
  ##   
  ##    @note Usually the function dJointSetHingeAxis set the current position of body1
  ##          and body2 as the zero angle position. This function set the current position
  ##          as the if the 2 bodies where \b offsets appart.
  ##   
  ##    @note Any previous offsets are erased.
  ##   
  ##    @warning Calling dJointSetUniversalAnchor, dJointSetUnivesalAxis1, 
  ##             dJointSetUniversalAxis2, dJointSetUniversalAxis2Offset 
  ##             will reset the "zero" angle position.
proc dJointSetUniversalAxis2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis
  ##    @ingroup joints
proc dJointSetUniversalAxis2Offset*(a1: dJointID; x: dReal; y: dReal; z: dReal;
                                   offset1: dReal; offset2: dReal) {.importc, cdecl,
    impodeDyn.}
proc dJointSetUniversalParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointAddUniversalTorques*(joint: dJointID; torque1: dReal; torque2: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies torque1 about the universal's axis 1, torque2 about the
  ##    universal's axis 2.
  ##    @remarks This function is just a wrapper for dBodyAddTorque().
  ##    @ingroup joints
proc dJointSetPRAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor
  ##    @ingroup joints
proc dJointSetPRAxis1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the prismatic articulation
  ##    @ingroup joints
proc dJointSetPRAxis2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the rotoide articulation
  ##    @ingroup joints
proc dJointSetPRParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
  ##   
  ##    @note parameterX where X equal 2 refer to parameter for the rotoide articulation
proc dJointAddPRTorque*(j: dJointID; torque: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies the torque about the rotoide axis of the PR joint
  ##   
  ##    That is, it applies a torque with specified magnitude in the direction 
  ##    of the rotoide axis, to body 1, and with the same magnitude but in opposite
  ##    direction to body 2. This function is just a wrapper for dBodyAddTorque()}
  ##    @ingroup joints
proc dJointSetPUAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor
  ##    @ingroup joints
proc dJointSetPUAnchorDelta*(a1: dJointID; x: dReal; y: dReal; z: dReal; dx: dReal;
                            dy: dReal; dz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor
  ##    @ingroup joints
proc dJointSetPUAnchorOffset*(a1: dJointID; x: dReal; y: dReal; z: dReal; dx: dReal;
                             dy: dReal; dz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the PU anchor as if the 2 bodies were already at [dx, dy, dz] appart.
  ##    @ingroup joints
  ##   
  ##    This function initialize the anchor and the relative position of each body
  ##    as if the position between body1 and body2 was already the projection of [dx, dy, dz]
  ##    along the Piston axis. (i.e as if the body1 was at its current position - [dx,dy,dy] when the
  ##    axis is set).
  ##    Ex:
  ##    <PRE>
  ##    dReal offset = 3;
  ##    dVector3 axis;
  ##    dJointGetPUAxis(jId, axis);
  ##    dJointSetPUAnchor(jId, 0, 0, 0);
  ##    If you request the position you will have: dJointGetPUPosition(jId) == 0
  ##    dJointSetPUAnchorOffset(jId, 0, 0, 0, axis[X]offset, axis[Y]offset, axis[Z]offset);
  ##    If you request the position you will have: dJointGetPUPosition(jId) == offset
  ##    </PRE>
  ##    @param j The PU joint for which the anchor point will be set
  ##    @param x The X position of the anchor point in world frame
  ##    @param y The Y position of the anchor point in world frame
  ##    @param z The Z position of the anchor point in world frame
  ##    @param dx A delta to be substracted to the X position as if the anchor was set
  ##              when body1 was at current_position[X] - dx
  ##    @param dx A delta to be substracted to the Y position as if the anchor was set
  ##              when body1 was at current_position[Y] - dy
  ##    @param dx A delta to be substracted to the Z position as if the anchor was set
  ##              when body1 was at current_position[Z] - dz
proc dJointSetPUAxis1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the first axis or the universal articulation
  ##    @ingroup joints
proc dJointSetPUAxis2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the second axis or the universal articulation
  ##    @ingroup joints
proc dJointSetPUAxis3*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the prismatic articulation
  ##    @ingroup joints
proc dJointSetPUAxisP*(id: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the axis for the prismatic articulation
  ##    @ingroup joints
  ##    @note This function was added for convenience it is the same as
  ##          dJointSetPUAxis3
proc dJointSetPUParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
  ##   
  ##    @note parameterX where X equal 2 refer to parameter for second axis of the
  ##          universal articulation
  ##    @note parameterX where X equal 3 refer to parameter for prismatic
  ##          articulation
proc dJointAddPUTorque*(j: dJointID; torque: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies the torque about the rotoide axis of the PU joint
  ##   
  ##    That is, it applies a torque with specified magnitude in the direction
  ##    of the rotoide axis, to body 1, and with the same magnitude but in opposite
  ##    direction to body 2. This function is just a wrapper for dBodyAddTorque()}
  ##    @ingroup joints
proc dJointSetPistonAnchor*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the joint anchor
  ##    @ingroup joints
proc dJointSetPistonAnchorOffset*(j: dJointID; x: dReal; y: dReal; z: dReal; dx: dReal;
                                 dy: dReal; dz: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the Piston anchor as if the 2 bodies were already at [dx,dy, dz] appart.
  ##    @ingroup joints
  ##   
  ##    This function initialize the anchor and the relative position of each body
  ##    as if the position between body1 and body2 was already the projection of [dx, dy, dz]
  ##    along the Piston axis. (i.e as if the body1 was at its current position - [dx,dy,dy] when the
  ##    axis is set).
  ##    Ex:
  ##    <PRE>
  ##    dReal offset = 3;
  ##    dVector3 axis;
  ##    dJointGetPistonAxis(jId, axis);
  ##    dJointSetPistonAnchor(jId, 0, 0, 0);
  ##    If you request the position you will have: dJointGetPistonPosition(jId) == 0
  ##    dJointSetPistonAnchorOffset(jId, 0, 0, 0, axis[X]offset, axis[Y]offset, axis[Z]offset);
  ##    If you request the position you will have: dJointGetPistonPosition(jId) == offset
  ##    </PRE>
  ##    @param j The Piston joint for which the anchor point will be set
  ##    @param x The X position of the anchor point in world frame
  ##    @param y The Y position of the anchor point in world frame
  ##    @param z The Z position of the anchor point in world frame
  ##    @param dx A delta to be substracted to the X position as if the anchor was set
  ##              when body1 was at current_position[X] - dx
  ##    @param dx A delta to be substracted to the Y position as if the anchor was set
  ##              when body1 was at current_position[Y] - dy
  ##    @param dx A delta to be substracted to the Z position as if the anchor was set
  ##              when body1 was at current_position[Z] - dz
proc dJointSetPistonAxis*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the joint axis
  ##    @ingroup joints
proc dJointSetPistonAxisDelta*(j: dJointID; x: dReal; y: dReal; z: dReal; ax: dReal;
                              ay: dReal; az: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    This function set prismatic axis of the joint and also set the position
  ##    of the joint.
  ##   
  ##    @ingroup joints
  ##    @param j The joint affected by this function
  ##    @param x The x component of the axis
  ##    @param y The y component of the axis
  ##    @param z The z component of the axis
  ##    @param dx The Initial position of the prismatic join in the x direction
  ##    @param dy The Initial position of the prismatic join in the y direction
  ##    @param dz The Initial position of the prismatic join in the z direction
proc dJointSetPistonParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointAddPistonForce*(joint: dJointID; force: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies the given force in the slider's direction.
  ##   
  ##    That is, it applies a force with specified magnitude, in the direction of
  ##    prismatic's axis, to body1, and with the same magnitude but opposite
  ##    direction to body2.  This function is just a wrapper for dBodyAddForce().
  ##    @ingroup joints
proc dJointSetFixed*(a1: dJointID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Call this on the fixed joint after it has been attached to
  ##    remember the current desired relative offset and desired relative
  ##    rotation between the bodies.
  ##    @ingroup joints
proc dJointSetFixedParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Sets joint parameter
  ##   
  ##    @ingroup joints
proc dJointSetAMotorNumAxes*(a1: dJointID; num: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the nr of axes
  ##    @param num 0..3
  ##    @ingroup joints
proc dJointSetAMotorAxis*(a1: dJointID; anum: cint; rel: cint; x: dReal; y: dReal; z: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis
  ##    @ingroup joints
proc dJointSetAMotorAngle*(a1: dJointID; anum: cint; angle: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Tell the AMotor what the current angle is along axis anum.
  ##   
  ##    This function should only be called in dAMotorUser mode, because in this
  ##    mode the AMotor has no other way of knowing the joint angles.
  ##    The angle information is needed if stops have been set along the axis,
  ##    but it is not needed for axis motors.
  ##    @ingroup joints
proc dJointSetAMotorParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointSetAMotorMode*(a1: dJointID; mode: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set mode
  ##    @ingroup joints
proc dJointAddAMotorTorques*(a1: dJointID; torque1: dReal; torque2: dReal;
                            torque3: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Applies torque0 about the AMotor's axis 0, torque1 about the
  ##    AMotor's axis 1, and torque2 about the AMotor's axis 2.
  ##    @remarks
  ##    If the motor has fewer than three axes, the higher torques are ignored.
  ##    This function is just a wrapper for dBodyAddTorque().
  ##    @ingroup joints
proc dJointSetLMotorNumAxes*(a1: dJointID; num: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the number of axes that will be controlled by the LMotor.
  ##    @param num can range from 0 (which effectively deactivates the joint) to 3.
  ##    @ingroup joints
proc dJointSetLMotorAxis*(a1: dJointID; anum: cint; rel: cint; x: dReal; y: dReal; z: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the AMotor axes.
  ##    @param anum selects the axis to change (0,1 or 2).
  ##    @param rel Each axis can have one of three relative orientation'' modes
  ##    \li 0: The axis is anchored to the global frame.
  ##    \li 1: The axis is anchored to the first body.
  ##    \li 2: The axis is anchored to the second body.
  ##    @remarks The axis vector is always specified in global coordinates
  ##    regardless of the setting of rel.
  ##    @ingroup joints
proc dJointSetLMotorParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set joint parameter
  ##    @ingroup joints
proc dJointSetPlane2DXParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @ingroup joints
proc dJointSetPlane2DYParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
proc dJointSetPlane2DAngleParam*(a1: dJointID; parameter: cint; value: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @ingroup joints
proc dJointGetBallAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##   
  ##    This returns the point on body 1. If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2.
proc dJointGetBallAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##   
  ##    This returns the point on body 2. You can think of a ball and socket
  ##    joint as trying to keep the result of dJointGetBallAnchor() and
  ##    dJointGetBallAnchor2() the same.  If the joint is perfectly satisfied,
  ##    this function will return the same value as dJointGetBallAnchor() to
  ##    within roundoff errors. dJointGetBallAnchor2() can be used, along with
  ##    dJointGetBallAnchor(), to see how far the joint has come apart.
proc dJointGetBallParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetHingeAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the hinge anchor point, in world coordinates.
  ##   
  ##    This returns the point on body 1. If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2.
  ##    @ingroup joints
proc dJointGetHingeAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return The point on body 2. If the joint is perfectly satisfied,
  ##    this will return the same value as dJointGetHingeAnchor().
  ##    If not, this value will be slightly different.
  ##    This can be used, for example, to see how far the joint has come apart.
  ##    @ingroup joints
proc dJointGetHingeAxis*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get axis
  ##    @ingroup joints
proc dJointGetHingeParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetHingeAngle*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the hinge angle.
  ##   
  ##    The angle is measured between the two bodies, or between the body and
  ##    the static environment.
  ##    The angle will be between -pi..pi.
  ##    Give the relative rotation with respect to the Hinge axis of Body 1 with
  ##    respect to Body 2.
  ##    When the hinge anchor or axis is set, the current position of the attached
  ##    bodies is examined and that position will be the zero angle.
  ##    @ingroup joints
proc dJointGetHingeAngleRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the hinge angle time derivative.
  ##    @ingroup joints
proc dJointGetSliderPosition*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the slider linear position (i.e. the slider's extension)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##   
  ##    The position is the distance, with respect to the zero position,
  ##    along the slider axis of body 1 with respect to
  ##    body 2. (A NULL body is replaced by the world).
  ##    @ingroup joints
proc dJointGetSliderPositionRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the slider linear position's time derivative.
  ##    @ingroup joints
proc dJointGetSliderAxis*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the slider axis
  ##    @ingroup joints
proc dJointGetSliderParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetHinge2Anchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return the point on body 1.  If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2.
  ##    @ingroup joints
proc dJointGetHinge2Anchor2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    This returns the point on body 2. If the joint is perfectly satisfied,
  ##    this will return the same value as dJointGetHinge2Anchor.
  ##    If not, this value will be slightly different.
  ##    This can be used, for example, to see how far the joint has come apart.
  ##    @ingroup joints
proc dJointGetHinge2Axis1*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get joint axis
  ##    @ingroup joints
proc dJointGetHinge2Axis2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get joint axis
  ##    @ingroup joints
proc dJointGetHinge2Param*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetHinge2Angle1*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetHinge2Angle2*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetHinge2Angle1Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get time derivative of angle
  ##    @ingroup joints
proc dJointGetHinge2Angle2Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get time derivative of angle
  ##    @ingroup joints
proc dJointGetUniversalAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return the point on body 1. If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2.
  ##    @ingroup joints
proc dJointGetUniversalAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return This returns the point on body 2.
  ##    @remarks
  ##    You can think of the ball and socket part of a universal joint as
  ##    trying to keep the result of dJointGetBallAnchor() and
  ##    dJointGetBallAnchor2() the same. If the joint is
  ##    perfectly satisfied, this function will return the same value
  ##    as dJointGetUniversalAnchor() to within roundoff errors.
  ##    dJointGetUniversalAnchor2() can be used, along with
  ##    dJointGetUniversalAnchor(), to see how far the joint has come apart.
  ##    @ingroup joints
proc dJointGetUniversalAxis1*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get axis
  ##    @ingroup joints
proc dJointGetUniversalAxis2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get axis
  ##    @ingroup joints
proc dJointGetUniversalParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetUniversalAngles*(a1: dJointID; angle1: ptr dReal; angle2: ptr dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get both angles at the same time.
  ##    @ingroup joints
  ##   
  ##    @param joint   The universal joint for which we want to calculate the angles
  ##    @param angle1  The angle between the body1 and the axis 1
  ##    @param angle2  The angle between the body2 and the axis 2
  ##   
  ##    @note This function combine getUniversalAngle1 and getUniversalAngle2 together
  ##          and try to avoid redundant calculation
proc dJointGetUniversalAngle1*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetUniversalAngle2*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetUniversalAngle1Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get time derivative of angle
  ##    @ingroup joints
proc dJointGetUniversalAngle2Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get time derivative of angle
  ##    @ingroup joints
proc dJointGetPRAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return the point on body 1. If the joint is perfectly satisfied, 
  ##    this will be the same as the point on body 2.
  ##    @ingroup joints
proc dJointGetPRPosition*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PR linear position (i.e. the prismatic's extension)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##   
  ##    The position is the "oriented" length between the
  ##    position = (Prismatic axis) dot_product [(body1 + offset) - (body2 + anchor2)]
  ##   
  ##    @ingroup joints
proc dJointGetPRPositionRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PR linear position's time derivative
  ##   
  ##    @ingroup joints
proc dJointGetPRAngle*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PR angular position (i.e. the  twist between the 2 bodies)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##    @ingroup joints
proc dJointGetPRAngleRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PR angular position's time derivative
  ##   
  ##    @ingroup joints
proc dJointGetPRAxis1*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the prismatic axis
  ##    @ingroup joints
proc dJointGetPRAxis2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the Rotoide axis
  ##    @ingroup joints
proc dJointGetPRParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetPUAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor point, in world coordinates.
  ##    @return the point on body 1. If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2.
  ##    @ingroup joints
proc dJointGetPUPosition*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PU linear position (i.e. the prismatic's extension)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##   
  ##    The position is the "oriented" length between the
  ##    position = (Prismatic axis) dot_product [(body1 + offset) - (body2 + anchor2)]
  ##   
  ##    @ingroup joints
proc dJointGetPUPositionRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the PR linear position's time derivative
  ##   
  ##    @ingroup joints
proc dJointGetPUAxis1*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the first axis of the universal component of the joint
  ##    @ingroup joints
proc dJointGetPUAxis2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the second axis of the Universal component of the joint
  ##    @ingroup joints
proc dJointGetPUAxis3*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the prismatic axis
  ##    @ingroup joints
proc dJointGetPUAxisP*(id: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the prismatic axis
  ##    @ingroup joints
  ##   
  ##    @note This function was added for convenience it is the same as
  ##          dJointGetPUAxis3
proc dJointGetPUAngles*(a1: dJointID; angle1: ptr dReal; angle2: ptr dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get both angles at the same time.
  ##    @ingroup joints
  ##   
  ##    @param joint   The Prismatic universal joint for which we want to calculate the angles
  ##    @param angle1  The angle between the body1 and the axis 1
  ##    @param angle2  The angle between the body2 and the axis 2
  ##   
  ##    @note This function combine dJointGetPUAngle1 and dJointGetPUAngle2 together
  ##          and try to avoid redundant calculation
proc dJointGetPUAngle1*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetPUAngle1Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief @brief Get time derivative of angle1
  ##   
  ##    @ingroup joints
proc dJointGetPUAngle2*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get angle
  ##    @ingroup joints
proc dJointGetPUAngle2Rate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief @brief Get time derivative of angle2
  ##   
  ##    @ingroup joints
proc dJointGetPUParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetPistonPosition*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the Piston linear position (i.e. the piston's extension)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##    @ingroup joints
proc dJointGetPistonPositionRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the piston linear position's time derivative.
  ##    @ingroup joints
proc dJointGetPistonAngle*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the Piston angular position (i.e. the  twist between the 2 bodies)
  ##   
  ##    When the axis is set, the current position of the attached bodies is
  ##    examined and that position will be the zero position.
  ##    @ingroup joints
proc dJointGetPistonAngleRate*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the piston angular position's time derivative.
  ##    @ingroup joints
proc dJointGetPistonAnchor*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor
  ##   
  ##    This returns the point on body 1. If the joint is perfectly satisfied,
  ##    this will be the same as the point on body 2 in direction perpendicular
  ##    to the prismatic axis.
  ##   
  ##    @ingroup joints
proc dJointGetPistonAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the joint anchor w.r.t. body 2
  ##   
  ##    This returns the point on body 2. You can think of a Piston
  ##    joint as trying to keep the result of dJointGetPistonAnchor() and
  ##    dJointGetPistonAnchor2() the same in the direction perpendicular to the
  ##    pirsmatic axis. If the joint is perfectly satisfied,
  ##    this function will return the same value as dJointGetPistonAnchor() to
  ##    within roundoff errors. dJointGetPistonAnchor2() can be used, along with
  ##    dJointGetPistonAnchor(), to see how far the joint has come apart.
  ##   
  ##    @ingroup joints
proc dJointGetPistonAxis*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the prismatic axis (This is also the rotoide axis.
  ##    @ingroup joints
proc dJointGetPistonParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetAMotorNumAxes*(a1: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the number of angular axes that will be controlled by the
  ##    AMotor.
  ##    @param num can range from 0 (which effectively deactivates the
  ##    joint) to 3.
  ##    This is automatically set to 3 in dAMotorEuler mode.
  ##    @ingroup joints
proc dJointGetAMotorAxis*(a1: dJointID; anum: cint; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the AMotor axes.
  ##    @param anum selects the axis to change (0,1 or 2).
  ##    @param rel Each axis can have one of three relative orientation'' modes.
  ##    \li 0: The axis is anchored to the global frame.
  ##    \li 1: The axis is anchored to the first body.
  ##    \li 2: The axis is anchored to the second body.
  ##    @ingroup joints
proc dJointGetAMotorAxisRel*(a1: dJointID; anum: cint): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get axis
  ##    @remarks
  ##    The axis vector is always specified in global coordinates regardless
  ##    of the setting of rel.
  ##    There are two GetAMotorAxis functions, one to return the axis and one to
  ##    return the relative mode.
  ##   
  ##    For dAMotorEuler mode:
  ##    \li	Only axes 0 and 2 need to be set. Axis 1 will be determined
  ##   	automatically at each time step.
  ##    \li	Axes 0 and 2 must be perpendicular to each other.
  ##    \li	Axis 0 must be anchored to the first body, axis 2 must be anchored
  ##   	to the second body.
  ##    @ingroup joints
proc dJointGetAMotorAngle*(a1: dJointID; anum: cint): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the current angle for axis.
  ##    @remarks
  ##    In dAMotorUser mode this is simply the value that was set with
  ##    dJointSetAMotorAngle().
  ##    In dAMotorEuler mode this is the corresponding euler angle.
  ##    @ingroup joints
proc dJointGetAMotorAngleRate*(a1: dJointID; anum: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the current angle rate for axis anum.
  ##    @remarks
  ##    In dAMotorUser mode this is always zero, as not enough information is
  ##    available.
  ##    In dAMotorEuler mode this is the corresponding euler angle rate.
  ##    @ingroup joints
proc dJointGetAMotorParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetAMotorMode*(a1: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the angular motor mode.
  ##    @param mode must be one of the following constants:
  ##    \li dAMotorUser The AMotor axes and joint angle settings are entirely
  ##    controlled by the user.  This is the default mode.
  ##    \li dAMotorEuler Euler angles are automatically computed.
  ##    The axis a1 is also automatically computed.
  ##    The AMotor axes must be set correctly when in this mode,
  ##    as described below.
  ##    When this mode is initially set the current relative orientations
  ##    of the bodies will correspond to all euler angles at zero.
  ##    @ingroup joints
proc dJointGetLMotorNumAxes*(a1: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get nr of axes.
  ##    @ingroup joints
proc dJointGetLMotorAxis*(a1: dJointID; anum: cint; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get axis.
  ##    @ingroup joints
proc dJointGetLMotorParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetFixedParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get joint parameter
  ##    @ingroup joints
proc dJointGetTransmissionContactPoint1*(a1: dJointID; result: dVector3) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the contact point of the first wheel of the Transmission joint.
  ##    @ingroup joints
proc dJointGetTransmissionContactPoint2*(a1: dJointID; result: dVector3) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get contact point of the second wheel of the Transmission joint.
  ##    @ingroup joints
proc dJointSetTransmissionAxis1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the first axis for the Transmission joint
  ##    @remarks This is the axis around which the first body is allowed to
  ##    revolve and is attached to it.  It is given in global coordinates
  ##    and can only be set explicitly in intersecting-axes mode.  For the
  ##    parallel-axes and chain modes which share one common axis of
  ##    revolution for both gears dJointSetTransmissionAxis should be used.
  ##    @ingroup joints
proc dJointGetTransmissionAxis1*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get first axis for the Transmission joint
  ##    @remarks In parallel-axes and chain mode the common axis with
  ##    respect to the first body is returned.  If the joint constraint is
  ##    satisfied it should be the same as the axis return with
  ##    dJointGetTransmissionAxis2 or dJointGetTransmissionAxis.
  ##    @ingroup joints
proc dJointSetTransmissionAxis2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set second axis for the Transmission joint
  ##    @remarks This is the axis around which the second body is allowed
  ##    to revolve and is attached to it.  It is given in global
  ##    coordinates and can only be set explicitly in intersecting-axes
  ##    mode.  For the parallel-axes and chain modes which share one common
  ##    axis of revolution for both gears dJointSetTransmissionAxis should
  ##    be used.
  ##    @ingroup joints
proc dJointGetTransmissionAxis2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get second axis for the Transmission joint
  ##    @remarks In parallel-axes and chain mode the common axis with
  ##    respect to the second body is returned.  If the joint constraint is
  ##    satisfied it should be the same as the axis return with
  ##    dJointGetTransmissionAxis1 or dJointGetTransmissionAxis.
  ##    @ingroup joints
proc dJointSetTransmissionAnchor1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the first anchor for the Transmission joint
  ##    @remarks This is the point of attachment of the wheel on the
  ##    first body.  It is given in global coordinates.
  ##    @ingroup joints
proc dJointGetTransmissionAnchor1*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get the first anchor of the Transmission joint
  ##    @ingroup joints
proc dJointSetTransmissionAnchor2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the second anchor for the Transmission joint
  ##    @remarks This is the point of attachment of the wheel on the
  ##    second body.  It is given in global coordinates.
  ##    @ingroup joints
proc dJointGetTransmissionAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get the second anchor for the Transmission joint
  ##    @ingroup joints
proc dJointSetTransmissionParam*(a1: dJointID; parameter: cint; value: dReal) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set a Transmission joint parameter
  ##    @ingroup joints
proc dJointGetTransmissionParam*(a1: dJointID; parameter: cint): dReal {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get a Transmission joint parameter
  ##    @ingroup joints
proc dJointSetTransmissionMode*(j: dJointID; mode: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the Transmission joint mode
  ##    @remarks The mode can be one of dTransmissionParallelAxes,
  ##    dTransmissionIntersectingAxes and dTransmissionChainDrive simulating a
  ##    set of parallel-axes gears, intersecting-axes beveled gears or
  ##    chain and sprockets respectively.
  ##    @ingroup joints
proc dJointGetTransmissionMode*(j: dJointID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the Transmission joint mode
  ##    @ingroup joints
proc dJointSetTransmissionRatio*(j: dJointID; ratio: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the Transmission ratio
  ##    @remarks This is the ratio of the angular speed of the first gear
  ##    to that of the second gear.  It can only be set explicitly in
  ##    parallel-axes mode.  In intersecting-axes mode the ratio is defined
  ##    implicitly by the initial configuration of the wheels and in chain
  ##    mode it is defined implicitly be the wheel radii.
  ##    @ingroup joints
proc dJointGetTransmissionRatio*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the Transmission joint ratio
  ##    @ingroup joints
proc dJointSetTransmissionAxis*(j: dJointID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the common axis for both wheels of the Transmission joint
  ##    @remarks This sets the common axis of revolution for both wheels
  ##    and should only be used in parallel-axes or chain mode.  For
  ##    intersecting-axes mode where each wheel axis needs to be specified
  ##    individually dJointSetTransmissionAxis1 and
  ##    dJointSetTransmissionAxis2 should be used.  The axis is given in
  ##    global coordinates
  ##    @ingroup joints
proc dJointGetTransmissionAxis*(j: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get the common axis for both wheels of the Transmission joint
  ##    @ingroup joints
proc dJointGetTransmissionAngle1*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the phase, that is the traversed angle for the first
  ##    wheel of the Transmission joint
  ##    @ingroup joints
proc dJointGetTransmissionAngle2*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the phase, that is the traversed angle for the second
  ##    wheel of the Transmission joint
  ##    @ingroup joints
proc dJointGetTransmissionRadius1*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the radius of the first wheel of the Transmission joint
  ##    @ingroup joints
proc dJointGetTransmissionRadius2*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the radius of the second wheel of the Transmission joint
  ##    @ingroup joints
proc dJointSetTransmissionRadius1*(j: dJointID; radius: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the radius of the first wheel of the Transmission joint
  ##    @remarks The wheel radii can only be set explicitly in chain mode.
  ##    In the other modes they're defined implicitly by the initial
  ##    configuration and ratio of the wheels.
  ##    @ingroup joints
proc dJointSetTransmissionRadius2*(j: dJointID; radius: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the radius of the second wheel of the Transmission joint
  ##    @remarks The wheel radii can only be set explicitly in chain mode.
  ##    In the other modes they're defined implicitly by the initial
  ##    configuration and ratio of the wheels.
  ##    @ingroup joints
proc dJointGetTransmissionBacklash*(j: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the backlash of the Transmission joint
  ##    @ingroup joints
proc dJointSetTransmissionBacklash*(j: dJointID; backlash: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set the backlash of the Transmission joint
  ##    @remarks Backlash is the clearance in the mesh of the wheels of the
  ##    transmission and is defined as the maximum distance that the
  ##    geometric contact point can travel without any actual contact or
  ##    transfer of power between the wheels.  This can be converted in
  ##    degrees of revolution for each wheel by dividing by the wheel's
  ##    radius.  To further illustrate this consider the situation where a
  ##    wheel of radius r_1 is driving another wheel of radius r_2 and
  ##    there is an amount of backlash equal to b in their mesh.  If the
  ##    driving wheel were to instantaneously stop there would be no
  ##    contact and hence the driven wheel would continue to turn for
  ##    another b / r_2 radians until all the backlash in the mesh was take
  ##    up and contact restored with the relationship of driving and driven
  ##    wheel reversed.  The backlash is therefore given in untis of
  ##    length.
  ##    @ingroup joints
proc dJointSetDBallAnchor1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor1 for double ball joint
  ##    @ingroup joints
proc dJointSetDBallAnchor2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor2 for double ball joint
  ##    @ingroup joints
proc dJointGetDBallAnchor1*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get anchor1 from double ball joint
  ##    @ingroup joints
proc dJointGetDBallAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get anchor2 from double ball joint
  ##    @ingroup joints
proc dJointGetDBallDistance*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the target distance from double ball joint
  ##    @ingroup joints
proc dJointSetDBallDistance*(a1: dJointID; dist: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set the target distance for the double ball joint
  ##    @ingroup joints
proc dJointSetDBallParam*(a1: dJointID; parameter: cint; value: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set double ball joint parameter
  ##    @ingroup joints
proc dJointGetDBallParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get double ball joint parameter
  ##    @ingroup joints
proc dJointSetDHingeAxis*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set axis for double hinge joint
  ##    @ingroup joints
proc dJointGetDHingeAxis*(a1: dJointID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get axis for double hinge joint
  ##    @ingroup joints
proc dJointSetDHingeAnchor1*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor1 for double hinge joint
  ##    @ingroup joints
proc dJointSetDHingeAnchor2*(a1: dJointID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief set anchor2 for double hinge joint
  ##    @ingroup joints
proc dJointGetDHingeAnchor1*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get anchor1 from double hinge joint
  ##    @ingroup joints
proc dJointGetDHingeAnchor2*(a1: dJointID; result: dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get anchor2 from double hinge joint
  ##    @ingroup joints
proc dJointGetDHingeDistance*(a1: dJointID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief get the set distance from double hinge joint
  ##    @ingroup joints
proc dJointSetDHingeParam*(a1: dJointID; parameter: cint; value: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief set double hinge joint parameter
  ##    @ingroup joints
proc dJointGetDHingeParam*(a1: dJointID; parameter: cint): dReal {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief get double hinge joint parameter
  ##    @ingroup joints
proc dConnectingJoint*(a1: dBodyID; a2: dBodyID): dJointID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @ingroup joints
proc dConnectingJointList*(a1: dBodyID; a2: dBodyID; a3: ptr dJointID): cint {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @ingroup joints
proc dAreConnected*(a1: dBodyID; a2: dBodyID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Utility function
  ##    @return 1 if the two bodies are connected together by
  ##    a joint, otherwise return 0.
  ##    @ingroup joints
proc dAreConnectedExcluding*(body1: dBodyID; body2: dBodyID; joint_type: cint): cint {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Utility function
  ##    @return 1 if the two bodies are connected together by
  ##    a joint that does not have type @arg{joint_type}, otherwise return 0.
  ##    @param body1 A body to check.
  ##    @param body2 A body to check.
  ##    @param joint_type is a dJointTypeXXX constant.
  ##    This is useful for deciding whether to add contact joints between two bodies:
  ##    if they are already connected by non-contact joints then it may not be
  ##    appropriate to add contacts, however it is okay to add more contact between-
  ##    bodies that already have contacts.
  ##    @ingroup joints
proc dSimpleSpaceCreate*(space: dSpaceID): dSpaceID {.importc, cdecl, impodeDyn.}
proc dHashSpaceCreate*(space: dSpaceID): dSpaceID {.importc, cdecl, impodeDyn.}
proc dQuadTreeSpaceCreate*(space: dSpaceID; Center: dVector3; Extents: dVector3;
                          Depth: cint): dSpaceID {.importc, cdecl, impodeDyn.}
proc dSweepAndPruneSpaceCreate*(space: dSpaceID; axisorder: cint): dSpaceID {.importc,
    cdecl, impodeDyn.}
proc dSpaceDestroy*(a1: dSpaceID) {.importc, cdecl, impodeDyn.}
proc dHashSpaceSetLevels*(space: dSpaceID; minlevel: cint; maxlevel: cint) {.importc,
    cdecl, impodeDyn.}
proc dHashSpaceGetLevels*(space: dSpaceID; minlevel: ptr cint; maxlevel: ptr cint) {.
    importc, cdecl, impodeDyn.}
proc dSpaceSetCleanup*(space: dSpaceID; mode: cint) {.importc, cdecl, impodeDyn.}
proc dSpaceGetCleanup*(space: dSpaceID): cint {.importc, cdecl, impodeDyn.}
proc dSpaceSetSublevel*(space: dSpaceID; sublevel: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Sets sublevel value for a space.
  ##   
  ##    Sublevel affects how the space is handled in dSpaceCollide2 when it is collided
  ##    with another space. If sublevels of both spaces match, the function iterates 
  ##    geometries of both spaces and collides them with each other. If sublevel of one
  ##    space is greater than the sublevel of another one, only the geometries of the 
  ##    space with greater sublevel are iterated, another space is passed into 
  ##    collision callback as a geometry itself. By default all the spaces are assigned
  ##    zero sublevel.
  ##   
  ##    @note
  ##    The space sublevel @e IS @e NOT automatically updated when one space is inserted
  ##    into another or removed from one. It is a client's responsibility to update sublevel
  ##    value if necessary.
  ##   
  ##    @param space the space to modify
  ##    @param sublevel the sublevel value to be assigned
  ##    @ingroup collide
  ##    @see dSpaceGetSublevel
  ##    @see dSpaceCollide2
proc dSpaceGetSublevel*(space: dSpaceID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Gets sublevel value of a space.
  ##   
  ##    Sublevel affects how the space is handled in dSpaceCollide2 when it is collided
  ##    with another space. See @c dSpaceSetSublevel for more details.
  ##   
  ##    @param space the space to query
  ##    @returns the sublevel value of the space
  ##    @ingroup collide
  ##    @see dSpaceSetSublevel
  ##    @see dSpaceCollide2
proc dSpaceSetManualCleanup*(space: dSpaceID; mode: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Sets manual cleanup flag for a space.
  ##   
  ##    Manual cleanup flag marks a space as eligible for manual thread data cleanup.
  ##    This function should be called for every space object right after creation in 
  ##    case if ODE has been initialized with @c dInitFlagManualThreadCleanup flag.
  ##    
  ##    Failure to set manual cleanup flag for a space may lead to some resources 
  ##    remaining leaked until the program exit.
  ##   
  ##    @param space the space to modify
  ##    @param mode 1 for manual cleanup mode and 0 for default cleanup mode
  ##    @ingroup collide
  ##    @see dSpaceGetManualCleanup
  ##    @see dInitODE2
proc dSpaceGetManualCleanup*(space: dSpaceID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get manual cleanup flag of a space.
  ##   
  ##    Manual cleanup flag marks a space space as eligible for manual thread data cleanup.
  ##    See @c dSpaceSetManualCleanup for more details.
  ##    
  ##    @param space the space to query
  ##    @returns 1 for manual cleanup mode and 0 for default cleanup mode of the space
  ##    @ingroup collide
  ##    @see dSpaceSetManualCleanup
  ##    @see dInitODE2
proc dSpaceAdd*(a1: dSpaceID; a2: dGeomID) {.importc, cdecl, impodeDyn.}
proc dSpaceRemove*(a1: dSpaceID; a2: dGeomID) {.importc, cdecl, impodeDyn.}
proc dSpaceQuery*(a1: dSpaceID; a2: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dSpaceClean*(a1: dSpaceID) {.importc, cdecl, impodeDyn.}
proc dSpaceGetNumGeoms*(a1: dSpaceID): cint {.importc, cdecl, impodeDyn.}
proc dSpaceGetGeom*(a1: dSpaceID; i: cint): dGeomID {.importc, cdecl, impodeDyn.}
proc dSpaceGetClass*(space: dSpaceID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Given a space, this returns its class.
  ##   
  ##    The ODE classes are:
  ##     @li dSimpleSpaceClass
  ##     @li dHashSpaceClass
  ##     @li dSweepAndPruneSpaceClass
  ##     @li dQuadTreeSpaceClass
  ##     @li dFirstUserClass
  ##     @li dLastUserClass
  ##   
  ##    The class id not defined by the user should be between
  ##    dFirstSpaceClass and dLastSpaceClass.
  ##   
  ##    User-defined class will return their own number.
  ##   
  ##    @param space the space to query
  ##    @returns The space class ID.
  ##    @ingroup collide
proc dGeomDestroy*(geom: dGeomID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001-2003 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##   
  ##    Open Dynamics Engine, Copyright (C) 2001,2002 Russell L. Smith.
  ##    All rights reserved.  Email: russ@q12.org   Web: www.q12.org
  ##   
  ##    This library is free software; you can redistribute it and/or
  ##    modify it under the terms of EITHER:
  ##      (1) The GNU Lesser General Public License as published by the Free
  ##          Software Foundation; either version 2.1 of the License, or (at
  ##          your option) any later version. The text of the GNU Lesser
  ##          General Public License is included with this library in the
  ##          file LICENSE.TXT.
  ##      (2) The BSD-style license that is included with this library in
  ##          the file LICENSE-BSD.TXT.
  ##   
  ##    This library is distributed in the hope that it will be useful,
  ##    but WITHOUT ANY WARRANTY; without even the implied warranty of
  ##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the files
  ##    LICENSE.TXT and LICENSE-BSD.TXT for more details.
  ##   
  ##   
  ##   
  ##    @defgroup collide Collision Detection
  ##   
  ##    ODE has two main components: a dynamics simulation engine and a collision
  ##    detection engine. The collision engine is given information about the
  ##    shape of each body. At each time step it figures out which bodies touch
  ##    each other and passes the resulting contact point information to the user.
  ##    The user in turn creates contact joints between bodies.
  ##   
  ##    Using ODE's collision detection is optional - an alternative collision
  ##    detection system can be used as long as it can supply the right kinds of
  ##    contact information.
  ##   
  ##   
  ##    general functions
  ##   
  ##    @brief Destroy a geom, removing it from any space.
  ##   
  ##    Destroy a geom, removing it from any space it is in first. This one
  ##    function destroys a geom of any type, but to create a geom you must call
  ##    a creation function for that type.
  ##   
  ##    When a space is destroyed, if its cleanup mode is 1 (the default) then all
  ##    the geoms in that space are automatically destroyed as well.
  ##   
  ##    @param geom the geom to be destroyed.
  ##    @ingroup collide
proc dGeomSetData*(geom: dGeomID; data: pointer) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the user-defined data pointer stored in the geom.
  ##   
  ##    @param geom the geom to hold the data
  ##    @param data the data pointer to be stored
  ##    @ingroup collide
proc dGeomGetData*(geom: dGeomID): pointer {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the user-defined data pointer stored in the geom.
  ##   
  ##    @param geom the geom containing the data
  ##    @ingroup collide
proc dGeomSetBody*(geom: dGeomID; body: dBodyID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the body associated with a placeable geom.
  ##   
  ##    Setting a body on a geom automatically combines the position vector and
  ##    rotation matrix of the body and geom, so that setting the position or
  ##    orientation of one will set the value for both objects. Setting a body
  ##    ID of zero gives the geom its own position and rotation, independent
  ##    from any body. If the geom was previously connected to a body then its
  ##    new independent position/rotation is set to the current position/rotation
  ##    of the body.
  ##   
  ##    Calling these functions on a non-placeable geom results in a runtime
  ##    error in the debug build of ODE.
  ##   
  ##    @param geom the geom to connect
  ##    @param body the body to attach to the geom
  ##    @ingroup collide
proc dGeomGetBody*(geom: dGeomID): dBodyID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the body associated with a placeable geom.
  ##    @param geom the geom to query.
  ##    @sa dGeomSetBody
  ##    @ingroup collide
proc dGeomSetPosition*(geom: dGeomID; x: dReal; y: dReal; z: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the position vector of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's position will also be changed.
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to set.
  ##    @param x the new X coordinate.
  ##    @param y the new Y coordinate.
  ##    @param z the new Z coordinate.
  ##    @sa dBodySetPosition
  ##    @ingroup collide
proc dGeomSetRotation*(geom: dGeomID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the rotation matrix of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's rotation will also be changed.
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to set.
  ##    @param R the new rotation matrix.
  ##    @sa dBodySetRotation
  ##    @ingroup collide
proc dGeomSetQuaternion*(geom: dGeomID; Q: dQuaternion) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the rotation of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's rotation will also be changed.
  ##   
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to set.
  ##    @param Q the new rotation.
  ##    @sa dBodySetQuaternion
  ##    @ingroup collide
proc dGeomGetPosition*(geom: dGeomID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the position vector of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's position will be returned.
  ##   
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to query.
  ##    @returns A pointer to the geom's position vector.
  ##    @remarks The returned value is a pointer to the geom's internal
  ##             data structure. It is valid until any changes are made
  ##             to the geom.
  ##    @sa dBodyGetPosition
  ##    @ingroup collide
proc dGeomCopyPosition*(geom: dGeomID; pos: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the position of a geom into a vector.
  ##    @ingroup collide
  ##    @param geom  the geom to query
  ##    @param pos   a copy of the geom position
  ##    @sa dGeomGetPosition
proc dGeomGetRotation*(geom: dGeomID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the rotation matrix of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's rotation will be returned.
  ##   
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to query.
  ##    @returns A pointer to the geom's rotation matrix.
  ##    @remarks The returned value is a pointer to the geom's internal
  ##             data structure. It is valid until any changes are made
  ##             to the geom.
  ##    @sa dBodyGetRotation
  ##    @ingroup collide
proc dGeomCopyRotation*(geom: dGeomID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the rotation matrix of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's rotation will be returned.
  ##   
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom   the geom to query.
  ##    @param R      a copy of the geom rotation
  ##    @sa dGeomGetRotation
  ##    @ingroup collide
proc dGeomGetQuaternion*(geom: dGeomID; result: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the rotation quaternion of a placeable geom.
  ##   
  ##    If the geom is attached to a body, the body's quaternion will be returned.
  ##   
  ##    Calling this function on a non-placeable geom results in a runtime error in
  ##    the debug build of ODE.
  ##   
  ##    @param geom the geom to query.
  ##    @param result a copy of the rotation quaternion.
  ##    @sa dBodyGetQuaternion
  ##    @ingroup collide
proc dGeomGetAABB*(geom: dGeomID; aabb: array[6, dReal]) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the axis-aligned bounding box.
  ##   
  ##    Return in aabb an axis aligned bounding box that surrounds the given geom.
  ##    The aabb array has elements (minx, maxx, miny, maxy, minz, maxz). If the
  ##    geom is a space, a bounding box that surrounds all contained geoms is
  ##    returned.
  ##   
  ##    This function may return a pre-computed cached bounding box, if it can
  ##    determine that the geom has not moved since the last time the bounding
  ##    box was computed.
  ##   
  ##    @param geom the geom to query
  ##    @param aabb the returned bounding box
  ##    @ingroup collide
proc dGeomIsSpace*(geom: dGeomID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Determing if a geom is a space.
  ##    @param geom the geom to query
  ##    @returns Non-zero if the geom is a space, zero otherwise.
  ##    @ingroup collide
proc dGeomGetSpace*(a1: dGeomID): dSpaceID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Query for the space containing a particular geom.
  ##    @param geom the geom to query
  ##    @returns The space that contains the geom, or NULL if the geom is
  ##             not contained by a space.
  ##    @ingroup collide
proc dGeomGetClass*(geom: dGeomID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Given a geom, this returns its class.
  ##   
  ##    The ODE classes are:
  ##     @li dSphereClass
  ##     @li dBoxClass
  ##     @li dCylinderClass
  ##     @li dPlaneClass
  ##     @li dRayClass
  ##     @li dConvexClass
  ##     @li dGeomTransformClass
  ##     @li dTriMeshClass
  ##     @li dSimpleSpaceClass
  ##     @li dHashSpaceClass
  ##     @li dQuadTreeSpaceClass
  ##     @li dFirstUserClass
  ##     @li dLastUserClass
  ##   
  ##    User-defined class will return their own number.
  ##   
  ##    @param geom the geom to query
  ##    @returns The geom class ID.
  ##    @ingroup collide
proc dGeomSetCategoryBits*(geom: dGeomID; bits: culong) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the "category" bitfield for the given geom.
  ##   
  ##    The category bitfield is used by spaces to govern which geoms will
  ##    interact with each other. The bitfield is guaranteed to be at least
  ##    32 bits wide. The default category values for newly created geoms
  ##    have all bits set.
  ##   
  ##    @param geom the geom to set
  ##    @param bits the new bitfield value
  ##    @ingroup collide
proc dGeomSetCollideBits*(geom: dGeomID; bits: culong) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the "collide" bitfield for the given geom.
  ##   
  ##    The collide bitfield is used by spaces to govern which geoms will
  ##    interact with each other. The bitfield is guaranteed to be at least
  ##    32 bits wide. The default category values for newly created geoms
  ##    have all bits set.
  ##   
  ##    @param geom the geom to set
  ##    @param bits the new bitfield value
  ##    @ingroup collide
proc dGeomGetCategoryBits*(a1: dGeomID): culong {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the "category" bitfield for the given geom.
  ##   
  ##    @param geom the geom to set
  ##    @param bits the new bitfield value
  ##    @sa dGeomSetCategoryBits
  ##    @ingroup collide
proc dGeomGetCollideBits*(a1: dGeomID): culong {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the "collide" bitfield for the given geom.
  ##   
  ##    @param geom the geom to set
  ##    @param bits the new bitfield value
  ##    @sa dGeomSetCollideBits
  ##    @ingroup collide
proc dGeomEnable*(geom: dGeomID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Enable a geom.
  ##   
  ##    Disabled geoms are completely ignored by dSpaceCollide and dSpaceCollide2,
  ##    although they can still be members of a space. New geoms are created in
  ##    the enabled state.
  ##   
  ##    @param geom   the geom to enable
  ##    @sa dGeomDisable
  ##    @sa dGeomIsEnabled
  ##    @ingroup collide
proc dGeomDisable*(geom: dGeomID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Disable a geom.
  ##   
  ##    Disabled geoms are completely ignored by dSpaceCollide and dSpaceCollide2,
  ##    although they can still be members of a space. New geoms are created in
  ##    the enabled state.
  ##   
  ##    @param geom   the geom to disable
  ##    @sa dGeomDisable
  ##    @sa dGeomIsEnabled
  ##    @ingroup collide
proc dGeomIsEnabled*(geom: dGeomID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Check to see if a geom is enabled.
  ##   
  ##    Disabled geoms are completely ignored by dSpaceCollide and dSpaceCollide2,
  ##    although they can still be members of a space. New geoms are created in
  ##    the enabled state.
  ##   
  ##    @param geom   the geom to query
  ##    @returns Non-zero if the geom is enabled, zero otherwise.
  ##    @sa dGeomDisable
  ##    @sa dGeomIsEnabled
  ##    @ingroup collide
proc dGeomLowLevelControl*(geom: dGeomID; controlClass: cint; controlCode: cint;
                          dataValue: pointer; dataSize: ptr cint): cint {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Execute low level control operation for geometry.
  ##   
  ##    The variable the dataSize points to must be initialized before the call.
  ##    If the size does not match the one expected for the control class/code function
  ##    changes it to the size expected and returns failure. This implies the function 
  ##    can be called with NULL data and zero size to test if control class/code is supported
  ##    and obtain required data size for it.
  ##   
  ##    dGeomCommonAnyControlCode applies to any control class and returns success if 
  ##    at least one control code is available for the given class with given geom.
  ##   
  ##    Currently there are the folliwing control classes supported:
  ##     @li dGeomColliderControlClass
  ##   
  ##    For dGeomColliderControlClass there are the following codes available:
  ##     @li dGeomColliderSetMergeSphereContactsControlCode (arg of type int, dGeomColliderMergeContactsValue_)
  ##     @li dGeomColliderGetMergeSphereContactsControlCode (arg of type int, dGeomColliderMergeContactsValue_)
  ##   
  ##    @param geom   the geom to control
  ##    @param controlClass   the control class
  ##    @param controlCode   the control code for the class
  ##    @param dataValue   the control argument pointer
  ##    @param dataSize   the control argument size provided or expected
  ##    @returns Boolean execution status
  ##    @ingroup collide
proc dGeomGetRelPointPos*(geom: dGeomID; px: dReal; py: dReal; pz: dReal;
                         result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get world position of a relative point on geom.
  ##   
  ##    Calling this function on a non-placeable geom results in the same point being
  ##    returned.
  ##   
  ##    @ingroup collide
  ##    @param result will contain the result.
proc dGeomGetPosRelPoint*(geom: dGeomID; px: dReal; py: dReal; pz: dReal;
                         result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief takes a point in global coordinates and returns
  ##    the point's position in geom-relative coordinates.
  ##   
  ##    Calling this function on a non-placeable geom results in the same point being
  ##    returned.
  ##   
  ##    @remarks
  ##    This is the inverse of dGeomGetRelPointPos()
  ##    @ingroup collide
  ##    @param result will contain the result.
proc dGeomVectorToWorld*(geom: dGeomID; px: dReal; py: dReal; pz: dReal; result: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convert from geom-local to world coordinates.
  ##   
  ##    Calling this function on a non-placeable geom results in the same vector being
  ##    returned.
  ##   
  ##    @ingroup collide
  ##    @param result will contain the result.
proc dGeomVectorFromWorld*(geom: dGeomID; px: dReal; py: dReal; pz: dReal;
                          result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Convert from world to geom-local coordinates.
  ##   
  ##    Calling this function on a non-placeable geom results in the same vector being
  ##    returned.
  ##   
  ##    @ingroup collide
  ##    @param result will contain the result.
proc dGeomSetOffsetPosition*(geom: dGeomID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    geom offset from body
  ##   
  ##    @brief Set the local offset position of a geom from its body.
  ##   
  ##    Sets the geom's positional offset in local coordinates.
  ##    After this call, the geom will be at a new position determined from the
  ##    body's position and the offset.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param x the new X coordinate.
  ##    @param y the new Y coordinate.
  ##    @param z the new Z coordinate.
  ##    @ingroup collide
proc dGeomSetOffsetRotation*(geom: dGeomID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the local offset rotation matrix of a geom from its body.
  ##   
  ##    Sets the geom's rotational offset in local coordinates.
  ##    After this call, the geom will be at a new position determined from the
  ##    body's position and the offset.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param R the new rotation matrix.
  ##    @ingroup collide
proc dGeomSetOffsetQuaternion*(geom: dGeomID; Q: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the local offset rotation of a geom from its body.
  ##   
  ##    Sets the geom's rotational offset in local coordinates.
  ##    After this call, the geom will be at a new position determined from the
  ##    body's position and the offset.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param Q the new rotation.
  ##    @ingroup collide
proc dGeomSetOffsetWorldPosition*(geom: dGeomID; x: dReal; y: dReal; z: dReal) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the offset position of a geom from its body.
  ##   
  ##    Sets the geom's positional offset to move it to the new world
  ##    coordinates.
  ##    After this call, the geom will be at the world position passed in,
  ##    and the offset will be the difference from the current body position.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param x the new X coordinate.
  ##    @param y the new Y coordinate.
  ##    @param z the new Z coordinate.
  ##    @ingroup collide
proc dGeomSetOffsetWorldRotation*(geom: dGeomID; R: dMatrix3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the offset rotation of a geom from its body.
  ##   
  ##    Sets the geom's rotational offset to orient it to the new world
  ##    rotation matrix.
  ##    After this call, the geom will be at the world orientation passed in,
  ##    and the offset will be the difference from the current body orientation.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param R the new rotation matrix.
  ##    @ingroup collide
proc dGeomSetOffsetWorldQuaternion*(geom: dGeomID; a2: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the offset rotation of a geom from its body.
  ##   
  ##    Sets the geom's rotational offset to orient it to the new world
  ##    rotation matrix.
  ##    After this call, the geom will be at the world orientation passed in,
  ##    and the offset will be the difference from the current body orientation.
  ##    The geom must be attached to a body.
  ##    If the geom did not have an offset, it is automatically created.
  ##   
  ##    @param geom the geom to set.
  ##    @param Q the new rotation.
  ##    @ingroup collide
proc dGeomClearOffset*(geom: dGeomID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Clear any offset from the geom.
  ##   
  ##    If the geom has an offset, it is eliminated and the geom is
  ##    repositioned at the body's position.  If the geom has no offset,
  ##    this function does nothing.
  ##    This is more efficient than calling dGeomSetOffsetPosition(zero)
  ##    and dGeomSetOffsetRotation(identiy), because this function actually
  ##    eliminates the offset, rather than leaving it as the identity transform.
  ##   
  ##    @param geom the geom to have its offset destroyed.
  ##    @ingroup collide
proc dGeomIsOffset*(geom: dGeomID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Check to see whether the geom has an offset.
  ##   
  ##    This function will return non-zero if the offset has been created.
  ##    Note that there is a difference between a geom with no offset,
  ##    and a geom with an offset that is the identity transform.
  ##    In the latter case, although the observed behaviour is identical,
  ##    there is a unnecessary computation involved because the geom will
  ##    be applying the transform whenever it needs to recalculate its world
  ##    position.
  ##   
  ##    @param geom the geom to query.
  ##    @returns Non-zero if the geom has an offset, zero otherwise.
  ##    @ingroup collide
proc dGeomGetOffsetPosition*(geom: dGeomID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the offset position vector of a geom.
  ##   
  ##    Returns the positional offset of the geom in local coordinates.
  ##    If the geom has no offset, this function returns the zero vector.
  ##   
  ##    @param geom the geom to query.
  ##    @returns A pointer to the geom's offset vector.
  ##    @remarks The returned value is a pointer to the geom's internal
  ##             data structure. It is valid until any changes are made
  ##             to the geom.
  ##    @ingroup collide
proc dGeomCopyOffsetPosition*(geom: dGeomID; pos: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the offset position vector of a geom.
  ##   
  ##    Returns the positional offset of the geom in local coordinates.
  ##    If the geom has no offset, this function returns the zero vector.
  ##   
  ##    @param geom   the geom to query.
  ##    @param pos    returns the offset position
  ##    @ingroup collide
proc dGeomGetOffsetRotation*(geom: dGeomID): ptr dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the offset rotation matrix of a geom.
  ##   
  ##    Returns the rotational offset of the geom in local coordinates.
  ##    If the geom has no offset, this function returns the identity
  ##    matrix.
  ##   
  ##    @param geom the geom to query.
  ##    @returns A pointer to the geom's offset rotation matrix.
  ##    @remarks The returned value is a pointer to the geom's internal
  ##             data structure. It is valid until any changes are made
  ##             to the geom.
  ##    @ingroup collide
proc dGeomCopyOffsetRotation*(geom: dGeomID; R: dMatrix3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Copy the offset rotation matrix of a geom.
  ##   
  ##    Returns the rotational offset of the geom in local coordinates.
  ##    If the geom has no offset, this function returns the identity
  ##    matrix.
  ##   
  ##    @param geom   the geom to query.
  ##    @param R      returns the rotation matrix.
  ##    @ingroup collide
proc dGeomGetOffsetQuaternion*(geom: dGeomID; result: dQuaternion) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the offset rotation quaternion of a geom.
  ##   
  ##    Returns the rotation offset of the geom as a quaternion.
  ##    If the geom has no offset, the identity quaternion is returned.
  ##   
  ##    @param geom the geom to query.
  ##    @param result a copy of the rotation quaternion.
  ##    @ingroup collide
proc dCollide*(o1: dGeomID; o2: dGeomID; flags: cint; contact: ptr dContactGeom;
              skip: cint): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   
  ##    @brief Given two geoms o1 and o2 that potentially intersect,
  ##    generate contact information for them.
  ##   
  ##    Internally, this just calls the correct class-specific collision
  ##    functions for o1 and o2.
  ##   
  ##    @param o1 The first geom to test.
  ##    @param o2 The second geom to test.
  ##   
  ##    @param flags The flags specify how contacts should be generated if
  ##    the geoms touch. The lower 16 bits of flags is an integer that
  ##    specifies the maximum number of contact points to generate. You must
  ##    ask for at least one contact. 
  ##    Additionally, following bits may be set:
  ##    CONTACTS_UNIMPORTANT -- just generate any contacts (skip contact refining).
  ##    All other bits in flags must be set to zero. In the future the other bits 
  ##    may be used to select from different contact generation strategies.
  ##   
  ##    @param contact Points to an array of dContactGeom structures. The array
  ##    must be able to hold at least the maximum number of contacts. These
  ##    dContactGeom structures may be embedded within larger structures in the
  ##    array -- the skip parameter is the byte offset from one dContactGeom to
  ##    the next in the array. If skip is sizeof(dContactGeom) then contact
  ##    points to a normal (C-style) array. It is an error for skip to be smaller
  ##    than sizeof(dContactGeom).
  ##   
  ##    @returns If the geoms intersect, this function returns the number of contact
  ##    points generated (and updates the contact array), otherwise it returns 0
  ##    (and the contact array is not touched).
  ##   
  ##    @remarks If a space is passed as o1 or o2 then this function will collide
  ##    all objects contained in o1 with all objects contained in o2, and return
  ##    the resulting contact points. This method for colliding spaces with geoms
  ##    (or spaces with spaces) provides no user control over the individual
  ##    collisions. To get that control, use dSpaceCollide or dSpaceCollide2 instead.
  ##   
  ##    @remarks If o1 and o2 are the same geom then this function will do nothing
  ##    and return 0. Technically speaking an object intersects with itself, but it
  ##    is not useful to find contact points in this case.
  ##   
  ##    @remarks This function does not care if o1 and o2 are in the same space or not
  ##    (or indeed if they are in any space at all).
  ##   
  ##    @ingroup collide
proc dSpaceCollide*(space: dSpaceID; data: pointer; callback: ptr dNearCallback) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Determines which pairs of geoms in a space may potentially intersect,
  ##    and calls the callback function for each candidate pair.
  ##   
  ##    @param space The space to test.
  ##   
  ##    @param data Passed from dSpaceCollide directly to the callback
  ##    function. Its meaning is user defined. The o1 and o2 arguments are the
  ##    geoms that may be near each other.
  ##   
  ##    @param callback A callback function is of type @ref dNearCallback.
  ##   
  ##    @remarks Other spaces that are contained within the colliding space are
  ##    not treated specially, i.e. they are not recursed into. The callback
  ##    function may be passed these contained spaces as one or both geom
  ##    arguments.
  ##   
  ##    @remarks dSpaceCollide() is guaranteed to pass all intersecting geom
  ##    pairs to the callback function, but may also pass close but
  ##    non-intersecting pairs. The number of these calls depends on the
  ##    internal algorithms used by the space. Thus you should not expect
  ##    that dCollide will return contacts for every pair passed to the
  ##    callback.
  ##   
  ##    @sa dSpaceCollide2
  ##    @ingroup collide
proc dSpaceCollide2*(space1: dGeomID; space2: dGeomID; data: pointer;
                    callback: ptr dNearCallback) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Determines which geoms from one space may potentially intersect with 
  ##    geoms from another space, and calls the callback function for each candidate 
  ##    pair. 
  ##   
  ##    @param space1 The first space to test.
  ##   
  ##    @param space2 The second space to test.
  ##   
  ##    @param data Passed from dSpaceCollide directly to the callback
  ##    function. Its meaning is user defined. The o1 and o2 arguments are the
  ##    geoms that may be near each other.
  ##   
  ##    @param callback A callback function is of type @ref dNearCallback.
  ##   
  ##    @remarks This function can also test a single non-space geom against a 
  ##    space. This function is useful when there is a collision hierarchy, i.e. 
  ##    when there are spaces that contain other spaces.
  ##   
  ##    @remarks Other spaces that are contained within the colliding space are
  ##    not treated specially, i.e. they are not recursed into. The callback
  ##    function may be passed these contained spaces as one or both geom
  ##    arguments.
  ##   
  ##    @remarks Sublevel value of space affects how the spaces are iterated.
  ##    Both spaces are recursed only if their sublevels match. Otherwise, only
  ##    the space with greater sublevel is recursed and the one with lesser sublevel
  ##    is used as a geom itself.
  ##   
  ##    @remarks dSpaceCollide2() is guaranteed to pass all intersecting geom
  ##    pairs to the callback function, but may also pass close but
  ##    non-intersecting pairs. The number of these calls depends on the
  ##    internal algorithms used by the space. Thus you should not expect
  ##    that dCollide will return contacts for every pair passed to the
  ##    callback.
  ##   
  ##    @sa dSpaceCollide
  ##    @sa dSpaceSetSublevel
  ##    @ingroup collide
proc dCreateSphere*(space: dSpaceID; radius: dReal): dGeomID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @defgroup collide_sphere Sphere Class
  ##    @ingroup collide
  ##   
  ##   
  ##    @brief Create a sphere geom of the given radius, and return its ID. 
  ##   
  ##    @param space   a space to contain the new geom. May be null.
  ##    @param radius  the radius of the sphere.
  ##   
  ##    @returns A new sphere geom.
  ##   
  ##    @remarks The point of reference for a sphere is its center.
  ##   
  ##    @sa dGeomDestroy
  ##    @sa dGeomSphereSetRadius
  ##    @ingroup collide_sphere
proc dGeomSphereSetRadius*(sphere: dGeomID; radius: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the radius of a sphere geom.
  ##   
  ##    @param sphere  the sphere to set.
  ##    @param radius  the new radius.
  ##   
  ##    @sa dGeomSphereGetRadius
  ##    @ingroup collide_sphere
proc dGeomSphereGetRadius*(sphere: dGeomID): dReal {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Retrieves the radius of a sphere geom.
  ##   
  ##    @param sphere  the sphere to query.
  ##   
  ##    @sa dGeomSphereSetRadius
  ##    @ingroup collide_sphere
proc dGeomSpherePointDepth*(sphere: dGeomID; x: dReal; y: dReal; z: dReal): dReal {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Calculate the depth of the a given point within a sphere.
  ##   
  ##    @param sphere  the sphere to query.
  ##    @param x       the X coordinate of the point.
  ##    @param y       the Y coordinate of the point.
  ##    @param z       the Z coordinate of the point.
  ##   
  ##    @returns The depth of the point. Points inside the sphere will have a 
  ##    positive depth, points outside it will have a negative depth, and points
  ##    on the surface will have a depth of zero.
  ##   
  ##    @ingroup collide_sphere
proc dCreateConvex*(space: dSpaceID; planes: ptr dReal; planecount: cuint;
                   points: ptr dReal; pointcount: cuint; polygons: ptr cuint): dGeomID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   --> Convex Functions
proc dGeomSetConvex*(g: dGeomID; planes: ptr dReal; count: cuint; points: ptr dReal;
                    pointcount: cuint; polygons: ptr cuint) {.importc, cdecl, impodeDyn.}
proc dCreateBox*(space: dSpaceID; lx: dReal; ly: dReal; lz: dReal): dGeomID {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   <-- Convex Functions
  ##   
  ##    @defgroup collide_box Box Class
  ##    @ingroup collide
  ##   
  ##   
  ##    @brief Create a box geom with the provided side lengths.
  ##   
  ##    @param space   a space to contain the new geom. May be null.
  ##    @param lx      the length of the box along the X axis
  ##    @param ly      the length of the box along the Y axis
  ##    @param lz      the length of the box along the Z axis
  ##   
  ##    @returns A new box geom.
  ##   
  ##    @remarks The point of reference for a box is its center.
  ##   
  ##    @sa dGeomDestroy
  ##    @sa dGeomBoxSetLengths
  ##    @ingroup collide_box
proc dGeomBoxSetLengths*(box: dGeomID; lx: dReal; ly: dReal; lz: dReal) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Set the side lengths of the given box.
  ##   
  ##    @param box  the box to set
  ##    @param lx      the length of the box along the X axis
  ##    @param ly      the length of the box along the Y axis
  ##    @param lz      the length of the box along the Z axis
  ##   
  ##    @sa dGeomBoxGetLengths
  ##    @ingroup collide_box
proc dGeomBoxGetLengths*(box: dGeomID; result: dVector3) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Get the side lengths of a box.
  ##   
  ##    @param box     the box to query
  ##    @param result  the returned side lengths
  ##   
  ##    @sa dGeomBoxSetLengths
  ##    @ingroup collide_box
proc dGeomBoxPointDepth*(box: dGeomID; x: dReal; y: dReal; z: dReal): dReal {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Return the depth of a point in a box.
  ##    
  ##    @param box  the box to query
  ##    @param x    the X coordinate of the point to test.
  ##    @param y    the Y coordinate of the point to test.
  ##    @param z    the Z coordinate of the point to test.
  ##   
  ##    @returns The depth of the point. Points inside the box will have a 
  ##    positive depth, points outside it will have a negative depth, and points
  ##    on the surface will have a depth of zero.
proc dCreatePlane*(space: dSpaceID; a: dReal; b: dReal; c: dReal; d: dReal): dGeomID {.
    importc, cdecl, impodeDyn.}
proc dGeomPlaneSetParams*(plane: dGeomID; a: dReal; b: dReal; c: dReal; d: dReal) {.
    importc, cdecl, impodeDyn.}
proc dGeomPlaneGetParams*(plane: dGeomID; result: dVector4) {.importc, cdecl, impodeDyn.}
proc dGeomPlanePointDepth*(plane: dGeomID; x: dReal; y: dReal; z: dReal): dReal {.importc,
    cdecl, impodeDyn.}
proc dCreateCapsule*(space: dSpaceID; radius: dReal; length: dReal): dGeomID {.importc,
    cdecl, impodeDyn.}
proc dGeomCapsuleSetParams*(ccylinder: dGeomID; radius: dReal; length: dReal) {.
    importc, cdecl, impodeDyn.}
proc dGeomCapsuleGetParams*(ccylinder: dGeomID; radius: ptr dReal; length: ptr dReal) {.
    importc, cdecl, impodeDyn.}
proc dGeomCapsulePointDepth*(ccylinder: dGeomID; x: dReal; y: dReal; z: dReal): dReal {.
    importc, cdecl, impodeDyn.}
proc dCreateCylinder*(space: dSpaceID; radius: dReal; length: dReal): dGeomID {.importc,
    cdecl, impodeDyn.}
proc dGeomCylinderSetParams*(cylinder: dGeomID; radius: dReal; length: dReal) {.
    importc, cdecl, impodeDyn.}
proc dGeomCylinderGetParams*(cylinder: dGeomID; radius: ptr dReal; length: ptr dReal) {.
    importc, cdecl, impodeDyn.}
proc dCreateRay*(space: dSpaceID; length: dReal): dGeomID {.importc, cdecl, impodeDyn.}
proc dGeomRaySetLength*(ray: dGeomID; length: dReal) {.importc, cdecl, impodeDyn.}
proc dGeomRayGetLength*(ray: dGeomID): dReal {.importc, cdecl, impodeDyn.}
proc dGeomRaySet*(ray: dGeomID; px: dReal; py: dReal; pz: dReal; dx: dReal; dy: dReal;
                 dz: dReal) {.importc, cdecl, impodeDyn.}
proc dGeomRayGet*(ray: dGeomID; start: dVector3; dir: dVector3) {.importc, cdecl,
    impodeDyn.}
proc dGeomRaySetParams*(g: dGeomID; FirstContact: cint; BackfaceCull: cint) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Set/get ray flags that influence ray collision detection.
  ##    These flags are currently only noticed by the trimesh collider, because
  ##    they can make a major differences there.
proc dGeomRayGetParams*(g: dGeomID; FirstContact: ptr cint; BackfaceCull: ptr cint) {.
    importc, cdecl, impodeDyn.}
proc dGeomRaySetFirstContact*(g: dGeomID; firstContact: cint) {.importc, cdecl,
    impodeDyn.}
proc dGeomRayGetFirstContact*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dGeomRaySetBackfaceCull*(g: dGeomID; backfaceCull: cint) {.importc, cdecl,
    impodeDyn.}
proc dGeomRayGetBackfaceCull*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dGeomRaySetClosestHit*(g: dGeomID; closestHit: cint) {.importc, cdecl, impodeDyn.}
proc dGeomRayGetClosestHit*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshDataCreate*(): dTriMeshDataID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    These don't make much sense now, but they will later when we add more
  ##    features.
proc dGeomTriMeshDataDestroy*(g: dTriMeshDataID) {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshDataSet*(g: dTriMeshDataID; data_id: cint; in_data: pointer) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##   	Set and get the TriMeshData additional data
  ##    Note: The data is NOT COPIED on assignment
proc dGeomTriMeshDataGet*(g: dTriMeshDataID; data_id: cint): pointer {.importc, cdecl,
    impodeDyn.}
proc dGeomTriMeshDataGet2*(g: dTriMeshDataID; data_id: cint; pout_size: ptr dsizeint): pointer {.
    importc, cdecl, impodeDyn.}
proc dGeomTriMeshSetLastTransform*(g: dGeomID; last_trans: dMatrix4) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    We need to set the last transform after each time step for 
  ##    accurate collision response. These functions get and set that transform.
  ##    It is stored per geom instance, rather than per dTriMeshDataID.
proc dGeomTriMeshGetLastTransform*(g: dGeomID): ptr dReal {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshDataBuildSingle*(g: dTriMeshDataID; Vertices: pointer;
                                 VertexStride: cint; VertexCount: cint;
                                 Indices: pointer; IndexCount: cint; TriStride: cint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Build a TriMesh data object with single precision vertex data.
proc dGeomTriMeshDataBuildSingle1*(g: dTriMeshDataID; Vertices: pointer;
                                  VertexStride: cint; VertexCount: cint;
                                  Indices: pointer; IndexCount: cint;
                                  TriStride: cint; Normals: pointer) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    same again with a normals array (used as trimesh-trimesh optimization)
proc dGeomTriMeshDataBuildDouble*(g: dTriMeshDataID; Vertices: pointer;
                                 VertexStride: cint; VertexCount: cint;
                                 Indices: pointer; IndexCount: cint; TriStride: cint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Build a TriMesh data object with double precision vertex data.
proc dGeomTriMeshDataBuildDouble1*(g: dTriMeshDataID; Vertices: pointer;
                                  VertexStride: cint; VertexCount: cint;
                                  Indices: pointer; IndexCount: cint;
                                  TriStride: cint; Normals: pointer) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    same again with a normals array (used as trimesh-trimesh optimization)
proc dGeomTriMeshDataBuildSimple*(g: dTriMeshDataID; Vertices: ptr dReal;
                                 VertexCount: cint; Indices: ptr dTriIndex;
                                 IndexCount: cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Simple build. Single/double precision based on dSINGLE/dDOUBLE!
proc dGeomTriMeshDataBuildSimple1*(g: dTriMeshDataID; Vertices: ptr dReal;
                                  VertexCount: cint; Indices: ptr dTriIndex;
                                  IndexCount: cint; Normals: ptr cint) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##    same again with a normals array (used as trimesh-trimesh optimization)
proc dGeomTriMeshDataPreprocess2*(g: dTriMeshDataID; buildRequestFlags: cuint;
                                 requestExtraData: ptr dintptr): cint {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Pre-process the trimesh data according to the request flags.
  ##   
  ##    buildRequestFlags is a bitmask of 1U << dTRIDATAPREPROCESS_BUILD_...
  ##    It is allowed to call the function multiple times provided the bitmasks are different each time.
  ##   
  ##    requestExtraData is an optional pointer to array of extra parameters per bitmask bits 
  ##    (only the elements indexed by positions of raised bits are examined; 
  ##    defaults are assumed if the pointer is NULL)
  ##   
  ##    The function returns a boolean status the only failure reason being insufficient memory.
proc dGeomTriMeshDataPreprocess*(g: dTriMeshDataID): cint {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Obsolete. Equivalent to calling dGeomTriMeshDataPreprocess2(g, (1U << dTRIDATAPREPROCESS_BUILD_CONCAVE_EDGES), NULL)
proc dGeomTriMeshDataGetBuffer*(g: dTriMeshDataID; buf: ptr ptr cuchar;
                               bufLen: ptr cint) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Get and set the internal preprocessed trimesh data buffer (see the enumerated type above), for loading and saving 
  ##    These functions are deprecated. Use dGeomTriMeshDataSet/dGeomTriMeshDataGet2 with dTRIMESHDATA_USE_FLAGS instead.
proc dGeomTriMeshDataSetBuffer*(g: dTriMeshDataID; buf: ptr cuchar) {.importc, cdecl,
    impodeDyn.}
proc dGeomTriMeshSetCallback*(g: dGeomID; Callback: ptr dTriCallback) {.importc, cdecl,
    impodeDyn.}
proc dGeomTriMeshGetCallback*(g: dGeomID): ptr dTriCallback {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshSetArrayCallback*(g: dGeomID; ArrayCallback: ptr dTriArrayCallback) {.
    importc, cdecl, impodeDyn.}
proc dGeomTriMeshGetArrayCallback*(g: dGeomID): ptr dTriArrayCallback {.importc,
    cdecl, impodeDyn.}
proc dGeomTriMeshSetRayCallback*(g: dGeomID; Callback: ptr dTriRayCallback) {.importc,
    cdecl, impodeDyn.}
proc dGeomTriMeshGetRayCallback*(g: dGeomID): ptr dTriRayCallback {.importc, cdecl,
    impodeDyn.}
proc dGeomTriMeshSetTriMergeCallback*(g: dGeomID;
                                     Callback: ptr dTriTriMergeCallback) {.importc,
    cdecl, impodeDyn.}
proc dGeomTriMeshGetTriMergeCallback*(g: dGeomID): ptr dTriTriMergeCallback {.
    importc, cdecl, impodeDyn.}
proc dCreateTriMesh*(space: dSpaceID; Data: dTriMeshDataID;
                    Callback: ptr dTriCallback;
                    ArrayCallback: ptr dTriArrayCallback;
                    RayCallback: ptr dTriRayCallback): dGeomID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    Trimesh class
  ##    Construction. Callbacks are optional.
proc dGeomTriMeshSetData*(g: dGeomID; Data: dTriMeshDataID) {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshGetData*(g: dGeomID): dTriMeshDataID {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshEnableTC*(g: dGeomID; geomClass: cint; enable: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##    enable/disable/check temporal coherence
proc dGeomTriMeshIsTCEnabled*(g: dGeomID; geomClass: cint): cint {.importc, cdecl,
    impodeDyn.}
proc dGeomTriMeshClearTCCache*(g: dGeomID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Clears the internal temporal coherence caches. When a geom has its
  ##    collision checked with a trimesh once, data is stored inside the trimesh.
  ##    With large worlds with lots of seperate objects this list could get huge.
  ##    We should be able to do this automagically.
proc dGeomTriMeshGetTriMeshDataID*(g: dGeomID): dTriMeshDataID {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    returns the TriMeshDataID
proc dGeomTriMeshGetTriangle*(g: dGeomID; Index: cint; v0: ptr dVector3;
                             v1: ptr dVector3; v2: ptr dVector3) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    Gets a triangle.
proc dGeomTriMeshGetPoint*(g: dGeomID; Index: cint; u: dReal; v: dReal; Out: dVector3) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    Gets the point on the requested triangle and the given barycentric
  ##    coordinates.
proc dGeomTriMeshGetTriangleCount*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dGeomTriMeshDataUpdate*(g: dTriMeshDataID) {.importc, cdecl, impodeDyn.}
proc dCreateGeomTransform*(space: dSpaceID): dGeomID {.importc, cdecl, impodeDyn.}
proc dGeomTransformSetGeom*(g: dGeomID; obj: dGeomID) {.importc, cdecl, impodeDyn.}
proc dGeomTransformGetGeom*(g: dGeomID): dGeomID {.importc, cdecl, impodeDyn.}
proc dGeomTransformSetCleanup*(g: dGeomID; mode: cint) {.importc, cdecl, impodeDyn.}
proc dGeomTransformGetCleanup*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dGeomTransformSetInfo*(g: dGeomID; mode: cint) {.importc, cdecl, impodeDyn.}
proc dGeomTransformGetInfo*(g: dGeomID): cint {.importc, cdecl, impodeDyn.}
proc dCreateHeightfield*(space: dSpaceID; data: dHeightfieldDataID; bPlaceable: cint): dGeomID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Creates a heightfield geom.
  ##   
  ##    Uses the information in the given dHeightfieldDataID to construct
  ##    a geom representing a heightfield in a collision space.
  ##   
  ##    @param space The space to add the geom to.
  ##    @param data The dHeightfieldDataID created by dGeomHeightfieldDataCreate and
  ##    setup by dGeomHeightfieldDataBuildCallback, dGeomHeightfieldDataBuildByte,
  ##    dGeomHeightfieldDataBuildShort or dGeomHeightfieldDataBuildFloat.
  ##    @param bPlaceable If non-zero this geom can be transformed in the world using the
  ##    usual functions such as dGeomSetPosition and dGeomSetRotation. If the geom is
  ##    not set as placeable, then it uses a fixed orientation where the global y axis
  ##    represents the dynamic 'height' of the heightfield.
  ##   
  ##    @return A geom id to reference this geom in other calls.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataCreate*(): dHeightfieldDataID {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Creates a new empty dHeightfieldDataID.
  ##   
  ##    Allocates a new dHeightfieldDataID and returns it. You must call
  ##    dGeomHeightfieldDataDestroy to destroy it after the geom has been removed.
  ##    The dHeightfieldDataID value is used when specifying a data format type.
  ##   
  ##    @return A dHeightfieldDataID for use with dGeomHeightfieldDataBuildCallback,
  ##    dGeomHeightfieldDataBuildByte, dGeomHeightfieldDataBuildShort or
  ##    dGeomHeightfieldDataBuildFloat.
  ##    @ingroup collide
proc dGeomHeightfieldDataDestroy*(d: dHeightfieldDataID) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Destroys a dHeightfieldDataID.
  ##   
  ##    Deallocates a given dHeightfieldDataID and all managed resources.
  ##   
  ##    @param d A dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##    @ingroup collide
proc dGeomHeightfieldDataBuildCallback*(d: dHeightfieldDataID; pUserData: pointer;
                                       pCallback: ptr dHeightfieldGetHeight;
                                       width: dReal; depth: dReal;
                                       widthSamples: cint; depthSamples: cint;
                                       scale: dReal; offset: dReal;
                                       thickness: dReal; bWrap: cint) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Configures a dHeightfieldDataID to use a callback to
  ##    retrieve height data.
  ##   
  ##    Before a dHeightfieldDataID can be used by a geom it must be
  ##    configured to specify the format of the height data.
  ##    This call specifies that the heightfield data is computed by
  ##    the user and it should use the given callback when determining
  ##    the height of a given element of it's shape.
  ##   
  ##    @param d A new dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##   
  ##    @param width Specifies the total 'width' of the heightfield along
  ##    the geom's local x axis.
  ##    @param depth Specifies the total 'depth' of the heightfield along
  ##    the geom's local z axis.
  ##   
  ##    @param widthSamples Specifies the number of vertices to sample
  ##    along the width of the heightfield. Each vertex has a corresponding
  ##    height value which forms the overall shape.
  ##    Naturally this value must be at least two or more.
  ##    @param depthSamples Specifies the number of vertices to sample
  ##    along the depth of the heightfield.
  ##   
  ##    @param scale A uniform scale applied to all raw height data.
  ##    @param offset An offset applied to the scaled height data.
  ##   
  ##    @param thickness A value subtracted from the lowest height
  ##    value which in effect adds an additional cuboid to the base of the
  ##    heightfield. This is used to prevent geoms from looping under the
  ##    desired terrain and not registering as a collision. Note that the
  ##    thickness is not affected by the scale or offset parameters.
  ##   
  ##    @param bWrap If non-zero the heightfield will infinitely tile in both
  ##    directions along the local x and z axes. If zero the heightfield is
  ##    bounded from zero to width in the local x axis, and zero to depth in
  ##    the local z axis.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataBuildByte*(d: dHeightfieldDataID; pHeightData: ptr cuchar;
                                   bCopyHeightData: cint; width: dReal;
                                   depth: dReal; widthSamples: cint;
                                   depthSamples: cint; scale: dReal; offset: dReal;
                                   thickness: dReal; bWrap: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Configures a dHeightfieldDataID to use height data in byte format.
  ##   
  ##    Before a dHeightfieldDataID can be used by a geom it must be
  ##    configured to specify the format of the height data.
  ##    This call specifies that the heightfield data is stored as a rectangular
  ##    array of bytes (8 bit unsigned) representing the height at each sample point.
  ##   
  ##    @param d A new dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##   
  ##    @param pHeightData A pointer to the height data.
  ##    @param bCopyHeightData When non-zero the height data is copied to an
  ##    internal store. When zero the height data is accessed by reference and
  ##    so must persist throughout the lifetime of the heightfield.
  ##   
  ##    @param width Specifies the total 'width' of the heightfield along
  ##    the geom's local x axis.
  ##    @param depth Specifies the total 'depth' of the heightfield along
  ##    the geom's local z axis.
  ##   
  ##    @param widthSamples Specifies the number of vertices to sample
  ##    along the width of the heightfield. Each vertex has a corresponding
  ##    height value which forms the overall shape.
  ##    Naturally this value must be at least two or more.
  ##    @param depthSamples Specifies the number of vertices to sample
  ##    along the depth of the heightfield.
  ##   
  ##    @param scale A uniform scale applied to all raw height data.
  ##    @param offset An offset applied to the scaled height data.
  ##   
  ##    @param thickness A value subtracted from the lowest height
  ##    value which in effect adds an additional cuboid to the base of the
  ##    heightfield. This is used to prevent geoms from looping under the
  ##    desired terrain and not registering as a collision. Note that the
  ##    thickness is not affected by the scale or offset parameters.
  ##   
  ##    @param bWrap If non-zero the heightfield will infinitely tile in both
  ##    directions along the local x and z axes. If zero the heightfield is
  ##    bounded from zero to width in the local x axis, and zero to depth in
  ##    the local z axis.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataBuildShort*(d: dHeightfieldDataID;
                                    pHeightData: ptr cshort; bCopyHeightData: cint;
                                    width: dReal; depth: dReal; widthSamples: cint;
                                    depthSamples: cint; scale: dReal; offset: dReal;
                                    thickness: dReal; bWrap: cint) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Configures a dHeightfieldDataID to use height data in short format.
  ##   
  ##    Before a dHeightfieldDataID can be used by a geom it must be
  ##    configured to specify the format of the height data.
  ##    This call specifies that the heightfield data is stored as a rectangular
  ##    array of shorts (16 bit signed) representing the height at each sample point.
  ##   
  ##    @param d A new dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##   
  ##    @param pHeightData A pointer to the height data.
  ##    @param bCopyHeightData When non-zero the height data is copied to an
  ##    internal store. When zero the height data is accessed by reference and
  ##    so must persist throughout the lifetime of the heightfield.
  ##   
  ##    @param width Specifies the total 'width' of the heightfield along
  ##    the geom's local x axis.
  ##    @param depth Specifies the total 'depth' of the heightfield along
  ##    the geom's local z axis.
  ##   
  ##    @param widthSamples Specifies the number of vertices to sample
  ##    along the width of the heightfield. Each vertex has a corresponding
  ##    height value which forms the overall shape.
  ##    Naturally this value must be at least two or more.
  ##    @param depthSamples Specifies the number of vertices to sample
  ##    along the depth of the heightfield.
  ##   
  ##    @param scale A uniform scale applied to all raw height data.
  ##    @param offset An offset applied to the scaled height data.
  ##   
  ##    @param thickness A value subtracted from the lowest height
  ##    value which in effect adds an additional cuboid to the base of the
  ##    heightfield. This is used to prevent geoms from looping under the
  ##    desired terrain and not registering as a collision. Note that the
  ##    thickness is not affected by the scale or offset parameters.
  ##   
  ##    @param bWrap If non-zero the heightfield will infinitely tile in both
  ##    directions along the local x and z axes. If zero the heightfield is
  ##    bounded from zero to width in the local x axis, and zero to depth in
  ##    the local z axis.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataBuildSingle*(d: dHeightfieldDataID;
                                     pHeightData: ptr cfloat;
                                     bCopyHeightData: cint; width: dReal;
                                     depth: dReal; widthSamples: cint;
                                     depthSamples: cint; scale: dReal;
                                     offset: dReal; thickness: dReal; bWrap: cint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Configures a dHeightfieldDataID to use height data in 
  ##    single precision floating point format.
  ##   
  ##    Before a dHeightfieldDataID can be used by a geom it must be
  ##    configured to specify the format of the height data.
  ##    This call specifies that the heightfield data is stored as a rectangular
  ##    array of single precision floats representing the height at each
  ##    sample point.
  ##   
  ##    @param d A new dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##   
  ##    @param pHeightData A pointer to the height data.
  ##    @param bCopyHeightData When non-zero the height data is copied to an
  ##    internal store. When zero the height data is accessed by reference and
  ##    so must persist throughout the lifetime of the heightfield.
  ##   
  ##    @param width Specifies the total 'width' of the heightfield along
  ##    the geom's local x axis.
  ##    @param depth Specifies the total 'depth' of the heightfield along
  ##    the geom's local z axis.
  ##   
  ##    @param widthSamples Specifies the number of vertices to sample
  ##    along the width of the heightfield. Each vertex has a corresponding
  ##    height value which forms the overall shape.
  ##    Naturally this value must be at least two or more.
  ##    @param depthSamples Specifies the number of vertices to sample
  ##    along the depth of the heightfield.
  ##   
  ##    @param scale A uniform scale applied to all raw height data.
  ##    @param offset An offset applied to the scaled height data.
  ##   
  ##    @param thickness A value subtracted from the lowest height
  ##    value which in effect adds an additional cuboid to the base of the
  ##    heightfield. This is used to prevent geoms from looping under the
  ##    desired terrain and not registering as a collision. Note that the
  ##    thickness is not affected by the scale or offset parameters.
  ##   
  ##    @param bWrap If non-zero the heightfield will infinitely tile in both
  ##    directions along the local x and z axes. If zero the heightfield is
  ##    bounded from zero to width in the local x axis, and zero to depth in
  ##    the local z axis.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataBuildDouble*(d: dHeightfieldDataID;
                                     pHeightData: ptr cdouble;
                                     bCopyHeightData: cint; width: dReal;
                                     depth: dReal; widthSamples: cint;
                                     depthSamples: cint; scale: dReal;
                                     offset: dReal; thickness: dReal; bWrap: cint) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Configures a dHeightfieldDataID to use height data in 
  ##    double precision floating point format.
  ##   
  ##    Before a dHeightfieldDataID can be used by a geom it must be
  ##    configured to specify the format of the height data.
  ##    This call specifies that the heightfield data is stored as a rectangular
  ##    array of double precision floats representing the height at each
  ##    sample point.
  ##   
  ##    @param d A new dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##   
  ##    @param pHeightData A pointer to the height data.
  ##    @param bCopyHeightData When non-zero the height data is copied to an
  ##    internal store. When zero the height data is accessed by reference and
  ##    so must persist throughout the lifetime of the heightfield.
  ##   
  ##    @param width Specifies the total 'width' of the heightfield along
  ##    the geom's local x axis.
  ##    @param depth Specifies the total 'depth' of the heightfield along
  ##    the geom's local z axis.
  ##   
  ##    @param widthSamples Specifies the number of vertices to sample
  ##    along the width of the heightfield. Each vertex has a corresponding
  ##    height value which forms the overall shape.
  ##    Naturally this value must be at least two or more.
  ##    @param depthSamples Specifies the number of vertices to sample
  ##    along the depth of the heightfield.
  ##   
  ##    @param scale A uniform scale applied to all raw height data.
  ##    @param offset An offset applied to the scaled height data.
  ##   
  ##    @param thickness A value subtracted from the lowest height
  ##    value which in effect adds an additional cuboid to the base of the
  ##    heightfield. This is used to prevent geoms from looping under the
  ##    desired terrain and not registering as a collision. Note that the
  ##    thickness is not affected by the scale or offset parameters.
  ##   
  ##    @param bWrap If non-zero the heightfield will infinitely tile in both
  ##    directions along the local x and z axes. If zero the heightfield is
  ##    bounded from zero to width in the local x axis, and zero to depth in
  ##    the local z axis.
  ##   
  ##    @ingroup collide
proc dGeomHeightfieldDataSetBounds*(d: dHeightfieldDataID; minHeight: dReal;
                                   maxHeight: dReal) {.importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Manually set the minimum and maximum height bounds.
  ##   
  ##    This call allows you to set explicit min / max values after initial
  ##    creation typically for callback heightfields which default to +/- infinity,
  ##    or those whose data has changed. This must be set prior to binding with a
  ##    geom, as the the AABB is not recomputed after it's first generation.
  ##   
  ##    @remarks The minimum and maximum values are used to compute the AABB
  ##    for the heightfield which is used for early rejection of collisions.
  ##    A close fit will yield a more efficient collision check.
  ##   
  ##    @param d A dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##    @param min_height The new minimum height value. Scale, offset and thickness is then applied.
  ##    @param max_height The new maximum height value. Scale and offset is then applied.
  ##    @ingroup collide
proc dGeomHeightfieldSetHeightfieldData*(g: dGeomID; d: dHeightfieldDataID) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Assigns a dHeightfieldDataID to a heightfield geom.
  ##   
  ##    Associates the given dHeightfieldDataID with a heightfield geom.
  ##    This is done without affecting the GEOM_PLACEABLE flag.
  ##   
  ##    @param g A geom created by dCreateHeightfield
  ##    @param d A dHeightfieldDataID created by dGeomHeightfieldDataCreate
  ##    @ingroup collide
proc dGeomHeightfieldGetHeightfieldData*(g: dGeomID): dHeightfieldDataID {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Gets the dHeightfieldDataID bound to a heightfield geom.
  ##   
  ##    Returns the dHeightfieldDataID associated with a heightfield geom.
  ##   
  ##    @param g A geom created by dCreateHeightfield
  ##    @return The dHeightfieldDataID which may be NULL if none was assigned.
  ##    @ingroup collide
proc dClosestLineSegmentPoints*(a1: dVector3; a2: dVector3; b1: dVector3; b2: dVector3;
                               cp1: dVector3; cp2: dVector3) {.importc, cdecl,
    impodeDyn.}
proc dBoxTouchesBox*(p1: dVector3; R1: dMatrix3; side1: dVector3; p2: dVector3;
                    R2: dMatrix3; side2: dVector3): cint {.importc, cdecl, impodeDyn.}
proc dBoxBox*(p1: dVector3; R1: dMatrix3; side1: dVector3; p2: dVector3; R2: dMatrix3;
             side2: dVector3; normal: dVector3; depth: ptr dReal;
             return_code: ptr cint; flags: cint; contact: ptr dContactGeom; skip: cint): cint {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##    The meaning of flags parameter is the same as in dCollide()
proc dInfiniteAABB*(geom: dGeomID; aabb: array[6, dReal]) {.importc, cdecl, impodeDyn.}
proc dCreateGeomClass*(classptr: ptr dGeomClass): cint {.importc, cdecl, impodeDyn.}
proc dGeomGetClassData*(a1: dGeomID): pointer {.importc, cdecl, impodeDyn.}
proc dCreateGeom*(classnum: cint): dGeomID {.importc, cdecl, impodeDyn.}
proc dSetColliderOverride*(i: cint; j: cint; fn: ptr dColliderFn) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Sets a custom collider function for two geom classes. 
  ##   
  ##    @param i The first geom class handled by this collider
  ##    @param j The second geom class handled by this collider
  ##    @param fn The collider function to use to determine collisions.
  ##    @ingroup collide
proc dThreadingAllocateSelfThreadedImplementation*(): dThreadingImplementationID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Allocates built-in self-threaded threading implementation object.
  ##   
  ##    A self-threaded implementation is a type of implementation that performs 
  ##    processing of posted calls by means of caller thread itself. This type of 
  ##    implementation does not need thread pool to serve it.
  ##    
  ##    Note that since May 9th, 2017 (rev. #2066) the Self-Threaded implementation 
  ##    returns 0 rather than 1 as available thread count to distinguish from 
  ##    thread pools with just one thread in them.
  ##   
  ##    The processing is arranged in a way to prevent call stack depth growth 
  ##    as more and more nested calls are posted.
  ##   
  ##    Note that it is not necessary to create and assign a self-threaded 
  ##    implementation to a world, as there is a global one used by default 
  ##    if no implementation is explicitly assigned. You should only assign 
  ##    each world an individual threading implementation instance if simulations 
  ##    need to be run in parallel in multiple threads for the worlds.
  ##   
  ##    @returns ID of object allocated or NULL on failure
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingFreeImplementation
proc dThreadingAllocateMultiThreadedImplementation*(): dThreadingImplementationID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Allocates built-in multi-threaded threading implementation object.
  ##   
  ##    A multi-threaded implementation is a type of implementation that has to be 
  ##    served with a thread pool. The thread pool can be either the built-in ODE object
  ##    or set of external threads that dedicate themselves to this purpose and stay
  ##    in ODE until implementation releases them.
  ##    
  ##    @returns ID of object allocated or NULL on failure
  ##    
  ##    @ingroup threading
  ##    @see dThreadingThreadPoolServeMultiThreadedImplementation
  ##    @see dExternalThreadingServeMultiThreadedImplementation
  ##    @see dThreadingFreeImplementation
proc dThreadingImplementationGetFunctions*(impl: dThreadingImplementationID): ptr dThreadingFunctionsInfo {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Retrieves the functions record of a built-in threading implementation.
  ##   
  ##    The implementation can be the one allocated by ODE (from @c dThreadingAllocateMultiThreadedImplementation). 
  ##    Do not use this function with self-made custom implementations - 
  ##    they should be bundled with their own set of functions.
  ##    
  ##    @param impl Threading implementation ID
  ##    @returns Pointer to associated functions structure
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
proc dThreadingImplementationShutdownProcessing*(impl: dThreadingImplementationID) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Requests a built-in implementation to release threads serving it.
  ##   
  ##    The function unblocks threads employed in implementation serving and lets them 
  ##    return to from where they originate. It's the responsibility of external code 
  ##    to make sure all the calls to ODE that might be dependent on given threading 
  ##    implementation object had already returned before this call is made. If threading 
  ##    implementation is still processing some posted calls while this function is 
  ##    invoked the behavior is implementation dependent.
  ##   
  ##    This call is to be used to request the threads to be released before waiting 
  ##    for them in host pool or before waiting for them to exit. Implementation object 
  ##    must not be destroyed before it is known that all the serving threads have already 
  ##    returned from it. If implementation needs to be reused after this function is called
  ##    and all the threads have exited from it a call to @c dThreadingImplementationCleanupForRestart
  ##    must be made to restore internal state of the object.
  ##   
  ##    If this function is called for self-threaded built-in threading implementation
  ##    the call has no effect.
  ##    
  ##    @param impl Threading implementation ID
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingImplementationCleanupForRestart
proc dThreadingImplementationCleanupForRestart*(impl: dThreadingImplementationID) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Restores built-in implementation's state to let it be reused after shutdown.
  ##   
  ##    If a multi-threaded built-in implementation needs to be reused after a call
  ##    to @c dThreadingImplementationShutdownProcessing this call is to be made to 
  ##    restore object's internal state. After that the implementation can be served again.
  ##   
  ##    If this function is called for self-threaded built-in threading implementation
  ##    the call has no effect.
  ##    
  ##    @param impl Threading implementation ID
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingImplementationShutdownProcessing
proc dThreadingFreeImplementation*(impl: dThreadingImplementationID) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Deletes an instance of built-in threading implementation.
  ##   
  ##    @warning A care must be taken to make sure the implementation is unassigned
  ##    from all the objects it was assigned to and that there are no more threads 
  ##    serving it before attempting to call this function.
  ##   
  ##    @param impl Threading implementation ID
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
proc dExternalThreadingServeMultiThreadedImplementation*(
    impl: dThreadingImplementationID;
    readiness_callback: ptr dThreadReadyToServeCallback; callback_context: pointer) {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief An entry point for external threads that would like to serve a built-in 
  ##    threading implementation object.
  ##   
  ##    A thread that calls this function remains blocked in ODE and serves implementation
  ##    object @p impl until being released with @c dThreadingImplementationShutdownProcessing call.
  ##    This function can be used to provide external threads instead of ODE's built-in
  ##    thread pools.
  ##   
  ##    The optional callback @readiness_callback is called after the thread has reached 
  ##    and has registered within the implementation. The implementation should not 
  ##    be used until all dedicated threads register within it as otherwise it will not
  ##    have accurate view of the execution resources available.
  ##   
  ##    @param impl Threading implementation ID
  ##    @param readiness_callback Optional readiness callback to be called after thread enters the implementation
  ##    @param callback_context A value to be passed as parameter to readiness callback
  ##    
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingImplementationShutdownProcessing
proc dThreadingAllocateThreadPool*(thread_count: cuint; stack_size: dsizeint;
                                  ode_data_allocate_flags: cuint;
                                  reserved: pointer): dThreadingThreadPoolID {.
    importc, cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Creates an instance of built-in thread pool object that can be used to serve
  ##    multi-threaded threading implementations.
  ##   
  ##    The threads allocated inherit priority of caller thread. Their affinity is not
  ##    explicitly adjusted and gets the value the system assigns by default. Threads 
  ##    have their stack memory fully committed immediately on start. On POSIX platforms 
  ##    threads are started with all the possible signals blocked. Threads execute 
  ##    calls to @c dAllocateODEDataForThread with @p ode_data_allocate_flags 
  ##    on initialization.
  ##   
  ##    On POSIX platforms this function must be called with signals masked 
  ##    or other measures must be taken to prevent reception of signals by calling thread 
  ##    for the duration of the call.
  ##    
  ##    @param thread_count Number of threads to start in pool
  ##    @param stack_size Size of stack to be used for every thread or 0 for system default value
  ##    @param ode_data_allocate_flags Flags to be passed to @c dAllocateODEDataForThread on behalf of each thread
  ##    @returns ID of object allocated or NULL on failure
  ##   
  ##    @ingroup threading
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingImplementationShutdownProcessing
  ##    @see dThreadingFreeThreadPool
proc dThreadingThreadPoolServeMultiThreadedImplementation*(
    pool: dThreadingThreadPoolID; impl: dThreadingImplementationID) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Commands an instance of built-in thread pool to serve a built-in multi-threaded 
  ##    threading implementation.
  ##   
  ##    A pool can only serve one threading implementation at a time. 
  ##    Call @c dThreadingImplementationShutdownProcessing to release pool threads 
  ##    from implementation serving and make them idle. Pool threads must be released 
  ##    from any implementations before pool is attempted to be deleted.
  ##   
  ##    This function waits for threads to register within implementation before returning.
  ##    So, after the function call exits the implementation can be used immediately.
  ##    
  ##    @param pool Thread pool ID to serve the implementation
  ##    @param impl Implementation ID of implementation to be served
  ##   
  ##    @ingroup threading
  ##    @see dThreadingAllocateThreadPool
  ##    @see dThreadingAllocateMultiThreadedImplementation
  ##    @see dThreadingImplementationShutdownProcessing
proc dThreadingThreadPoolWaitIdleState*(pool: dThreadingThreadPoolID) {.importc,
    cdecl, impodeDyn.}
  ## ::
  ##   
  ##    @brief Waits until all pool threads are released from threading implementation 
  ##    they might be serving.
  ##   
  ##    The function can be used after a call to @c dThreadingImplementationShutdownProcessing
  ##    to make sure all the threads have already been released by threading implementation 
  ##    and it can be deleted or it can be cleaned up for restart and served by another pool
  ##    or this pool's threads can be used to serve another threading implementation.
  ##   
  ##    Note that is it not necessary to call this function before pool destruction
  ##    since @c dThreadingFreeThreadPool performs similar wait operation implicitly on its own.
  ##    
  ##    It is OK to call this function even if pool was not serving any threading implementation
  ##    in which case the call exits immediately with minimal delay.
  ##    
  ##    @param pool Thread pool ID to wait for
  ##   
  ##    @ingroup threading
  ##    @see dThreadingAllocateThreadPool
  ##    @see dThreadingImplementationShutdownProcessing
  ##    @see dThreadingFreeThreadPool
proc dThreadingFreeThreadPool*(pool: dThreadingThreadPoolID) {.importc, cdecl,
    impodeDyn.}
  ## ::
  ##   
  ##    @brief Deletes a built-in thread pool instance.
  ##   
  ##    The pool threads must be released from any implementations they might be serving
  ##    before this function is called. Otherwise the call is going to block 
  ##    and wait until pool's threads return.
  ##    
  ##    @param pool Thread pool ID to delete
  ##   
  ##    @ingroup threading
  ##    @see dThreadingAllocateThreadPool
  ##    @see dThreadingImplementationShutdownProcessing
proc dWorldExportDIF*(w: dWorldID; file: File; world_name: cstring) {.importc, cdecl,
    impodeDyn.}

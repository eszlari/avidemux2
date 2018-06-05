#
#
#
#SET(RELEASE 1)
#
#
include(admTimeStamp)
SET(CPACK_PACKAGE_VERSION_MAJOR "2")
SET(CPACK_PACKAGE_VERSION_MINOR "7")
SET(CPACK_PACKAGE_VERSION_P     "1")
SET(AVIDEMUX_MAJOR_MINOR "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}")
SET(CPACK_PACKAGE_VERSION_PATCH "${CPACK_PACKAGE_VERSION_P}")
IF(NOT AVIDEMUX_VERSION)
    SET(AVIDEMUX_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")
ENDIF(NOT AVIDEMUX_VERSION)
SET(AVIDEMUX_API_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}") 
IF(NOT RELEASE)
        # use date instead of subversion, we use git now
        ADM_TIMESTAMP(date)
        SET(CPACK_PACKAGE_VERSION_PATCH "${CPACK_PACKAGE_VERSION_PATCH}-${date}")
ENDIF(NOT RELEASE)

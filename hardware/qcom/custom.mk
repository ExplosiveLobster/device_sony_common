# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += msm8952 msm8996 msm8998 sdm660 sdm845 sm8150

#List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8952 msm8996 msm8998 sdm660 sdm845 sm8150

#List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := msm8996 msm8998 sdm660 sdm845 sm8150

audio-hal := hardware/qcom/caf-4.9/audio
ifneq ($(filter sdm660,$(TARGET_BOARD_PLATFORM)),)
display-hal := hardware/qcom/caf-4.9/display-staging
else
display-hal := hardware/qcom/caf-4.9/display
endif
gps-hal := hardware/qcom/caf-4.9/gps

ifneq ($(filter msm8952,$(TARGET_BOARD_PLATFORM)),)
QCOM_MEDIA_ROOT := hardware/qcom/caf-4.9/media-staging
else
QCOM_MEDIA_ROOT := hardware/qcom/caf-4.9/media
endif

media-hal := $(QCOM_MEDIA_ROOT)

SRC_CAMERA_HAL_DIR ?= vendor/sony/camera
SRC_DISPLAY_HAL_DIR := $(display-hal)
SRC_MEDIA_HAL_DIR := $(QCOM_MEDIA_ROOT)

include device/sony/common/hardware/qcom/utils.mk

include $(audio-hal)/Android.mk
include $(display-hal)/Android.mk
include $(gps-hal)/Android.mk
include $(media-hal)/Android.mk

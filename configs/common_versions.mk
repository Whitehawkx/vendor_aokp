# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/behelit/tools/getdate)
behelit_BRANCH=kitkat

ifneq ($(behelit_BUILD),)
    # behelit_BUILD=<goo version int>/<build string>
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=behelit \
        ro.goo.rom=behelit \
        ro.goo.version=$(shell echo $(behelit_BUILD) | cut -d/ -f1) \
        ro.behelit.version=$(TARGET_PRODUCT)_$(behelit_BRANCH)_$(shell echo $(behelit_BUILD) | cut -d/ -f2)
else
    ifneq ($(behelit_NIGHTLY),)
        # behelit_NIGHTLY=true
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.behelit.version=$(TARGET_PRODUCT)_$(behelit_BRANCH)_nightly_$(DATE)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.behelit.version=$(TARGET_PRODUCT)_$(behelit_BRANCH)_unofficial_$(DATE)
    endif
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.behelit.branch=$(behelit_BRANCH) \
        ro.behelit.device=$(behelit_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1

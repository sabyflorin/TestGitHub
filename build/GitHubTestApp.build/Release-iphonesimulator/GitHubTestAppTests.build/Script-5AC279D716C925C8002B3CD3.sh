#!/bin/sh
# Run the unit tests in this test bundle.
#"${SYSTEM_DEVELOPER_DIR}/Tools/RunUnitTests"

if [ "$RUN_UNIT_TEST_WITH_IOS_SIM" = "YES" ]; then
test_bundle_path="$BUILT_PRODUCTS_DIR/$PRODUCT_NAME.$WRAPPER_EXTENSION"
/usr/local/bin/ios-sim launch "$(dirname "$TEST_HOST")" --setenv DYLD_INSERT_LIBRARIES=/../../Library/PrivateFrameworks/IDEBundleInjection.framework/IDEBundleInjection --setenv XCInjectBundle="$test_bundle_path" --setenv XCInjectBundleInto="$TEST_HOST" --args -SenTest All "$test_bundle_path"
echo "Finished running tests with ios-sim"
else
"${SYSTEM_DEVELOPER_DIR}/Tools/RunUnitTests"
fi

package org.libsdl.app;

import android.hardware.usb.UsbDevice;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
interface HIDDevice {
    void close();

    UsbDevice getDevice();

    boolean getFeatureReport(byte[] bArr);

    int getId();

    String getManufacturerName();

    int getProductId();

    String getProductName();

    String getSerialNumber();

    int getVendorId();

    int getVersion();

    boolean open();

    int sendFeatureReport(byte[] bArr);

    int sendOutputReport(byte[] bArr);

    void setFrozen(boolean z2);

    void shutdown();
}

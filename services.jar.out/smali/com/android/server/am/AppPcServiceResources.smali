.class public Lcom/android/server/am/AppPcServiceResources;
.super Ljava/lang/Object;
.source "AppPcServiceResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcServiceResources$id;,
        Lcom/android/server/am/AppPcServiceResources$layout;,
        Lcom/android/server/am/AppPcServiceResources$string;
    }
.end annotation


# static fields
.field public static sPermissionLabels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/AppPcServiceResources;->sPermissionLabels:[I

    return-void

    :array_0
    .array-data 4
        0x9090021
        0x9090021
        0x9090022
        0x9090023
        0x9090024
        0x9090025
        0x9090026
        0x9090027
        0x9090028
        0x9090029
        0x909002a
        0x909002a
        0x909002b
        0x909002c
        0x909002d
        0x909002e
        0x909002f
        0x909002f
        0x909002f
        0x9090030
        0x9090031
        0x0
        0x9090032
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

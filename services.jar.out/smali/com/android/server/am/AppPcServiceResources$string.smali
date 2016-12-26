.class public Lcom/android/server/am/AppPcServiceResources$string;
.super Ljava/lang/Object;
.source "AppPcServiceResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static accept_perm:I

.field public static deny_perm:I

.field public static notify_dialog_msg_body:I

.field public static notify_dialog_title:I

.field public static permission_block_network:I

.field public static time_count_down_hint:I

.field public static toast_deny_msg_body:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x909001d

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->notify_dialog_title:I

    .line 37
    const v0, 0x909001a

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->accept_perm:I

    .line 38
    const v0, 0x909001b

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->deny_perm:I

    .line 39
    const v0, 0x909001e

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->notify_dialog_msg_body:I

    .line 40
    const v0, 0x9090020

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->toast_deny_msg_body:I

    .line 41
    const v0, 0x909001f

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->time_count_down_hint:I

    .line 42
    const v0, 0x9090033

    sput v0, Lcom/android/server/am/AppPcServiceResources$string;->permission_block_network:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/android/server/am/AppPcServiceResources$layout;
.super Ljava/lang/Object;
.source "AppPcServiceResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static permission_notify_dialog_customview:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x9040039

    sput v0, Lcom/android/server/am/AppPcServiceResources$layout;->permission_notify_dialog_customview:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final RINGTONE_PICKER_MORE_RINGTONES:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER_MORE_RINGTONES"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x40

.field public static final TYPE_RINGTONE_3:I = 0x200

.field public static final TYPE_SMS_NOTIFI:I = 0x20

.field public static final TYPE_SMS_NOTIFI_2:I = 0x80

.field public static final TYPE_SMS_NOTIFI_3:I = 0x300

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorInternal:Landroid/database/Cursor;

.field private mCursorMedia:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 230
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 272
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 282
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 283
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 272
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 294
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 295
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 296
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 651
    :goto_0
    return-object v2

    .line 637
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 641
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 644
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 649
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 731
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 783
    :goto_0
    return-object v1

    .line 735
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "uriString":Ljava/lang/String;
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri uriString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-eqz v3, :cond_1

    const-string/jumbo v4, "use-the-silent-ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 766
    const-string v4, "RingtoneManager"

    const-string v5, "in getActualDefaultRingtoneUri return null uri"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_path"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "ringtonePath":Ljava/lang/String;
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri ringtonePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, 0x0

    .line 774
    .local v1, "ringtoneUri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 775
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 776
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri ringtonePath != null, ringtoneUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_2
    if-nez v1, :cond_3

    .line 779
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getDefaultPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 780
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri ringtonePath == null, ringtoneUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_3
    const-string v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in getActualDefaultRingtoneUri uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1083
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getActualRingtoneUriBySubId subid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    if-nez p1, :cond_0

    .line 1086
    const/4 v1, 0x1

    .line 1090
    .local v1, "type":I
    :goto_0
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1091
    .local v0, "ringToneUri":Landroid/net/Uri;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getActualRingtoneUriBySubId uri :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return-object v0

    .line 1088
    .end local v0    # "ringToneUri":Landroid/net/Uri;
    .end local v1    # "type":I
    :cond_0
    const/16 v1, 0x40

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public static getDefaultPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const v1, #android:string@def_ringtone_path#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtone":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const v1, #android:string@def_notification_sound_path#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const v1, #android:string@def_alarm_alert_path#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_2
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_3

    const v1, #android:string@def_ringtone_path_2g#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_3
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    const v1, #android:string@def_sms_notifi_path#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_5

    const v1, #android:string@def_sms_notifi_2_path#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0

    .line 1157
    .end local v0    # "ringtone":Ljava/lang/String;
    :cond_5
    const v1, #android:string@def_notification_sound_path_2g#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ringtone":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I
    .locals 4
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, -0x1

    .line 978
    if-nez p0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v2

    .line 987
    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 988
    const/4 v2, 0x0

    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "uriString":Ljava/lang/String;
    const/4 v0, -0x1

    .line 992
    .local v0, "parsedSubId":I
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 994
    if-lez v0, :cond_0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 995
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method public static getDefaultRingtoneUriBySubId(I)Landroid/net/Uri;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 1012
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getDefaultRingtoneUriBySubId subid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-ltz p0, :cond_0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_1

    .line 1016
    :cond_0
    const-string v1, "RingtoneManager"

    const-string/jumbo v2, "out getDefaultRingtoneUriBySubId null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    .line 1031
    :goto_0
    return-object v1

    .line 1020
    :cond_1
    if-nez p0, :cond_2

    .line 1022
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out getDefaultRingtoneUriBySubId 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1026
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "uriString":Ljava/lang/String;
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out getDefaultRingtoneUriBySubId others : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 892
    if-nez p0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 894
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 898
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 899
    const/4 v0, 0x2

    goto :goto_0

    .line 900
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 901
    const/4 v0, 0x4

    goto :goto_0

    .line 905
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 906
    const/16 v0, 0x20

    goto :goto_0

    .line 907
    :cond_6
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 908
    const/16 v0, 0x80

    goto :goto_0

    .line 909
    :cond_7
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 929
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 930
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 948
    :goto_0
    return-object v0

    .line 931
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 932
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 933
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 934
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 938
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 939
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    goto :goto_0

    .line 940
    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    .line 941
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 942
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 943
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 948
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 562
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1199
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1203
    .local v2, "AUDIO_PROJECTION":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1204
    .local v7, "mPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1206
    .local v6, "mCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1208
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 1217
    :goto_0
    return-object v3

    .line 1211
    :cond_0
    if-eqz v6, :cond_1

    .line 1212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1213
    const-string v0, "RingtoneManager"

    const-string v1, "cursor count = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1216
    :cond_1
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "path mCursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 684
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 685
    .local v0, "ringtoneType":I
    if-ne v0, v1, :cond_0

    .line 686
    const/4 v0, 0x1

    .line 688
    :cond_0
    invoke-static {p0, p1, v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;

    move-result-object v1

    return-object v1
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 704
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 705
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 706
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 708
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v1    # "r":Landroid/media/Ringtone;
    :goto_0
    return-object v1

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "ringType"    # I

    .prologue
    .line 1348
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRingtone----uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 1350
    sparse-switch p3, :sswitch_data_0

    .line 1369
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1370
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_1

    .line 1371
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1375
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.cts.media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1376
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in cts test the Uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 1432
    .end local v1    # "r":Landroid/media/Ringtone;
    :cond_2
    :goto_1
    return-object v1

    .line 1352
    :sswitch_0
    const/4 p2, 0x4

    .line 1353
    goto :goto_0

    .line 1355
    :sswitch_1
    const/4 p2, 0x5

    .line 1356
    goto :goto_0

    .line 1360
    :sswitch_2
    const/4 p2, 0x5

    .line 1361
    goto :goto_0

    .line 1379
    .restart local v1    # "r":Landroid/media/Ringtone;
    :cond_3
    if-eqz p1, :cond_2

    .line 1382
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUriLocal(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1385
    .end local v1    # "r":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-static {p0, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 1390
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry change to default ringtone uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :try_start_1
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1393
    .restart local v1    # "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_4

    .line 1394
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1398
    :cond_4
    if-eqz p1, :cond_2

    .line 1402
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUriLocal(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1404
    .end local v1    # "r":Landroid/media/Ringtone;
    :catch_1
    move-exception v0

    .line 1405
    const-string v3, "RingtoneManager"

    const-string v4, "Retry change to default ringtone Failed, maybe media database is being scanned"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :try_start_2
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1420
    .restart local v1    # "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_5

    .line 1421
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1423
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p3}, Landroid/media/RingtoneManager;->getDefaultPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1425
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setUriLocal(Landroid/net/Uri;)V

    .line 1426
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "houjie2----file uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1429
    .end local v1    # "r":Landroid/media/Ringtone;
    .end local v2    # "uriString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1431
    const-string v3, "RingtoneManager"

    const-string/jumbo v4, "set file uri failed *****"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1350
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x20 -> :sswitch_2
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 849
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 850
    const-string/jumbo v0, "ringtone"

    .line 868
    :goto_0
    return-object v0

    .line 851
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 852
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 853
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 854
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 858
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 859
    const-string/jumbo v0, "sms_notifi_sound"

    goto :goto_0

    .line 860
    :cond_3
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_4

    .line 861
    const-string/jumbo v0, "sms_notifi_sound_2"

    goto :goto_0

    .line 862
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 863
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 868
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ringtone_default"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 479
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get uri from cursor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1164
    if-nez p1, :cond_0

    move-object v1, v8

    .line 1193
    :goto_0
    return-object v1

    .line 1168
    :cond_0
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1169
    .local v1, "mUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 1173
    .local v2, "AUDIO_PROJECTION":[Ljava/lang/String;
    const-string v0, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1174
    const/4 v7, 0x0

    .line 1176
    .local v7, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1181
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1183
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v6

    .line 1179
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUriFromPath() Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1187
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    if-eqz v7, :cond_2

    .line 1188
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1189
    const-string v0, "RingtoneManager"

    const-string v3, "cursor count = 0"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 1190
    goto/16 :goto_0

    .line 1192
    :cond_2
    const-string v0, "RingtoneManager"

    const-string/jumbo v3, "uri mCursor == null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 1193
    goto/16 :goto_0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 539
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 540
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 543
    :cond_0
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 547
    if-eqz p1, :cond_1

    .line 548
    const/4 v0, 0x0

    .line 550
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 553
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 879
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 800
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in setActualDefaultRingtoneUri type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 846
    :goto_0
    return-void

    .line 811
    :cond_0
    if-eqz p2, :cond_5

    .line 812
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in setActualDefaultRingtoneUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "ringtonePath":Ljava/lang/String;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in setActualDefaultRingtoneUri ringtonePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-eqz v1, :cond_4

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "profile_type"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "mProfileStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 820
    const-string v3, "RingtoneManager"

    const-string/jumbo v4, "profile null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v0, "general"

    .line 824
    :cond_1
    const-string/jumbo v3, "silence"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "meeting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    :cond_2
    const-string v0, "general"

    .line 828
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 834
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 831
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 837
    .end local v0    # "mProfileStr":Ljava/lang/String;
    :cond_4
    const-string v3, "RingtoneManager"

    const-string/jumbo v4, "ringtonePath == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 840
    .end local v1    # "ringtonePath":Ljava/lang/String;
    :cond_5
    const-string v3, "RingtoneManager"

    const-string/jumbo v4, "use the silent ringtone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "use-the-silent-ringtone"

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1120
    const-string v1, "RingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in setActualRingtoneUriBySubId subid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    if-nez p1, :cond_0

    .line 1123
    const/4 v0, 0x1

    .line 1127
    .local v0, "type":I
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1129
    return-void

    .line 1125
    .end local v0    # "type":I
    :cond_0
    const/16 v0, 0x40

    .restart local v0    # "type":I
    goto :goto_0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 589
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 590
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 592
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 597
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 601
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 606
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_3
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 610
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    .line 614
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_5
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    .line 618
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_6
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 419
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 431
    :goto_0
    return-object v2

    .line 423
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 424
    .local v0, "internalCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 431
    .local v1, "mediaCursor":Landroid/database/Cursor;
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getCursorInternal()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorInternal:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorInternal:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorInternal:Landroid/database/Cursor;

    .line 1247
    :goto_0
    return-object v0

    .line 1245
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mCursorInternal:Landroid/database/Cursor;

    .line 1247
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorInternal:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getCursorMedia()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorMedia:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorMedia:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorMedia:Landroid/database/Cursor;

    .line 1271
    :goto_0
    return-object v0

    .line 1270
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mCursorMedia:Landroid/database/Cursor;

    .line 1271
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursorMedia:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 444
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    iget v3, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 453
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 10
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    .line 496
    if-nez p1, :cond_1

    move v3, v6

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 499
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 501
    .local v2, "cursorCount":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v6

    .line 502
    goto :goto_0

    .line 506
    :cond_2
    const/4 v0, 0x0

    .line 507
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 508
    .local v4, "previousUriString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 509
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 511
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 514
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 519
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 521
    move-object v4, v5

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "uriString":Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 524
    goto :goto_0
.end method

.method public getRingtonePosition(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 8
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    .line 1297
    if-nez p1, :cond_1

    move v2, v5

    .line 1329
    :cond_0
    :goto_0
    return v2

    .line 1298
    :cond_1
    if-nez p2, :cond_2

    move v2, v5

    goto :goto_0

    .line 1300
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1302
    .local v1, "cursorCount":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 1303
    goto :goto_0

    .line 1312
    :cond_3
    const/4 v0, 0x0

    .line 1313
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1314
    .local v3, "previousUriString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1315
    const/4 v6, 0x2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1317
    :cond_4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1320
    :cond_5
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1325
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->move(I)Z

    .line 1327
    move-object v3, v4

    .line 1314
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "uriString":Ljava/lang/String;
    :cond_6
    move v2, v5

    .line 1329
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 465
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingtoneUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1281
    if-nez p2, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-object v0

    .line 1283
    :cond_1
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    invoke-static {p2}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 339
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 327
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 336
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 324
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x20 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    const-string v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 355
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 308
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 314
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 315
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 374
    :cond_0
    return-void
.end method

.method public static isRingtoneFileExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    goto :goto_0

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static setFlymeActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x800

    invoke-static {p0, v0, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/16 v0, 0x1000

    invoke-static {p0, v0, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

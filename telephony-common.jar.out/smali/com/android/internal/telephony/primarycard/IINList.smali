.class public Lcom/android/internal/telephony/primarycard/IINList;
.super Ljava/lang/Object;
.source "IINList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;,
        Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "IIN_LIST"

.field private static instance:Lcom/android/internal/telephony/primarycard/IINList;


# instance fields
.field private final iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue",
            "<",
            "Lcom/android/internal/telephony/primarycard/IINList$IINInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final iinSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    new-instance v1, Lcom/android/internal/telephony/primarycard/IINList$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/primarycard/IINList$1;-><init>(Lcom/android/internal/telephony/primarycard/IINList;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/IINList;->loadIINSpnMap()V

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/IINList;->loadIINConfigs()V

    .line 131
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-class v1, Lcom/android/internal/telephony/primarycard/IINList;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/internal/telephony/primarycard/IINList;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/primarycard/IINList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    .line 138
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadIINConfigs()V
    .locals 6

    .prologue
    .line 214
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v4}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->clear()V

    .line 215
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 216
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x1110008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 218
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "iins"

    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 219
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 221
    new-instance v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;-><init>()V

    .line 222
    .local v1, "iinInfo":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    const/4 v4, 0x0

    const-string v5, "pattern"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    .line 223
    const/4 v4, 0x0

    const-string v5, "app_type"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    .line 224
    const/4 v4, 0x0

    const-string v5, "priority"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    .line 225
    const/4 v4, 0x0

    const-string v5, "network"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    .line 227
    const/4 v4, 0x0

    const-string v5, "mode"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    .end local v1    # "iinInfo":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load iins_conf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iins loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V

    .line 238
    return-void

    .line 235
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private loadIINSpnMap()V
    .locals 6

    .prologue
    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 191
    .local v2, "r":Landroid/content/res/Resources;
    const v4, 0x1110007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 193
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "iins"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 194
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 195
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 196
    const/4 v4, 0x0

    const-string v5, "iin"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "iin":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "spn"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "spn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "iin":Ljava/lang/String;
    .end local v3    # "spn":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 207
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 210
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iinSpnMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V

    .line 211
    return-void

    .line 207
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "IIN_LIST"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method


# virtual methods
.method public getHighestPriority()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    iget v0, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v2

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v3}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    .line 163
    .local v1, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->from(Lcom/android/internal/telephony/primarycard/IINList$IINInfo;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public getIINMode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 184
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    goto :goto_0
.end method

.method public getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 179
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    goto :goto_0
.end method

.method public getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 174
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 151
    :cond_1
    :goto_0
    return-object v0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "spn":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "spn":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "spn":Ljava/lang/String;
    goto :goto_0
.end method
